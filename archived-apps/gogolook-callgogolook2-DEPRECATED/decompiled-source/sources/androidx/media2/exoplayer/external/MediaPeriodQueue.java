package androidx.media2.exoplayer.external;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.trackselection.TrackSelector;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.util.Assertions;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/MediaPeriodQueue.class */
public final class MediaPeriodQueue {
    public static final int MAXIMUM_BUFFER_AHEAD_PERIODS = 100;
    public int length;
    @Nullable
    public MediaPeriodHolder loading;
    public long nextWindowSequenceNumber;
    @Nullable
    public Object oldFrontPeriodUid;
    public long oldFrontPeriodWindowSequenceNumber;
    @Nullable
    public MediaPeriodHolder playing;
    @Nullable
    public MediaPeriodHolder reading;
    public int repeatMode;
    public boolean shuffleModeEnabled;
    public final Timeline.Period period = new Timeline.Period();
    public final Timeline.Window window = new Timeline.Window();
    public Timeline timeline = Timeline.EMPTY;

    private boolean areDurationsCompatible(long j, long j2) {
        return j == C0463C.TIME_UNSET || j == j2;
    }

    private boolean canKeepMediaPeriodHolder(MediaPeriodInfo mediaPeriodInfo, MediaPeriodInfo mediaPeriodInfo2) {
        return mediaPeriodInfo.startPositionUs == mediaPeriodInfo2.startPositionUs && mediaPeriodInfo.f80id.equals(mediaPeriodInfo2.f80id);
    }

    private MediaPeriodInfo getFirstMediaPeriodInfo(PlaybackInfo playbackInfo) {
        return getMediaPeriodInfo(playbackInfo.periodId, playbackInfo.contentPositionUs, playbackInfo.startPositionUs);
    }

    @Nullable
    private MediaPeriodInfo getFollowingMediaPeriodInfo(MediaPeriodHolder mediaPeriodHolder, long j) {
        MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        long rendererOffset = (mediaPeriodHolder.getRendererOffset() + mediaPeriodInfo.durationUs) - j;
        long j2 = 0;
        MediaPeriodInfo mediaPeriodInfo2 = null;
        MediaPeriodInfo mediaPeriodInfo3 = null;
        if (mediaPeriodInfo.isLastInTimelinePeriod) {
            int nextPeriodIndex = this.timeline.getNextPeriodIndex(this.timeline.getIndexOfPeriod(mediaPeriodInfo.f80id.periodUid), this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            if (nextPeriodIndex == -1) {
                return null;
            }
            int i = this.timeline.getPeriod(nextPeriodIndex, this.period, true).windowIndex;
            Object obj = this.period.uid;
            long j3 = mediaPeriodInfo.f80id.windowSequenceNumber;
            if (this.timeline.getWindow(i, this.window).firstPeriodIndex == nextPeriodIndex) {
                Pair<Object, Long> periodPosition = this.timeline.getPeriodPosition(this.window, this.period, i, C0463C.TIME_UNSET, Math.max(0L, rendererOffset));
                if (periodPosition == null) {
                    return null;
                }
                Object obj2 = periodPosition.first;
                j2 = ((Long) periodPosition.second).longValue();
                MediaPeriodHolder next = mediaPeriodHolder.getNext();
                if (next == null || !next.uid.equals(obj2)) {
                    j3 = this.nextWindowSequenceNumber;
                    this.nextWindowSequenceNumber = 1 + j3;
                } else {
                    j3 = next.info.f80id.windowSequenceNumber;
                }
                obj = obj2;
            }
            return getMediaPeriodInfo(resolveMediaPeriodIdForAds(obj, j2, j3), j2, j2);
        }
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.f80id;
        this.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        if (mediaPeriodId.isAd()) {
            int i2 = mediaPeriodId.adGroupIndex;
            int adCountInAdGroup = this.period.getAdCountInAdGroup(i2);
            if (adCountInAdGroup == -1) {
                return null;
            }
            int nextAdIndexToPlay = this.period.getNextAdIndexToPlay(i2, mediaPeriodId.adIndexInAdGroup);
            if (nextAdIndexToPlay < adCountInAdGroup) {
                if (this.period.isAdAvailable(i2, nextAdIndexToPlay)) {
                    mediaPeriodInfo3 = getMediaPeriodInfoForAd(mediaPeriodId.periodUid, i2, nextAdIndexToPlay, mediaPeriodInfo.contentPositionUs, mediaPeriodId.windowSequenceNumber);
                }
                return mediaPeriodInfo3;
            }
            long j4 = mediaPeriodInfo.contentPositionUs;
            if (this.period.getAdGroupCount() == 1 && this.period.getAdGroupTimeUs(0) == 0) {
                Timeline timeline = this.timeline;
                Timeline.Window window = this.window;
                Timeline.Period period = this.period;
                Pair<Object, Long> periodPosition2 = timeline.getPeriodPosition(window, period, period.windowIndex, C0463C.TIME_UNSET, Math.max(0L, rendererOffset));
                if (periodPosition2 == null) {
                    return null;
                }
                j4 = ((Long) periodPosition2.second).longValue();
            }
            return getMediaPeriodInfoForContent(mediaPeriodId.periodUid, j4, mediaPeriodId.windowSequenceNumber);
        }
        int adGroupIndexForPositionUs = this.period.getAdGroupIndexForPositionUs(mediaPeriodInfo.endPositionUs);
        if (adGroupIndexForPositionUs == -1) {
            return getMediaPeriodInfoForContent(mediaPeriodId.periodUid, mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber);
        }
        int firstAdIndexToPlay = this.period.getFirstAdIndexToPlay(adGroupIndexForPositionUs);
        if (this.period.isAdAvailable(adGroupIndexForPositionUs, firstAdIndexToPlay)) {
            mediaPeriodInfo2 = getMediaPeriodInfoForAd(mediaPeriodId.periodUid, adGroupIndexForPositionUs, firstAdIndexToPlay, mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber);
        }
        return mediaPeriodInfo2;
    }

    private MediaPeriodInfo getMediaPeriodInfo(MediaSource.MediaPeriodId mediaPeriodId, long j, long j2) {
        this.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        if (!mediaPeriodId.isAd()) {
            return getMediaPeriodInfoForContent(mediaPeriodId.periodUid, j2, mediaPeriodId.windowSequenceNumber);
        }
        if (!this.period.isAdAvailable(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup)) {
            return null;
        }
        return getMediaPeriodInfoForAd(mediaPeriodId.periodUid, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, j, mediaPeriodId.windowSequenceNumber);
    }

    private MediaPeriodInfo getMediaPeriodInfoForAd(Object obj, int i, int i2, long j, long j2) {
        MediaSource.MediaPeriodId mediaPeriodId = new MediaSource.MediaPeriodId(obj, i, i2, j2);
        return new MediaPeriodInfo(mediaPeriodId, i2 == this.period.getFirstAdIndexToPlay(i) ? this.period.getAdResumePositionUs() : 0L, j, C0463C.TIME_UNSET, this.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup), false, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v4 */
    /* JADX WARN: Type inference failed for: r23v0, types: [long] */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private androidx.media2.exoplayer.external.MediaPeriodInfo getMediaPeriodInfoForContent(java.lang.Object r15, long r16, long r18) {
        /*
            r14 = this;
            r0 = r14
            androidx.media2.exoplayer.external.Timeline$Period r0 = r0.period
            r1 = r16
            int r0 = r0.getAdGroupIndexAfterPositionUs(r1)
            r20 = r0
            androidx.media2.exoplayer.external.source.MediaSource$MediaPeriodId r0 = new androidx.media2.exoplayer.external.source.MediaSource$MediaPeriodId
            r1 = r0
            r2 = r15
            r3 = r18
            r4 = r20
            r1.<init>(r2, r3, r4)
            r15 = r0
            r0 = r14
            r1 = r15
            boolean r0 = r0.isLastInPeriod(r1)
            r21 = r0
            r0 = r14
            r1 = r15
            r2 = r21
            boolean r0 = r0.isLastInTimeline(r1, r2)
            r22 = r0
            r0 = r20
            r1 = -1
            if (r0 == r1) goto L_0x003b
            r0 = r14
            androidx.media2.exoplayer.external.Timeline$Period r0 = r0.period
            r1 = r20
            long r0 = r0.getAdGroupTimeUs(r1)
            r18 = r0
            goto L_0x0040
        L_0x003b:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r18 = r0
        L_0x0040:
            r0 = r18
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005c
            r0 = r18
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0055
            goto L_0x005c
        L_0x0055:
            r0 = r18
            r23 = r0
            goto L_0x0065
        L_0x005c:
            r0 = r14
            androidx.media2.exoplayer.external.Timeline$Period r0 = r0.period
            long r0 = r0.durationUs
            r23 = r0
        L_0x0065:
            androidx.media2.exoplayer.external.MediaPeriodInfo r0 = new androidx.media2.exoplayer.external.MediaPeriodInfo
            r1 = r0
            r2 = r15
            r3 = r16
            r4 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = r18
            r6 = r23
            r7 = r21
            r8 = r22
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.MediaPeriodQueue.getMediaPeriodInfoForContent(java.lang.Object, long, long):androidx.media2.exoplayer.external.MediaPeriodInfo");
    }

    private boolean isLastInPeriod(MediaSource.MediaPeriodId mediaPeriodId) {
        return !mediaPeriodId.isAd() && mediaPeriodId.nextAdGroupIndex == -1;
    }

    private boolean isLastInTimeline(MediaSource.MediaPeriodId mediaPeriodId, boolean z) {
        int indexOfPeriod = this.timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        return !this.timeline.getWindow(this.timeline.getPeriod(indexOfPeriod, this.period).windowIndex, this.window).isDynamic && this.timeline.isLastPeriod(indexOfPeriod, this.period, this.window, this.repeatMode, this.shuffleModeEnabled) && z;
    }

    private MediaSource.MediaPeriodId resolveMediaPeriodIdForAds(Object obj, long j, long j2) {
        this.timeline.getPeriodByUid(obj, this.period);
        int adGroupIndexForPositionUs = this.period.getAdGroupIndexForPositionUs(j);
        return adGroupIndexForPositionUs == -1 ? new MediaSource.MediaPeriodId(obj, j2, this.period.getAdGroupIndexAfterPositionUs(j)) : new MediaSource.MediaPeriodId(obj, adGroupIndexForPositionUs, this.period.getFirstAdIndexToPlay(adGroupIndexForPositionUs), j2);
    }

    private long resolvePeriodIndexToWindowSequenceNumber(Object obj) {
        int indexOfPeriod;
        int i = this.timeline.getPeriodByUid(obj, this.period).windowIndex;
        Object obj2 = this.oldFrontPeriodUid;
        if (!(obj2 == null || (indexOfPeriod = this.timeline.getIndexOfPeriod(obj2)) == -1 || this.timeline.getPeriod(indexOfPeriod, this.period).windowIndex != i)) {
            return this.oldFrontPeriodWindowSequenceNumber;
        }
        for (MediaPeriodHolder frontPeriod = getFrontPeriod(); frontPeriod != null; frontPeriod = frontPeriod.getNext()) {
            if (frontPeriod.uid.equals(obj)) {
                return frontPeriod.info.f80id.windowSequenceNumber;
            }
        }
        for (MediaPeriodHolder frontPeriod2 = getFrontPeriod(); frontPeriod2 != null; frontPeriod2 = frontPeriod2.getNext()) {
            int indexOfPeriod2 = this.timeline.getIndexOfPeriod(frontPeriod2.uid);
            if (indexOfPeriod2 != -1 && this.timeline.getPeriod(indexOfPeriod2, this.period).windowIndex == i) {
                return frontPeriod2.info.f80id.windowSequenceNumber;
            }
        }
        long j = this.nextWindowSequenceNumber;
        this.nextWindowSequenceNumber = 1 + j;
        return j;
    }

    private boolean updateForPlaybackModeChange() {
        MediaPeriodHolder frontPeriod = getFrontPeriod();
        if (frontPeriod == null) {
            return true;
        }
        int indexOfPeriod = this.timeline.getIndexOfPeriod(frontPeriod.uid);
        while (true) {
            indexOfPeriod = this.timeline.getNextPeriodIndex(indexOfPeriod, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            while (frontPeriod.getNext() != null && !frontPeriod.info.isLastInTimelinePeriod) {
                frontPeriod = frontPeriod.getNext();
            }
            MediaPeriodHolder next = frontPeriod.getNext();
            if (indexOfPeriod == -1 || next == null || this.timeline.getIndexOfPeriod(next.uid) != indexOfPeriod) {
                break;
            }
            frontPeriod = next;
        }
        boolean removeAfter = removeAfter(frontPeriod);
        frontPeriod.info = getUpdatedMediaPeriodInfo(frontPeriod.info);
        boolean z = true;
        if (removeAfter) {
            z = !hasPlayingPeriod();
        }
        return z;
    }

    public MediaPeriodHolder advancePlayingPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.playing;
        if (mediaPeriodHolder != null) {
            if (mediaPeriodHolder == this.reading) {
                this.reading = mediaPeriodHolder.getNext();
            }
            this.playing.release();
            this.length--;
            if (this.length == 0) {
                this.loading = null;
                MediaPeriodHolder mediaPeriodHolder2 = this.playing;
                this.oldFrontPeriodUid = mediaPeriodHolder2.uid;
                this.oldFrontPeriodWindowSequenceNumber = mediaPeriodHolder2.info.f80id.windowSequenceNumber;
            }
            this.playing = this.playing.getNext();
        } else {
            MediaPeriodHolder mediaPeriodHolder3 = this.loading;
            this.playing = mediaPeriodHolder3;
            this.reading = mediaPeriodHolder3;
        }
        return this.playing;
    }

    public MediaPeriodHolder advanceReadingPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.reading;
        Assertions.checkState((mediaPeriodHolder == null || mediaPeriodHolder.getNext() == null) ? false : true);
        this.reading = this.reading.getNext();
        return this.reading;
    }

    public void clear(boolean z) {
        MediaPeriodHolder frontPeriod = getFrontPeriod();
        if (frontPeriod != null) {
            this.oldFrontPeriodUid = z ? frontPeriod.uid : null;
            this.oldFrontPeriodWindowSequenceNumber = frontPeriod.info.f80id.windowSequenceNumber;
            frontPeriod.release();
            removeAfter(frontPeriod);
        } else if (!z) {
            this.oldFrontPeriodUid = null;
        }
        this.playing = null;
        this.loading = null;
        this.reading = null;
        this.length = 0;
    }

    public MediaPeriod enqueueNextMediaPeriod(RendererCapabilities[] rendererCapabilitiesArr, TrackSelector trackSelector, Allocator allocator, MediaSource mediaSource, MediaPeriodInfo mediaPeriodInfo) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        MediaPeriodHolder mediaPeriodHolder2 = new MediaPeriodHolder(rendererCapabilitiesArr, mediaPeriodHolder == null ? mediaPeriodInfo.startPositionUs : mediaPeriodHolder.getRendererOffset() + this.loading.info.durationUs, trackSelector, allocator, mediaSource, mediaPeriodInfo);
        if (this.loading != null) {
            Assertions.checkState(hasPlayingPeriod());
            this.loading.setNext(mediaPeriodHolder2);
        }
        this.oldFrontPeriodUid = null;
        this.loading = mediaPeriodHolder2;
        this.length++;
        return mediaPeriodHolder2.mediaPeriod;
    }

    public MediaPeriodHolder getFrontPeriod() {
        return hasPlayingPeriod() ? this.playing : this.loading;
    }

    public MediaPeriodHolder getLoadingPeriod() {
        return this.loading;
    }

    @Nullable
    public MediaPeriodInfo getNextMediaPeriodInfo(long j, PlaybackInfo playbackInfo) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder == null ? getFirstMediaPeriodInfo(playbackInfo) : getFollowingMediaPeriodInfo(mediaPeriodHolder, j);
    }

    public MediaPeriodHolder getPlayingPeriod() {
        return this.playing;
    }

    public MediaPeriodHolder getReadingPeriod() {
        return this.reading;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x005a, code lost:
        if (r0 == Long.MIN_VALUE) goto L_0x005d;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r19v0, types: [long] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r19v4 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media2.exoplayer.external.MediaPeriodInfo getUpdatedMediaPeriodInfo(androidx.media2.exoplayer.external.MediaPeriodInfo r15) {
        /*
            r14 = this;
            r0 = r15
            androidx.media2.exoplayer.external.source.MediaSource$MediaPeriodId r0 = r0.f80id
            r16 = r0
            r0 = r14
            r1 = r16
            boolean r0 = r0.isLastInPeriod(r1)
            r17 = r0
            r0 = r14
            r1 = r16
            r2 = r17
            boolean r0 = r0.isLastInTimeline(r1, r2)
            r18 = r0
            r0 = r14
            androidx.media2.exoplayer.external.Timeline r0 = r0.timeline
            r1 = r15
            androidx.media2.exoplayer.external.source.MediaSource$MediaPeriodId r1 = r1.f80id
            java.lang.Object r1 = r1.periodUid
            r2 = r14
            androidx.media2.exoplayer.external.Timeline$Period r2 = r2.period
            androidx.media2.exoplayer.external.Timeline$Period r0 = r0.getPeriodByUid(r1, r2)
            r0 = r16
            boolean r0 = r0.isAd()
            if (r0 == 0) goto L_0x0041
            r0 = r14
            androidx.media2.exoplayer.external.Timeline$Period r0 = r0.period
            r1 = r16
            int r1 = r1.adGroupIndex
            r2 = r16
            int r2 = r2.adIndexInAdGroup
            long r0 = r0.getAdDurationUs(r1, r2)
            r19 = r0
        L_0x003e:
            goto L_0x0069
        L_0x0041:
            r0 = r15
            long r0 = r0.endPositionUs
            r21 = r0
            r0 = r21
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005d
            r0 = r21
            r19 = r0
            r0 = r21
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003e
        L_0x005d:
            r0 = r14
            androidx.media2.exoplayer.external.Timeline$Period r0 = r0.period
            long r0 = r0.getDurationUs()
            r19 = r0
            goto L_0x003e
        L_0x0069:
            androidx.media2.exoplayer.external.MediaPeriodInfo r0 = new androidx.media2.exoplayer.external.MediaPeriodInfo
            r1 = r0
            r2 = r16
            r3 = r15
            long r3 = r3.startPositionUs
            r4 = r15
            long r4 = r4.contentPositionUs
            r5 = r15
            long r5 = r5.endPositionUs
            r6 = r19
            r7 = r17
            r8 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.MediaPeriodQueue.getUpdatedMediaPeriodInfo(androidx.media2.exoplayer.external.MediaPeriodInfo):androidx.media2.exoplayer.external.MediaPeriodInfo");
    }

    public boolean hasPlayingPeriod() {
        return this.playing != null;
    }

    public boolean isLoading(MediaPeriod mediaPeriod) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder != null && mediaPeriodHolder.mediaPeriod == mediaPeriod;
    }

    public void reevaluateBuffer(long j) {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder != null) {
            mediaPeriodHolder.reevaluateBuffer(j);
        }
    }

    public boolean removeAfter(MediaPeriodHolder mediaPeriodHolder) {
        boolean z = false;
        Assertions.checkState(mediaPeriodHolder != null);
        this.loading = mediaPeriodHolder;
        while (mediaPeriodHolder.getNext() != null) {
            mediaPeriodHolder = mediaPeriodHolder.getNext();
            if (mediaPeriodHolder == this.reading) {
                this.reading = this.playing;
                z = true;
            }
            mediaPeriodHolder.release();
            this.length--;
        }
        this.loading.setNext(null);
        return z;
    }

    public MediaSource.MediaPeriodId resolveMediaPeriodIdForAds(Object obj, long j) {
        return resolveMediaPeriodIdForAds(obj, j, resolvePeriodIndexToWindowSequenceNumber(obj));
    }

    public void setTimeline(Timeline timeline) {
        this.timeline = timeline;
    }

    public boolean shouldLoadNextMediaPeriod() {
        MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder == null || (!mediaPeriodHolder.info.isFinal && mediaPeriodHolder.isFullyBuffered() && this.loading.info.durationUs != C0463C.TIME_UNSET && this.length < 100);
    }

    public boolean updateQueuedPeriods(long j, long j2) {
        MediaPeriodInfo mediaPeriodInfo;
        MediaPeriodHolder frontPeriod = getFrontPeriod();
        frontPeriod = null;
        while (true) {
            boolean z = true;
            if (frontPeriod == null) {
                return true;
            }
            MediaPeriodInfo mediaPeriodInfo2 = frontPeriod.info;
            if (frontPeriod == null) {
                mediaPeriodInfo = getUpdatedMediaPeriodInfo(mediaPeriodInfo2);
            } else {
                mediaPeriodInfo = getFollowingMediaPeriodInfo(frontPeriod, j);
                if (mediaPeriodInfo == null) {
                    return !removeAfter(frontPeriod);
                }
                if (!canKeepMediaPeriodHolder(mediaPeriodInfo2, mediaPeriodInfo)) {
                    return !removeAfter(frontPeriod);
                }
            }
            frontPeriod.info = mediaPeriodInfo.copyWithContentPositionUs(mediaPeriodInfo2.contentPositionUs);
            if (!areDurationsCompatible(mediaPeriodInfo2.durationUs, mediaPeriodInfo.durationUs)) {
                long j3 = mediaPeriodInfo.durationUs;
                boolean z2 = frontPeriod == this.reading && (j2 == Long.MIN_VALUE || j2 >= ((j3 > C0463C.TIME_UNSET ? 1 : (j3 == C0463C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : frontPeriod.toRendererTime(j3)));
                if (removeAfter(frontPeriod) || z2) {
                    z = false;
                }
                return z;
            }
            frontPeriod = frontPeriod.getNext();
        }
    }

    public boolean updateRepeatMode(int i) {
        this.repeatMode = i;
        return updateForPlaybackModeChange();
    }

    public boolean updateShuffleModeEnabled(boolean z) {
        this.shuffleModeEnabled = z;
        return updateForPlaybackModeChange();
    }
}
