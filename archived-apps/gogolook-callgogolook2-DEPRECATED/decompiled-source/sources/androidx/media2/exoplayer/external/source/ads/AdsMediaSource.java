package androidx.media2.exoplayer.external.source.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Timeline;
import androidx.media2.exoplayer.external.source.CompositeMediaSource;
import androidx.media2.exoplayer.external.source.DeferredMediaPeriod;
import androidx.media2.exoplayer.external.source.MediaPeriod;
import androidx.media2.exoplayer.external.source.MediaSource;
import androidx.media2.exoplayer.external.source.MediaSourceFactory;
import androidx.media2.exoplayer.external.source.ProgressiveMediaSource;
import androidx.media2.exoplayer.external.source.ads.AdsLoader;
import androidx.media2.exoplayer.external.source.ads.AdsMediaSource;
import androidx.media2.exoplayer.external.upstream.Allocator;
import androidx.media2.exoplayer.external.upstream.DataSource;
import androidx.media2.exoplayer.external.upstream.DataSpec;
import androidx.media2.exoplayer.external.upstream.TransferListener;
import androidx.media2.exoplayer.external.util.Assertions;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource.class */
public final class AdsMediaSource extends CompositeMediaSource<MediaSource.MediaPeriodId> {
    public static final MediaSource.MediaPeriodId DUMMY_CONTENT_MEDIA_PERIOD_ID = new MediaSource.MediaPeriodId(new Object());
    public MediaSource[][] adGroupMediaSources;
    public Timeline[][] adGroupTimelines;
    public final MediaSourceFactory adMediaSourceFactory;
    @Nullable
    public AdPlaybackState adPlaybackState;
    public final AdsLoader.AdViewProvider adViewProvider;
    public final AdsLoader adsLoader;
    @Nullable
    public ComponentListener componentListener;
    @Nullable
    public Object contentManifest;
    public final MediaSource contentMediaSource;
    @Nullable
    public Timeline contentTimeline;
    public final Map<MediaSource, List<DeferredMediaPeriod>> deferredMediaPeriodByAdMediaSource;
    public final Handler mainHandler;
    public final Timeline.Period period;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException.class */
    public static final class AdLoadException extends IOException {
        public static final int TYPE_AD = 0;
        public static final int TYPE_AD_GROUP = 1;
        public static final int TYPE_ALL_ADS = 2;
        public static final int TYPE_UNEXPECTED = 3;
        public final int type;

        @Documented
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdLoadException$Type.class */
        public @interface Type {
        }

        public AdLoadException(int i, Exception exc) {
            super(exc);
            this.type = i;
        }

        public static AdLoadException createForAd(Exception exc) {
            return new AdLoadException(0, exc);
        }

        public static AdLoadException createForAdGroup(Exception exc, int i) {
            StringBuilder sb = new StringBuilder(35);
            sb.append("Failed to load ad group ");
            sb.append(i);
            return new AdLoadException(1, new IOException(sb.toString(), exc));
        }

        public static AdLoadException createForAllAds(Exception exc) {
            return new AdLoadException(2, exc);
        }

        public static AdLoadException createForUnexpected(RuntimeException runtimeException) {
            return new AdLoadException(3, runtimeException);
        }

        public RuntimeException getRuntimeExceptionForUnexpected() {
            Assertions.checkState(this.type == 3);
            return (RuntimeException) Assertions.checkNotNull(getCause());
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$AdPrepareErrorListener.class */
    public final class AdPrepareErrorListener implements DeferredMediaPeriod.PrepareErrorListener {
        public final int adGroupIndex;
        public final int adIndexInAdGroup;
        public final Uri adUri;

        public AdPrepareErrorListener(Uri uri, int i, int i2) {
            this.adUri = uri;
            this.adGroupIndex = i;
            this.adIndexInAdGroup = i2;
        }

        public final /* synthetic */ void lambda$onPrepareError$0$AdsMediaSource$AdPrepareErrorListener(IOException iOException) {
            AdsMediaSource.this.adsLoader.handlePrepareError(this.adGroupIndex, this.adIndexInAdGroup, iOException);
        }

        @Override // androidx.media2.exoplayer.external.source.DeferredMediaPeriod.PrepareErrorListener
        public void onPrepareError(MediaSource.MediaPeriodId mediaPeriodId, final IOException iOException) {
            AdsMediaSource.this.createEventDispatcher(mediaPeriodId).loadError(new DataSpec(this.adUri), this.adUri, Collections.emptyMap(), 6, -1L, 0L, 0L, AdLoadException.createForAd(iOException), true);
            AdsMediaSource.this.mainHandler.post(new Runnable(this, iOException) { // from class: androidx.media2.exoplayer.external.source.ads.AdsMediaSource$AdPrepareErrorListener$$Lambda$0
                public final AdsMediaSource.AdPrepareErrorListener arg$1;
                public final IOException arg$2;

                {
                    this.arg$1 = this;
                    this.arg$2 = iOException;
                }

                @Override // java.lang.Runnable
                public void run() {
                    this.arg$1.lambda$onPrepareError$0$AdsMediaSource$AdPrepareErrorListener(this.arg$2);
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/ads/AdsMediaSource$ComponentListener.class */
    public final class ComponentListener implements AdsLoader.EventListener {
        public final Handler playerHandler = new Handler();
        public volatile boolean released;

        public ComponentListener() {
        }

        public final /* synthetic */ void lambda$onAdPlaybackState$0$AdsMediaSource$ComponentListener(AdPlaybackState adPlaybackState) {
            if (!this.released) {
                AdsMediaSource.this.onAdPlaybackState(adPlaybackState);
            }
        }

        @Override // androidx.media2.exoplayer.external.source.ads.AdsLoader.EventListener
        public void onAdClicked() {
            AdsLoader$EventListener$$CC.onAdClicked$$dflt$$(this);
        }

        @Override // androidx.media2.exoplayer.external.source.ads.AdsLoader.EventListener
        public void onAdLoadError(AdLoadException adLoadException, DataSpec dataSpec) {
            if (!this.released) {
                AdsMediaSource.this.createEventDispatcher(null).loadError(dataSpec, dataSpec.uri, Collections.emptyMap(), 6, -1L, 0L, 0L, adLoadException, true);
            }
        }

        @Override // androidx.media2.exoplayer.external.source.ads.AdsLoader.EventListener
        public void onAdPlaybackState(final AdPlaybackState adPlaybackState) {
            if (!this.released) {
                this.playerHandler.post(new Runnable(this, adPlaybackState) { // from class: androidx.media2.exoplayer.external.source.ads.AdsMediaSource$ComponentListener$$Lambda$0
                    public final AdsMediaSource.ComponentListener arg$1;
                    public final AdPlaybackState arg$2;

                    {
                        this.arg$1 = this;
                        this.arg$2 = adPlaybackState;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.arg$1.lambda$onAdPlaybackState$0$AdsMediaSource$ComponentListener(this.arg$2);
                    }
                });
            }
        }

        @Override // androidx.media2.exoplayer.external.source.ads.AdsLoader.EventListener
        public void onAdTapped() {
            AdsLoader$EventListener$$CC.onAdTapped$$dflt$$(this);
        }

        public void release() {
            this.released = true;
            this.playerHandler.removeCallbacksAndMessages(null);
        }
    }

    /* JADX WARN: Type inference failed for: r1v10, types: [androidx.media2.exoplayer.external.Timeline[], androidx.media2.exoplayer.external.Timeline[][]] */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.media2.exoplayer.external.source.MediaSource[], androidx.media2.exoplayer.external.source.MediaSource[][]] */
    public AdsMediaSource(MediaSource mediaSource, MediaSourceFactory mediaSourceFactory, AdsLoader adsLoader, AdsLoader.AdViewProvider adViewProvider) {
        this.contentMediaSource = mediaSource;
        this.adMediaSourceFactory = mediaSourceFactory;
        this.adsLoader = adsLoader;
        this.adViewProvider = adViewProvider;
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.deferredMediaPeriodByAdMediaSource = new HashMap();
        this.period = new Timeline.Period();
        this.adGroupMediaSources = new MediaSource[0];
        this.adGroupTimelines = new Timeline[0];
        adsLoader.setSupportedContentTypes(mediaSourceFactory.getSupportedTypes());
    }

    public AdsMediaSource(MediaSource mediaSource, DataSource.Factory factory, AdsLoader adsLoader, AdsLoader.AdViewProvider adViewProvider) {
        this(mediaSource, new ProgressiveMediaSource.Factory(factory), adsLoader, adViewProvider);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long[], long[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long[][] getAdDurations(androidx.media2.exoplayer.external.Timeline[][] r5, androidx.media2.exoplayer.external.Timeline.Period r6) {
        /*
            r0 = r5
            int r0 = r0.length
            long[] r0 = new long[r0]
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0008:
            r0 = r8
            r1 = r5
            int r1 = r1.length
            if (r0 >= r1) goto L_0x005c
            r0 = r7
            r1 = r8
            r2 = r5
            r3 = r8
            r2 = r2[r3]
            int r2 = r2.length
            long[] r2 = new long[r2]
            r0[r1] = r2
            r0 = 0
            r9 = r0
        L_0x001a:
            r0 = r9
            r1 = r5
            r2 = r8
            r1 = r1[r2]
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0056
            r0 = r7
            r1 = r8
            r0 = r0[r1]
            r10 = r0
            r0 = r5
            r1 = r8
            r0 = r0[r1]
            r1 = r9
            r0 = r0[r1]
            if (r0 != 0) goto L_0x0039
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r11 = r0
            goto L_0x0049
        L_0x0039:
            r0 = r5
            r1 = r8
            r0 = r0[r1]
            r1 = r9
            r0 = r0[r1]
            r1 = 0
            r2 = r6
            androidx.media2.exoplayer.external.Timeline$Period r0 = r0.getPeriod(r1, r2)
            long r0 = r0.getDurationUs()
            r11 = r0
        L_0x0049:
            r0 = r10
            r1 = r9
            r2 = r11
            r0[r1] = r2
            int r9 = r9 + 1
            goto L_0x001a
        L_0x0056:
            int r8 = r8 + 1
            goto L_0x0008
        L_0x005c:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.source.ads.AdsMediaSource.getAdDurations(androidx.media2.exoplayer.external.Timeline[][], androidx.media2.exoplayer.external.Timeline$Period):long[][]");
    }

    private void maybeUpdateSourceInfo() {
        Timeline timeline = this.contentTimeline;
        AdPlaybackState adPlaybackState = this.adPlaybackState;
        if (adPlaybackState != null && timeline != null) {
            this.adPlaybackState = adPlaybackState.withAdDurationsUs(getAdDurations(this.adGroupTimelines, this.period));
            AdPlaybackState adPlaybackState2 = this.adPlaybackState;
            if (adPlaybackState2.adGroupCount != 0) {
                timeline = new SinglePeriodAdTimeline(timeline, adPlaybackState2);
            }
            refreshSourceInfo(timeline, this.contentManifest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.media2.exoplayer.external.source.MediaSource[], androidx.media2.exoplayer.external.source.MediaSource[][]] */
    /* JADX WARN: Type inference failed for: r1v8, types: [androidx.media2.exoplayer.external.Timeline[], androidx.media2.exoplayer.external.Timeline[][]] */
    public void onAdPlaybackState(AdPlaybackState adPlaybackState) {
        if (this.adPlaybackState == null) {
            this.adGroupMediaSources = new MediaSource[adPlaybackState.adGroupCount];
            Arrays.fill(this.adGroupMediaSources, new MediaSource[0]);
            this.adGroupTimelines = new Timeline[adPlaybackState.adGroupCount];
            Arrays.fill(this.adGroupTimelines, new Timeline[0]);
        }
        this.adPlaybackState = adPlaybackState;
        maybeUpdateSourceInfo();
    }

    private void onAdSourceInfoRefreshed(MediaSource mediaSource, int i, int i2, Timeline timeline) {
        boolean z = true;
        if (timeline.getPeriodCount() != 1) {
            z = false;
        }
        Assertions.checkArgument(z);
        this.adGroupTimelines[i][i2] = timeline;
        List<DeferredMediaPeriod> remove = this.deferredMediaPeriodByAdMediaSource.remove(mediaSource);
        if (remove != null) {
            Object uidOfPeriod = timeline.getUidOfPeriod(0);
            for (int i3 = 0; i3 < remove.size(); i3++) {
                DeferredMediaPeriod deferredMediaPeriod = remove.get(i3);
                deferredMediaPeriod.createPeriod(new MediaSource.MediaPeriodId(uidOfPeriod, deferredMediaPeriod.f97id.windowSequenceNumber));
            }
        }
        maybeUpdateSourceInfo();
    }

    private void onContentSourceInfoRefreshed(Timeline timeline, @Nullable Object obj) {
        boolean z = true;
        if (timeline.getPeriodCount() != 1) {
            z = false;
        }
        Assertions.checkArgument(z);
        this.contentTimeline = timeline;
        this.contentManifest = obj;
        maybeUpdateSourceInfo();
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackState);
        if (adPlaybackState.adGroupCount <= 0 || !mediaPeriodId.isAd()) {
            DeferredMediaPeriod deferredMediaPeriod = new DeferredMediaPeriod(this.contentMediaSource, mediaPeriodId, allocator, j);
            deferredMediaPeriod.createPeriod(mediaPeriodId);
            return deferredMediaPeriod;
        }
        int i = mediaPeriodId.adGroupIndex;
        int i2 = mediaPeriodId.adIndexInAdGroup;
        Uri uri = (Uri) Assertions.checkNotNull(adPlaybackState.adGroups[i].uris[i2]);
        MediaSource[][] mediaSourceArr = this.adGroupMediaSources;
        if (mediaSourceArr[i].length <= i2) {
            int i3 = i2 + 1;
            mediaSourceArr[i] = (MediaSource[]) Arrays.copyOf(mediaSourceArr[i], i3);
            Timeline[][] timelineArr = this.adGroupTimelines;
            timelineArr[i] = (Timeline[]) Arrays.copyOf(timelineArr[i], i3);
        }
        MediaSource mediaSource = this.adGroupMediaSources[i][i2];
        MediaSource mediaSource2 = mediaSource;
        if (mediaSource == null) {
            mediaSource2 = this.adMediaSourceFactory.createMediaSource(uri);
            this.adGroupMediaSources[i][i2] = mediaSource2;
            this.deferredMediaPeriodByAdMediaSource.put(mediaSource2, new ArrayList());
            prepareChildSource(mediaPeriodId, mediaSource2);
        }
        DeferredMediaPeriod deferredMediaPeriod2 = new DeferredMediaPeriod(mediaSource2, mediaPeriodId, allocator, j);
        deferredMediaPeriod2.setPrepareErrorListener(new AdPrepareErrorListener(uri, i, i2));
        List<DeferredMediaPeriod> list = this.deferredMediaPeriodByAdMediaSource.get(mediaSource2);
        if (list == null) {
            deferredMediaPeriod2.createPeriod(new MediaSource.MediaPeriodId(((Timeline) Assertions.checkNotNull(this.adGroupTimelines[i][i2])).getUidOfPeriod(0), mediaPeriodId.windowSequenceNumber));
        } else {
            list.add(deferredMediaPeriod2);
        }
        return deferredMediaPeriod2;
    }

    @Nullable
    public MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId, MediaSource.MediaPeriodId mediaPeriodId2) {
        if (!mediaPeriodId.isAd()) {
            mediaPeriodId = mediaPeriodId2;
        }
        return mediaPeriodId;
    }

    @Override // androidx.media2.exoplayer.external.source.BaseMediaSource, androidx.media2.exoplayer.external.source.MediaSource
    @Nullable
    public Object getTag() {
        return this.contentMediaSource.getTag();
    }

    public final /* synthetic */ void lambda$prepareSourceInternal$0$AdsMediaSource(ComponentListener componentListener) {
        this.adsLoader.start(componentListener, this.adViewProvider);
    }

    public void onChildSourceInfoRefreshed(MediaSource.MediaPeriodId mediaPeriodId, MediaSource mediaSource, Timeline timeline, @Nullable Object obj) {
        if (mediaPeriodId.isAd()) {
            onAdSourceInfoRefreshed(mediaSource, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, timeline);
        } else {
            onContentSourceInfoRefreshed(timeline, obj);
        }
    }

    @Override // androidx.media2.exoplayer.external.source.CompositeMediaSource, androidx.media2.exoplayer.external.source.BaseMediaSource
    public void prepareSourceInternal(@Nullable TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        final ComponentListener componentListener = new ComponentListener();
        this.componentListener = componentListener;
        prepareChildSource(DUMMY_CONTENT_MEDIA_PERIOD_ID, this.contentMediaSource);
        this.mainHandler.post(new Runnable(this, componentListener) { // from class: androidx.media2.exoplayer.external.source.ads.AdsMediaSource$$Lambda$0
            public final AdsMediaSource arg$1;
            public final AdsMediaSource.ComponentListener arg$2;

            {
                this.arg$1 = this;
                this.arg$2 = componentListener;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.arg$1.lambda$prepareSourceInternal$0$AdsMediaSource(this.arg$2);
            }
        });
    }

    @Override // androidx.media2.exoplayer.external.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        DeferredMediaPeriod deferredMediaPeriod = (DeferredMediaPeriod) mediaPeriod;
        List<DeferredMediaPeriod> list = this.deferredMediaPeriodByAdMediaSource.get(deferredMediaPeriod.mediaSource);
        if (list != null) {
            list.remove(deferredMediaPeriod);
        }
        deferredMediaPeriod.releasePeriod();
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.media2.exoplayer.external.source.MediaSource[], androidx.media2.exoplayer.external.source.MediaSource[][]] */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.media2.exoplayer.external.Timeline[], androidx.media2.exoplayer.external.Timeline[][]] */
    @Override // androidx.media2.exoplayer.external.source.CompositeMediaSource, androidx.media2.exoplayer.external.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        ((ComponentListener) Assertions.checkNotNull(this.componentListener)).release();
        this.componentListener = null;
        this.deferredMediaPeriodByAdMediaSource.clear();
        this.contentTimeline = null;
        this.contentManifest = null;
        this.adPlaybackState = null;
        this.adGroupMediaSources = new MediaSource[0];
        this.adGroupTimelines = new Timeline[0];
        Handler handler = this.mainHandler;
        AdsLoader adsLoader = this.adsLoader;
        adsLoader.getClass();
        handler.post(AdsMediaSource$$Lambda$1.get$Lambda(adsLoader));
    }
}
