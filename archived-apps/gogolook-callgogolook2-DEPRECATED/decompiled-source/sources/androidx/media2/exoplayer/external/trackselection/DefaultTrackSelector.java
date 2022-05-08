package androidx.media2.exoplayer.external.trackselection;

import android.content.Context;
import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.RendererConfiguration;
import androidx.media2.exoplayer.external.source.TrackGroup;
import androidx.media2.exoplayer.external.source.TrackGroupArray;
import androidx.media2.exoplayer.external.trackselection.AdaptiveTrackSelection;
import androidx.media2.exoplayer.external.trackselection.MappingTrackSelector;
import androidx.media2.exoplayer.external.trackselection.TrackSelection;
import androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters;
import androidx.media2.exoplayer.external.upstream.BandwidthMeter;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector.class */
public class DefaultTrackSelector extends MappingTrackSelector {
    public static final float FRACTION_TO_CONSIDER_FULLSCREEN = 0.98f;
    public static final int[] NO_TRACKS = new int[0];
    public static final int WITHIN_RENDERER_CAPABILITIES_BONUS = 1000;
    public boolean allowMultipleAdaptiveSelections;
    public final AtomicReference<Parameters> parametersReference;
    public final TrackSelection.Factory trackSelectionFactory;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioConfigurationTuple.class */
    public static final class AudioConfigurationTuple {
        public final int channelCount;
        @Nullable
        public final String mimeType;
        public final int sampleRate;

        public AudioConfigurationTuple(int i, int i2, @Nullable String str) {
            this.channelCount = i;
            this.sampleRate = i2;
            this.mimeType = str;
        }

        public boolean equals(@Nullable Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || AudioConfigurationTuple.class != obj.getClass()) {
                return false;
            }
            AudioConfigurationTuple audioConfigurationTuple = (AudioConfigurationTuple) obj;
            if (!(this.channelCount == audioConfigurationTuple.channelCount && this.sampleRate == audioConfigurationTuple.sampleRate && TextUtils.equals(this.mimeType, audioConfigurationTuple.mimeType))) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            int i = this.channelCount;
            int i2 = this.sampleRate;
            String str = this.mimeType;
            return (((i * 31) + i2) * 31) + (str != null ? str.hashCode() : 0);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$AudioTrackScore.class */
    public static final class AudioTrackScore implements Comparable<AudioTrackScore> {
        public final int bitrate;
        public final int channelCount;
        public final boolean isDefaultSelectionFlag;
        public final boolean isWithinConstraints;
        public final boolean isWithinRendererCapabilities;
        public final int localeLanguageMatchIndex;
        public final int localeLanguageScore;
        public final Parameters parameters;
        public final int preferredLanguageScore;
        public final int sampleRate;

        /* JADX WARN: Removed duplicated region for block: B:19:0x00a3  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00bd A[EDGE_INSN: B:25:0x00bd->B:23:0x00bd ?: BREAK  , SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public AudioTrackScore(androidx.media2.exoplayer.external.Format r5, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r6, int r7) {
            /*
                Method dump skipped, instructions count: 202
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.AudioTrackScore.<init>(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters, int):void");
        }

        public int compareTo(@NonNull AudioTrackScore audioTrackScore) {
            int compareInts;
            int compareFormatValues;
            boolean z = this.isWithinRendererCapabilities;
            int i = 1;
            int i2 = 1;
            int i3 = 1;
            int i4 = 1;
            int i5 = 1;
            if (z != audioTrackScore.isWithinRendererCapabilities) {
                if (!z) {
                    i5 = -1;
                }
                return i5;
            }
            int i6 = this.preferredLanguageScore;
            int i7 = audioTrackScore.preferredLanguageScore;
            if (i6 != i7) {
                return DefaultTrackSelector.compareInts(i6, i7);
            }
            boolean z2 = this.isWithinConstraints;
            if (z2 != audioTrackScore.isWithinConstraints) {
                if (!z2) {
                    i = -1;
                }
                return i;
            } else if (!this.parameters.forceLowestBitrate || (compareFormatValues = DefaultTrackSelector.compareFormatValues(this.bitrate, audioTrackScore.bitrate)) == 0) {
                boolean z3 = this.isDefaultSelectionFlag;
                if (z3 != audioTrackScore.isDefaultSelectionFlag) {
                    if (!z3) {
                        i3 = -1;
                    }
                    return i3;
                }
                int i8 = this.localeLanguageMatchIndex;
                int i9 = audioTrackScore.localeLanguageMatchIndex;
                if (i8 != i9) {
                    return -DefaultTrackSelector.compareInts(i8, i9);
                }
                int i10 = this.localeLanguageScore;
                int i11 = audioTrackScore.localeLanguageScore;
                if (i10 != i11) {
                    return DefaultTrackSelector.compareInts(i10, i11);
                }
                if (!this.isWithinConstraints || !this.isWithinRendererCapabilities) {
                    i4 = -1;
                }
                int i12 = this.channelCount;
                int i13 = audioTrackScore.channelCount;
                if (i12 != i13) {
                    compareInts = DefaultTrackSelector.compareInts(i12, i13);
                } else {
                    int i14 = this.sampleRate;
                    int i15 = audioTrackScore.sampleRate;
                    compareInts = i14 != i15 ? DefaultTrackSelector.compareInts(i14, i15) : DefaultTrackSelector.compareInts(this.bitrate, audioTrackScore.bitrate);
                }
                return i4 * compareInts;
            } else {
                if (compareFormatValues > 0) {
                    i2 = -1;
                }
                return i2;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters.class */
    public static final class Parameters extends TrackSelectionParameters {
        public final boolean allowAudioMixedMimeTypeAdaptiveness;
        public final boolean allowAudioMixedSampleRateAdaptiveness;
        @Deprecated
        public final boolean allowMixedMimeAdaptiveness;
        @Deprecated
        public final boolean allowNonSeamlessAdaptiveness;
        public final boolean allowVideoMixedMimeTypeAdaptiveness;
        public final boolean allowVideoNonSeamlessAdaptiveness;
        public final boolean exceedAudioConstraintsIfNecessary;
        public final boolean exceedRendererCapabilitiesIfNecessary;
        public final boolean exceedVideoConstraintsIfNecessary;
        public final boolean forceHighestSupportedBitrate;
        public final boolean forceLowestBitrate;
        public final int maxAudioBitrate;
        public final int maxAudioChannelCount;
        public final int maxVideoBitrate;
        public final int maxVideoFrameRate;
        public final int maxVideoHeight;
        public final int maxVideoWidth;
        public final SparseBooleanArray rendererDisabledFlags;
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        public final int tunnelingAudioSessionId;
        public final int viewportHeight;
        public final boolean viewportOrientationMayChange;
        public final int viewportWidth;
        public static final Parameters DEFAULT = new Parameters();
        public static final Parcelable.Creator<Parameters> CREATOR = new Parcelable.Creator<Parameters>() { // from class: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Parameters createFromParcel(Parcel parcel) {
                return new Parameters(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Parameters[] newArray(int i) {
                return new Parameters[i];
            }
        };

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Parameters() {
            /*
                r28 = this;
                androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters r0 = androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.DEFAULT
                r29 = r0
                r0 = r28
                r1 = 2147483647(0x7fffffff, float:NaN)
                r2 = 2147483647(0x7fffffff, float:NaN)
                r3 = 2147483647(0x7fffffff, float:NaN)
                r4 = 2147483647(0x7fffffff, float:NaN)
                r5 = 1
                r6 = 0
                r7 = 1
                r8 = 2147483647(0x7fffffff, float:NaN)
                r9 = 2147483647(0x7fffffff, float:NaN)
                r10 = 1
                r11 = r29
                java.lang.String r11 = r11.preferredAudioLanguage
                r12 = 2147483647(0x7fffffff, float:NaN)
                r13 = 2147483647(0x7fffffff, float:NaN)
                r14 = 1
                r15 = 0
                r16 = 0
                r17 = r29
                java.lang.String r17 = r17.preferredTextLanguage
                r18 = r29
                boolean r18 = r18.selectUndeterminedTextLanguage
                r19 = r29
                int r19 = r19.disabledTextTrackSelectionFlags
                r20 = 0
                r21 = 0
                r22 = 1
                r23 = 0
                android.util.SparseArray r24 = new android.util.SparseArray
                r25 = r24
                r25.<init>()
                android.util.SparseBooleanArray r25 = new android.util.SparseBooleanArray
                r26 = r25
                r26.<init>()
                r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters.<init>():void");
        }

        public Parameters(int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, int i5, int i6, boolean z4, @Nullable String str, int i7, int i8, boolean z5, boolean z6, boolean z7, @Nullable String str2, boolean z8, int i9, boolean z9, boolean z10, boolean z11, int i10, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseBooleanArray sparseBooleanArray) {
            super(str, str2, z8, i9);
            this.maxVideoWidth = i;
            this.maxVideoHeight = i2;
            this.maxVideoFrameRate = i3;
            this.maxVideoBitrate = i4;
            this.exceedVideoConstraintsIfNecessary = z;
            this.allowVideoMixedMimeTypeAdaptiveness = z2;
            this.allowVideoNonSeamlessAdaptiveness = z3;
            this.viewportWidth = i5;
            this.viewportHeight = i6;
            this.viewportOrientationMayChange = z4;
            this.maxAudioChannelCount = i7;
            this.maxAudioBitrate = i8;
            this.exceedAudioConstraintsIfNecessary = z5;
            this.allowAudioMixedMimeTypeAdaptiveness = z6;
            this.allowAudioMixedSampleRateAdaptiveness = z7;
            this.forceLowestBitrate = z9;
            this.forceHighestSupportedBitrate = z10;
            this.exceedRendererCapabilitiesIfNecessary = z11;
            this.tunnelingAudioSessionId = i10;
            this.allowMixedMimeAdaptiveness = z2;
            this.allowNonSeamlessAdaptiveness = z3;
            this.selectionOverrides = sparseArray;
            this.rendererDisabledFlags = sparseBooleanArray;
        }

        public Parameters(Parcel parcel) {
            super(parcel);
            this.maxVideoWidth = parcel.readInt();
            this.maxVideoHeight = parcel.readInt();
            this.maxVideoFrameRate = parcel.readInt();
            this.maxVideoBitrate = parcel.readInt();
            this.exceedVideoConstraintsIfNecessary = Util.readBoolean(parcel);
            this.allowVideoMixedMimeTypeAdaptiveness = Util.readBoolean(parcel);
            this.allowVideoNonSeamlessAdaptiveness = Util.readBoolean(parcel);
            this.viewportWidth = parcel.readInt();
            this.viewportHeight = parcel.readInt();
            this.viewportOrientationMayChange = Util.readBoolean(parcel);
            this.maxAudioChannelCount = parcel.readInt();
            this.maxAudioBitrate = parcel.readInt();
            this.exceedAudioConstraintsIfNecessary = Util.readBoolean(parcel);
            this.allowAudioMixedMimeTypeAdaptiveness = Util.readBoolean(parcel);
            this.allowAudioMixedSampleRateAdaptiveness = Util.readBoolean(parcel);
            this.forceLowestBitrate = Util.readBoolean(parcel);
            this.forceHighestSupportedBitrate = Util.readBoolean(parcel);
            this.exceedRendererCapabilitiesIfNecessary = Util.readBoolean(parcel);
            this.tunnelingAudioSessionId = parcel.readInt();
            this.selectionOverrides = readSelectionOverrides(parcel);
            this.rendererDisabledFlags = (SparseBooleanArray) Util.castNonNull(parcel.readSparseBooleanArray());
            this.allowMixedMimeAdaptiveness = this.allowVideoMixedMimeTypeAdaptiveness;
            this.allowNonSeamlessAdaptiveness = this.allowVideoNonSeamlessAdaptiveness;
        }

        public static boolean areRendererDisabledFlagsEqual(SparseBooleanArray sparseBooleanArray, SparseBooleanArray sparseBooleanArray2) {
            int size = sparseBooleanArray.size();
            if (sparseBooleanArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                    return false;
                }
            }
            return true;
        }

        public static boolean areSelectionOverridesEqual(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2) {
            int size = sparseArray.size();
            if (sparseArray2.size() != size) {
                return false;
            }
            for (int i = 0; i < size; i++) {
                int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i));
                if (indexOfKey < 0 || !areSelectionOverridesEqual(sparseArray.valueAt(i), sparseArray2.valueAt(indexOfKey))) {
                    return false;
                }
            }
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean areSelectionOverridesEqual(java.util.Map<androidx.media2.exoplayer.external.source.TrackGroupArray, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.SelectionOverride> r4, java.util.Map<androidx.media2.exoplayer.external.source.TrackGroupArray, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.SelectionOverride> r5) {
            /*
                r0 = r4
                int r0 = r0.size()
                r6 = r0
                r0 = r5
                int r0 = r0.size()
                r1 = r6
                if (r0 == r1) goto L_0x0013
                r0 = 0
                return r0
            L_0x0013:
                r0 = r4
                java.util.Set r0 = r0.entrySet()
                java.util.Iterator r0 = r0.iterator()
                r7 = r0
            L_0x001f:
                r0 = r7
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L_0x005e
                r0 = r7
                java.lang.Object r0 = r0.next()
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                r4 = r0
                r0 = r4
                java.lang.Object r0 = r0.getKey()
                androidx.media2.exoplayer.external.source.TrackGroupArray r0 = (androidx.media2.exoplayer.external.source.TrackGroupArray) r0
                r8 = r0
                r0 = r5
                r1 = r8
                boolean r0 = r0.containsKey(r1)
                if (r0 == 0) goto L_0x005c
                r0 = r4
                java.lang.Object r0 = r0.getValue()
                r1 = r5
                r2 = r8
                java.lang.Object r1 = r1.get(r2)
                boolean r0 = androidx.media2.exoplayer.external.util.Util.areEqual(r0, r1)
                if (r0 != 0) goto L_0x001f
            L_0x005c:
                r0 = 0
                return r0
            L_0x005e:
                r0 = 1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters.areSelectionOverridesEqual(java.util.Map, java.util.Map):boolean");
        }

        public static SparseArray<Map<TrackGroupArray, SelectionOverride>> readSelectionOverrides(Parcel parcel) {
            int readInt = parcel.readInt();
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray = new SparseArray<>(readInt);
            for (int i = 0; i < readInt; i++) {
                int readInt2 = parcel.readInt();
                int readInt3 = parcel.readInt();
                HashMap hashMap = new HashMap(readInt3);
                for (int i2 = 0; i2 < readInt3; i2++) {
                    hashMap.put((TrackGroupArray) parcel.readParcelable(TrackGroupArray.class.getClassLoader()), (SelectionOverride) parcel.readParcelable(SelectionOverride.class.getClassLoader()));
                }
                sparseArray.put(readInt2, hashMap);
            }
            return sparseArray;
        }

        public static void writeSelectionOverridesToParcel(Parcel parcel, SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            int size = sparseArray.size();
            parcel.writeInt(size);
            for (int i = 0; i < size; i++) {
                int keyAt = sparseArray.keyAt(i);
                Map<TrackGroupArray, SelectionOverride> valueAt = sparseArray.valueAt(i);
                int size2 = valueAt.size();
                parcel.writeInt(keyAt);
                parcel.writeInt(size2);
                for (Map.Entry<TrackGroupArray, SelectionOverride> entry : valueAt.entrySet()) {
                    parcel.writeParcelable(entry.getKey(), 0);
                    parcel.writeParcelable(entry.getValue(), 0);
                }
            }
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
        public ParametersBuilder buildUpon() {
            return new ParametersBuilder(this);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters, android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
        public boolean equals(@Nullable Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || Parameters.class != obj.getClass()) {
                return false;
            }
            Parameters parameters = (Parameters) obj;
            if (!(super.equals(obj) && this.maxVideoWidth == parameters.maxVideoWidth && this.maxVideoHeight == parameters.maxVideoHeight && this.maxVideoFrameRate == parameters.maxVideoFrameRate && this.maxVideoBitrate == parameters.maxVideoBitrate && this.exceedVideoConstraintsIfNecessary == parameters.exceedVideoConstraintsIfNecessary && this.allowVideoMixedMimeTypeAdaptiveness == parameters.allowVideoMixedMimeTypeAdaptiveness && this.allowVideoNonSeamlessAdaptiveness == parameters.allowVideoNonSeamlessAdaptiveness && this.viewportOrientationMayChange == parameters.viewportOrientationMayChange && this.viewportWidth == parameters.viewportWidth && this.viewportHeight == parameters.viewportHeight && this.maxAudioChannelCount == parameters.maxAudioChannelCount && this.maxAudioBitrate == parameters.maxAudioBitrate && this.exceedAudioConstraintsIfNecessary == parameters.exceedAudioConstraintsIfNecessary && this.allowAudioMixedMimeTypeAdaptiveness == parameters.allowAudioMixedMimeTypeAdaptiveness && this.allowAudioMixedSampleRateAdaptiveness == parameters.allowAudioMixedSampleRateAdaptiveness && this.forceLowestBitrate == parameters.forceLowestBitrate && this.forceHighestSupportedBitrate == parameters.forceHighestSupportedBitrate && this.exceedRendererCapabilitiesIfNecessary == parameters.exceedRendererCapabilitiesIfNecessary && this.tunnelingAudioSessionId == parameters.tunnelingAudioSessionId && areRendererDisabledFlagsEqual(this.rendererDisabledFlags, parameters.rendererDisabledFlags) && areSelectionOverridesEqual(this.selectionOverrides, parameters.selectionOverrides))) {
                z = false;
            }
            return z;
        }

        public final boolean getRendererDisabled(int i) {
            return this.rendererDisabledFlags.get(i);
        }

        @Nullable
        public final SelectionOverride getSelectionOverride(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
            return map != null ? map.get(trackGroupArray) : null;
        }

        public final boolean hasSelectionOverride(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
            return map != null && map.containsKey(trackGroupArray);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters
        public int hashCode() {
            return (((((((((((((((((((((((((((((((((((((super.hashCode() * 31) + this.maxVideoWidth) * 31) + this.maxVideoHeight) * 31) + this.maxVideoFrameRate) * 31) + this.maxVideoBitrate) * 31) + (this.exceedVideoConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowVideoMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowVideoNonSeamlessAdaptiveness ? 1 : 0)) * 31) + (this.viewportOrientationMayChange ? 1 : 0)) * 31) + this.viewportWidth) * 31) + this.viewportHeight) * 31) + this.maxAudioChannelCount) * 31) + this.maxAudioBitrate) * 31) + (this.exceedAudioConstraintsIfNecessary ? 1 : 0)) * 31) + (this.allowAudioMixedMimeTypeAdaptiveness ? 1 : 0)) * 31) + (this.allowAudioMixedSampleRateAdaptiveness ? 1 : 0)) * 31) + (this.forceLowestBitrate ? 1 : 0)) * 31) + (this.forceHighestSupportedBitrate ? 1 : 0)) * 31) + (this.exceedRendererCapabilitiesIfNecessary ? 1 : 0)) * 31) + this.tunnelingAudioSessionId;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.maxVideoWidth);
            parcel.writeInt(this.maxVideoHeight);
            parcel.writeInt(this.maxVideoFrameRate);
            parcel.writeInt(this.maxVideoBitrate);
            Util.writeBoolean(parcel, this.exceedVideoConstraintsIfNecessary);
            Util.writeBoolean(parcel, this.allowVideoMixedMimeTypeAdaptiveness);
            Util.writeBoolean(parcel, this.allowVideoNonSeamlessAdaptiveness);
            parcel.writeInt(this.viewportWidth);
            parcel.writeInt(this.viewportHeight);
            Util.writeBoolean(parcel, this.viewportOrientationMayChange);
            parcel.writeInt(this.maxAudioChannelCount);
            parcel.writeInt(this.maxAudioBitrate);
            Util.writeBoolean(parcel, this.exceedAudioConstraintsIfNecessary);
            Util.writeBoolean(parcel, this.allowAudioMixedMimeTypeAdaptiveness);
            Util.writeBoolean(parcel, this.allowAudioMixedSampleRateAdaptiveness);
            Util.writeBoolean(parcel, this.forceLowestBitrate);
            Util.writeBoolean(parcel, this.forceHighestSupportedBitrate);
            Util.writeBoolean(parcel, this.exceedRendererCapabilitiesIfNecessary);
            parcel.writeInt(this.tunnelingAudioSessionId);
            writeSelectionOverridesToParcel(parcel, this.selectionOverrides);
            parcel.writeSparseBooleanArray(this.rendererDisabledFlags);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$ParametersBuilder.class */
    public static final class ParametersBuilder extends TrackSelectionParameters.Builder {
        public boolean allowAudioMixedMimeTypeAdaptiveness;
        public boolean allowAudioMixedSampleRateAdaptiveness;
        public boolean allowVideoMixedMimeTypeAdaptiveness;
        public boolean allowVideoNonSeamlessAdaptiveness;
        public boolean exceedAudioConstraintsIfNecessary;
        public boolean exceedRendererCapabilitiesIfNecessary;
        public boolean exceedVideoConstraintsIfNecessary;
        public boolean forceHighestSupportedBitrate;
        public boolean forceLowestBitrate;
        public int maxAudioBitrate;
        public int maxAudioChannelCount;
        public int maxVideoBitrate;
        public int maxVideoFrameRate;
        public int maxVideoHeight;
        public int maxVideoWidth;
        public final SparseBooleanArray rendererDisabledFlags;
        public final SparseArray<Map<TrackGroupArray, SelectionOverride>> selectionOverrides;
        public int tunnelingAudioSessionId;
        public int viewportHeight;
        public boolean viewportOrientationMayChange;
        public int viewportWidth;

        public ParametersBuilder() {
            this(Parameters.DEFAULT);
        }

        public ParametersBuilder(Parameters parameters) {
            super(parameters);
            this.maxVideoWidth = parameters.maxVideoWidth;
            this.maxVideoHeight = parameters.maxVideoHeight;
            this.maxVideoFrameRate = parameters.maxVideoFrameRate;
            this.maxVideoBitrate = parameters.maxVideoBitrate;
            this.exceedVideoConstraintsIfNecessary = parameters.exceedVideoConstraintsIfNecessary;
            this.allowVideoMixedMimeTypeAdaptiveness = parameters.allowVideoMixedMimeTypeAdaptiveness;
            this.allowVideoNonSeamlessAdaptiveness = parameters.allowVideoNonSeamlessAdaptiveness;
            this.viewportWidth = parameters.viewportWidth;
            this.viewportHeight = parameters.viewportHeight;
            this.viewportOrientationMayChange = parameters.viewportOrientationMayChange;
            this.maxAudioChannelCount = parameters.maxAudioChannelCount;
            this.maxAudioBitrate = parameters.maxAudioBitrate;
            this.exceedAudioConstraintsIfNecessary = parameters.exceedAudioConstraintsIfNecessary;
            this.allowAudioMixedMimeTypeAdaptiveness = parameters.allowAudioMixedMimeTypeAdaptiveness;
            this.allowAudioMixedSampleRateAdaptiveness = parameters.allowAudioMixedSampleRateAdaptiveness;
            this.forceLowestBitrate = parameters.forceLowestBitrate;
            this.forceHighestSupportedBitrate = parameters.forceHighestSupportedBitrate;
            this.exceedRendererCapabilitiesIfNecessary = parameters.exceedRendererCapabilitiesIfNecessary;
            this.tunnelingAudioSessionId = parameters.tunnelingAudioSessionId;
            this.selectionOverrides = cloneSelectionOverrides(parameters.selectionOverrides);
            this.rendererDisabledFlags = parameters.rendererDisabledFlags.clone();
        }

        public static SparseArray<Map<TrackGroupArray, SelectionOverride>> cloneSelectionOverrides(SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray) {
            SparseArray<Map<TrackGroupArray, SelectionOverride>> sparseArray2 = new SparseArray<>();
            for (int i = 0; i < sparseArray.size(); i++) {
                sparseArray2.put(sparseArray.keyAt(i), new HashMap(sparseArray.valueAt(i)));
            }
            return sparseArray2;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.Builder
        public Parameters build() {
            return new Parameters(this.maxVideoWidth, this.maxVideoHeight, this.maxVideoFrameRate, this.maxVideoBitrate, this.exceedVideoConstraintsIfNecessary, this.allowVideoMixedMimeTypeAdaptiveness, this.allowVideoNonSeamlessAdaptiveness, this.viewportWidth, this.viewportHeight, this.viewportOrientationMayChange, this.preferredAudioLanguage, this.maxAudioChannelCount, this.maxAudioBitrate, this.exceedAudioConstraintsIfNecessary, this.allowAudioMixedMimeTypeAdaptiveness, this.allowAudioMixedSampleRateAdaptiveness, this.preferredTextLanguage, this.selectUndeterminedTextLanguage, this.disabledTextTrackSelectionFlags, this.forceLowestBitrate, this.forceHighestSupportedBitrate, this.exceedRendererCapabilitiesIfNecessary, this.tunnelingAudioSessionId, this.selectionOverrides, this.rendererDisabledFlags);
        }

        public final ParametersBuilder clearSelectionOverride(int i, TrackGroupArray trackGroupArray) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
            if (map != null && map.containsKey(trackGroupArray)) {
                map.remove(trackGroupArray);
                if (map.isEmpty()) {
                    this.selectionOverrides.remove(i);
                }
            }
            return this;
        }

        public final ParametersBuilder clearSelectionOverrides() {
            if (this.selectionOverrides.size() == 0) {
                return this;
            }
            this.selectionOverrides.clear();
            return this;
        }

        public final ParametersBuilder clearSelectionOverrides(int i) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
            if (map != null && !map.isEmpty()) {
                this.selectionOverrides.remove(i);
            }
            return this;
        }

        public ParametersBuilder clearVideoSizeConstraints() {
            return setMaxVideoSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }

        public ParametersBuilder clearViewportSizeConstraints() {
            return setViewportSize(Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        public ParametersBuilder setAllowAudioMixedMimeTypeAdaptiveness(boolean z) {
            this.allowAudioMixedMimeTypeAdaptiveness = z;
            return this;
        }

        public ParametersBuilder setAllowAudioMixedSampleRateAdaptiveness(boolean z) {
            this.allowAudioMixedSampleRateAdaptiveness = z;
            return this;
        }

        @Deprecated
        public ParametersBuilder setAllowMixedMimeAdaptiveness(boolean z) {
            setAllowAudioMixedMimeTypeAdaptiveness(z);
            setAllowVideoMixedMimeTypeAdaptiveness(z);
            return this;
        }

        @Deprecated
        public ParametersBuilder setAllowNonSeamlessAdaptiveness(boolean z) {
            return setAllowVideoNonSeamlessAdaptiveness(z);
        }

        public ParametersBuilder setAllowVideoMixedMimeTypeAdaptiveness(boolean z) {
            this.allowVideoMixedMimeTypeAdaptiveness = z;
            return this;
        }

        public ParametersBuilder setAllowVideoNonSeamlessAdaptiveness(boolean z) {
            this.allowVideoNonSeamlessAdaptiveness = z;
            return this;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setDisabledTextTrackSelectionFlags(int i) {
            super.setDisabledTextTrackSelectionFlags(i);
            return this;
        }

        public ParametersBuilder setExceedAudioConstraintsIfNecessary(boolean z) {
            this.exceedAudioConstraintsIfNecessary = z;
            return this;
        }

        public ParametersBuilder setExceedRendererCapabilitiesIfNecessary(boolean z) {
            this.exceedRendererCapabilitiesIfNecessary = z;
            return this;
        }

        public ParametersBuilder setExceedVideoConstraintsIfNecessary(boolean z) {
            this.exceedVideoConstraintsIfNecessary = z;
            return this;
        }

        public ParametersBuilder setForceHighestSupportedBitrate(boolean z) {
            this.forceHighestSupportedBitrate = z;
            return this;
        }

        public ParametersBuilder setForceLowestBitrate(boolean z) {
            this.forceLowestBitrate = z;
            return this;
        }

        public ParametersBuilder setMaxAudioBitrate(int i) {
            this.maxAudioBitrate = i;
            return this;
        }

        public ParametersBuilder setMaxAudioChannelCount(int i) {
            this.maxAudioChannelCount = i;
            return this;
        }

        public ParametersBuilder setMaxVideoBitrate(int i) {
            this.maxVideoBitrate = i;
            return this;
        }

        public ParametersBuilder setMaxVideoFrameRate(int i) {
            this.maxVideoFrameRate = i;
            return this;
        }

        public ParametersBuilder setMaxVideoSize(int i, int i2) {
            this.maxVideoWidth = i;
            this.maxVideoHeight = i2;
            return this;
        }

        public ParametersBuilder setMaxVideoSizeSd() {
            return setMaxVideoSize(1279, 719);
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredAudioLanguage(@Nullable String str) {
            super.setPreferredAudioLanguage(str);
            return this;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setPreferredTextLanguage(@Nullable String str) {
            super.setPreferredTextLanguage(str);
            return this;
        }

        public final ParametersBuilder setRendererDisabled(int i, boolean z) {
            if (this.rendererDisabledFlags.get(i) == z) {
                return this;
            }
            if (z) {
                this.rendererDisabledFlags.put(i, true);
            } else {
                this.rendererDisabledFlags.delete(i);
            }
            return this;
        }

        @Override // androidx.media2.exoplayer.external.trackselection.TrackSelectionParameters.Builder
        public ParametersBuilder setSelectUndeterminedTextLanguage(boolean z) {
            super.setSelectUndeterminedTextLanguage(z);
            return this;
        }

        public final ParametersBuilder setSelectionOverride(int i, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
            Map<TrackGroupArray, SelectionOverride> map = this.selectionOverrides.get(i);
            Map<TrackGroupArray, SelectionOverride> map2 = map;
            if (map == null) {
                map2 = new HashMap<>();
                this.selectionOverrides.put(i, map2);
            }
            if (map2.containsKey(trackGroupArray) && Util.areEqual(map2.get(trackGroupArray), selectionOverride)) {
                return this;
            }
            map2.put(trackGroupArray, selectionOverride);
            return this;
        }

        public ParametersBuilder setTunnelingAudioSessionId(int i) {
            this.tunnelingAudioSessionId = i;
            return this;
        }

        public ParametersBuilder setViewportSize(int i, int i2, boolean z) {
            this.viewportWidth = i;
            this.viewportHeight = i2;
            this.viewportOrientationMayChange = z;
            return this;
        }

        public ParametersBuilder setViewportSizeToPhysicalDisplaySize(Context context, boolean z) {
            Point physicalDisplaySize = Util.getPhysicalDisplaySize(context);
            return setViewportSize(physicalDisplaySize.x, physicalDisplaySize.y, z);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$SelectionOverride.class */
    public static final class SelectionOverride implements Parcelable {
        public static final Parcelable.Creator<SelectionOverride> CREATOR = new Parcelable.Creator<SelectionOverride>() { // from class: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.SelectionOverride.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SelectionOverride createFromParcel(Parcel parcel) {
                return new SelectionOverride(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SelectionOverride[] newArray(int i) {
                return new SelectionOverride[i];
            }
        };
        public final int data;
        public final int groupIndex;
        public final int length;
        public final int reason;
        public final int[] tracks;

        public SelectionOverride(int i, int... iArr) {
            this(i, iArr, 2, 0);
        }

        public SelectionOverride(int i, int[] iArr, int i2, int i3) {
            this.groupIndex = i;
            this.tracks = Arrays.copyOf(iArr, iArr.length);
            this.length = iArr.length;
            this.reason = i2;
            this.data = i3;
            Arrays.sort(this.tracks);
        }

        public SelectionOverride(Parcel parcel) {
            this.groupIndex = parcel.readInt();
            this.length = parcel.readByte();
            this.tracks = new int[this.length];
            parcel.readIntArray(this.tracks);
            this.reason = parcel.readInt();
            this.data = parcel.readInt();
        }

        public boolean containsTrack(int i) {
            for (int i2 : this.tracks) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(@Nullable Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || SelectionOverride.class != obj.getClass()) {
                return false;
            }
            SelectionOverride selectionOverride = (SelectionOverride) obj;
            if (!(this.groupIndex == selectionOverride.groupIndex && Arrays.equals(this.tracks, selectionOverride.tracks) && this.reason == selectionOverride.reason && this.data == selectionOverride.data)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (((((this.groupIndex * 31) + Arrays.hashCode(this.tracks)) * 31) + this.reason) * 31) + this.data;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.groupIndex);
            parcel.writeInt(this.tracks.length);
            parcel.writeIntArray(this.tracks);
            parcel.writeInt(this.reason);
            parcel.writeInt(this.data);
        }
    }

    public DefaultTrackSelector() {
        this(new AdaptiveTrackSelection.Factory());
    }

    public DefaultTrackSelector(TrackSelection.Factory factory) {
        this.trackSelectionFactory = factory;
        this.parametersReference = new AtomicReference<>(Parameters.DEFAULT);
    }

    @Deprecated
    public DefaultTrackSelector(BandwidthMeter bandwidthMeter) {
        this(new AdaptiveTrackSelection.Factory(bandwidthMeter));
    }

    public static int compareFormatValues(int i, int i2) {
        int i3 = -1;
        if (i != -1) {
            i3 = i2 == -1 ? 1 : i - i2;
        } else if (i2 == -1) {
            i3 = 0;
        }
        return i3;
    }

    public static int compareInts(int i, int i2) {
        return i > i2 ? 1 : i2 > i ? -1 : 0;
    }

    public static void filterAdaptiveVideoTrackCountForMimeType(TrackGroup trackGroup, int[] iArr, int i, @Nullable String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!isSupportedAdaptiveVideoTrack(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                list.remove(size);
            }
        }
    }

    public static boolean formatHasNoLanguage(Format format) {
        return stringDefinesNoLanguage(format.language);
    }

    public static int getAdaptiveAudioTrackCount(TrackGroup trackGroup, int[] iArr, AudioConfigurationTuple audioConfigurationTuple, boolean z, boolean z2) {
        int i = 0;
        for (int i2 = 0; i2 < trackGroup.length; i2++) {
            i = i;
            if (isSupportedAdaptiveAudioTrack(trackGroup.getFormat(i2), iArr[i2], audioConfigurationTuple, z, z2)) {
                i++;
            }
        }
        return i;
    }

    public static int[] getAdaptiveAudioTracks(TrackGroup trackGroup, int[] iArr, boolean z, boolean z2) {
        HashSet hashSet = new HashSet();
        AudioConfigurationTuple audioConfigurationTuple = null;
        int i = 0;
        for (int i2 = 0; i2 < trackGroup.length; i2++) {
            Format format = trackGroup.getFormat(i2);
            AudioConfigurationTuple audioConfigurationTuple2 = new AudioConfigurationTuple(format.channelCount, format.sampleRate, format.sampleMimeType);
            i = i;
            audioConfigurationTuple = audioConfigurationTuple;
            if (hashSet.add(audioConfigurationTuple2)) {
                int adaptiveAudioTrackCount = getAdaptiveAudioTrackCount(trackGroup, iArr, audioConfigurationTuple2, z, z2);
                i = i;
                audioConfigurationTuple = audioConfigurationTuple;
                if (adaptiveAudioTrackCount > i) {
                    i = adaptiveAudioTrackCount;
                    audioConfigurationTuple = audioConfigurationTuple2;
                }
            }
        }
        if (i <= 1) {
            return NO_TRACKS;
        }
        int[] iArr2 = new int[i];
        int i3 = 0;
        for (int i4 = 0; i4 < trackGroup.length; i4++) {
            i3 = i3;
            if (isSupportedAdaptiveAudioTrack(trackGroup.getFormat(i4), iArr[i4], (AudioConfigurationTuple) Assertions.checkNotNull(audioConfigurationTuple), z, z2)) {
                iArr2[i3] = i4;
                i3++;
            }
        }
        return iArr2;
    }

    public static int getAdaptiveVideoTrackCountForMimeType(TrackGroup trackGroup, int[] iArr, int i, @Nullable String str, int i2, int i3, int i4, int i5, List<Integer> list) {
        int i6 = 0;
        for (int i7 = 0; i7 < list.size(); i7++) {
            int intValue = list.get(i7).intValue();
            i6 = i6;
            if (isSupportedAdaptiveVideoTrack(trackGroup.getFormat(intValue), str, iArr[intValue], i, i2, i3, i4, i5)) {
                i6++;
            }
        }
        return i6;
    }

    public static int[] getAdaptiveVideoTracksForGroup(TrackGroup trackGroup, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2) {
        String str;
        if (trackGroup.length < 2) {
            return NO_TRACKS;
        }
        List<Integer> viewportFilteredTrackIndices = getViewportFilteredTrackIndices(trackGroup, i6, i7, z2);
        if (viewportFilteredTrackIndices.size() < 2) {
            return NO_TRACKS;
        }
        if (!z) {
            HashSet hashSet = new HashSet();
            str = null;
            int i8 = 0;
            for (int i9 = 0; i9 < viewportFilteredTrackIndices.size(); i9++) {
                String str2 = trackGroup.getFormat(viewportFilteredTrackIndices.get(i9).intValue()).sampleMimeType;
                str = str;
                i8 = i8;
                if (hashSet.add(str2)) {
                    int adaptiveVideoTrackCountForMimeType = getAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i, str2, i2, i3, i4, i5, viewportFilteredTrackIndices);
                    str = str;
                    i8 = i8;
                    if (adaptiveVideoTrackCountForMimeType > i8) {
                        i8 = adaptiveVideoTrackCountForMimeType;
                        str = str2;
                    }
                }
            }
        } else {
            str = null;
        }
        filterAdaptiveVideoTrackCountForMimeType(trackGroup, iArr, i, str, i2, i3, i4, i5, viewportFilteredTrackIndices);
        return viewportFilteredTrackIndices.size() < 2 ? NO_TRACKS : Util.toArray(viewportFilteredTrackIndices);
    }

    public static int getFormatLanguageScore(Format format, @Nullable String str) {
        String str2 = format.language;
        if (str2 == null || str == null) {
            return 0;
        }
        if (TextUtils.equals(str2, str)) {
            return 3;
        }
        if (format.language.startsWith(str) || str.startsWith(format.language)) {
            return 2;
        }
        return (format.language.length() < 3 || str.length() < 3 || !format.language.substring(0, 3).equals(str.substring(0, 3))) ? 0 : 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0025, code lost:
        if (r12 != r11) goto L_0x0033;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Point getMaxVideoSizeInViewport(boolean r6, int r7, int r8, int r9, int r10) {
        /*
            r0 = r6
            if (r0 == 0) goto L_0x002b
            r0 = 1
            r11 = r0
            r0 = r9
            r1 = r10
            if (r0 <= r1) goto L_0x0013
            r0 = 1
            r12 = r0
            goto L_0x0016
        L_0x0013:
            r0 = 0
            r12 = r0
        L_0x0016:
            r0 = r7
            r1 = r8
            if (r0 <= r1) goto L_0x001e
            goto L_0x0021
        L_0x001e:
            r0 = 0
            r11 = r0
        L_0x0021:
            r0 = r12
            r1 = r11
            if (r0 == r1) goto L_0x002b
            goto L_0x0033
        L_0x002b:
            r0 = r7
            r12 = r0
            r0 = r8
            r7 = r0
            r0 = r12
            r8 = r0
        L_0x0033:
            r0 = r9
            r1 = r7
            int r0 = r0 * r1
            r12 = r0
            r0 = r10
            r1 = r8
            int r0 = r0 * r1
            r11 = r0
            r0 = r12
            r1 = r11
            if (r0 < r1) goto L_0x0054
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r8
            r3 = r11
            r4 = r9
            int r3 = androidx.media2.exoplayer.external.util.Util.ceilDivide(r3, r4)
            r1.<init>(r2, r3)
            return r0
        L_0x0054:
            android.graphics.Point r0 = new android.graphics.Point
            r1 = r0
            r2 = r12
            r3 = r10
            int r2 = androidx.media2.exoplayer.external.util.Util.ceilDivide(r2, r3)
            r3 = r7
            r1.<init>(r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.getMaxVideoSizeInViewport(boolean, int, int, int, int):android.graphics.Point");
    }

    public static List<Integer> getViewportFilteredTrackIndices(TrackGroup trackGroup, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList(trackGroup.length);
        for (int i3 = 0; i3 < trackGroup.length; i3++) {
            arrayList.add(Integer.valueOf(i3));
        }
        if (!(i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE)) {
            int i4 = Integer.MAX_VALUE;
            for (int i5 = 0; i5 < trackGroup.length; i5++) {
                Format format = trackGroup.getFormat(i5);
                int i6 = format.width;
                i4 = i4;
                if (i6 > 0) {
                    int i7 = format.height;
                    i4 = i4;
                    if (i7 > 0) {
                        Point maxVideoSizeInViewport = getMaxVideoSizeInViewport(z, i, i2, i6, i7);
                        int i8 = format.width;
                        int i9 = format.height;
                        int i10 = i8 * i9;
                        i4 = i4;
                        if (i8 >= ((int) (maxVideoSizeInViewport.x * 0.98f))) {
                            i4 = i4;
                            if (i9 >= ((int) (maxVideoSizeInViewport.y * 0.98f))) {
                                i4 = i4;
                                if (i10 < i4) {
                                    i4 = i10;
                                }
                            }
                        }
                    }
                }
            }
            if (i4 != Integer.MAX_VALUE) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    int pixelCount = trackGroup.getFormat(((Integer) arrayList.get(size)).intValue()).getPixelCount();
                    if (pixelCount == -1 || pixelCount > i4) {
                        arrayList.remove(size);
                    }
                }
            }
        }
        return arrayList;
    }

    public static boolean isSupported(int i, boolean z) {
        int i2 = i & 7;
        return i2 == 4 || (z && i2 == 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0049, code lost:
        if (android.text.TextUtils.equals(r0, r5.mimeType) != false) goto L_0x004c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0068, code lost:
        if (r0 == r5.sampleRate) goto L_0x006b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSupportedAdaptiveAudioTrack(androidx.media2.exoplayer.external.Format r3, int r4, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.AudioConfigurationTuple r5, boolean r6, boolean r7) {
        /*
            r0 = 0
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = 0
            boolean r0 = isSupported(r0, r1)
            if (r0 == 0) goto L_0x006e
            r0 = r3
            int r0 = r0.channelCount
            r4 = r0
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L_0x006e
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.channelCount
            if (r0 != r1) goto L_0x006e
            r0 = r6
            if (r0 != 0) goto L_0x004c
            r0 = r3
            java.lang.String r0 = r0.sampleMimeType
            r10 = r0
            r0 = r8
            r9 = r0
            r0 = r10
            if (r0 == 0) goto L_0x006e
            r0 = r8
            r9 = r0
            r0 = r10
            r1 = r5
            java.lang.String r1 = r1.mimeType
            boolean r0 = android.text.TextUtils.equals(r0, r1)
            if (r0 == 0) goto L_0x006e
        L_0x004c:
            r0 = r7
            if (r0 != 0) goto L_0x006b
            r0 = r3
            int r0 = r0.sampleRate
            r4 = r0
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = -1
            if (r0 == r1) goto L_0x006e
            r0 = r8
            r9 = r0
            r0 = r4
            r1 = r5
            int r1 = r1.sampleRate
            if (r0 != r1) goto L_0x006e
        L_0x006b:
            r0 = 1
            r9 = r0
        L_0x006e:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.isSupportedAdaptiveAudioTrack(androidx.media2.exoplayer.external.Format, int, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$AudioConfigurationTuple, boolean, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r0 <= r7) goto L_0x0040;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
        if (r0 <= r8) goto L_0x0054;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
        if (r0 <= r9) goto L_0x0070;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0081, code lost:
        if (r0 <= r10) goto L_0x0084;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
        if (androidx.media2.exoplayer.external.util.Util.areEqual(r3.sampleMimeType, r4) != false) goto L_0x002c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isSupportedAdaptiveVideoTrack(androidx.media2.exoplayer.external.Format r3, @androidx.annotation.Nullable java.lang.String r4, int r5, int r6, int r7, int r8, int r9, int r10) {
        /*
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = 0
            boolean r0 = isSupported(r0, r1)
            if (r0 == 0) goto L_0x0087
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r6
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0087
            r0 = r4
            if (r0 == 0) goto L_0x002c
            r0 = r11
            r12 = r0
            r0 = r3
            java.lang.String r0 = r0.sampleMimeType
            r1 = r4
            boolean r0 = androidx.media2.exoplayer.external.util.Util.areEqual(r0, r1)
            if (r0 == 0) goto L_0x0087
        L_0x002c:
            r0 = r3
            int r0 = r0.width
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L_0x0040
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r7
            if (r0 > r1) goto L_0x0087
        L_0x0040:
            r0 = r3
            int r0 = r0.height
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L_0x0054
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r8
            if (r0 > r1) goto L_0x0087
        L_0x0054:
            r0 = r3
            float r0 = r0.frameRate
            r13 = r0
            r0 = r13
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0070
            r0 = r11
            r12 = r0
            r0 = r13
            r1 = r9
            float r1 = (float) r1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0087
        L_0x0070:
            r0 = r3
            int r0 = r0.bitrate
            r5 = r0
            r0 = r5
            r1 = -1
            if (r0 == r1) goto L_0x0084
            r0 = r11
            r12 = r0
            r0 = r5
            r1 = r10
            if (r0 > r1) goto L_0x0087
        L_0x0084:
            r0 = 1
            r12 = r0
        L_0x0087:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.isSupportedAdaptiveVideoTrack(androidx.media2.exoplayer.external.Format, java.lang.String, int, int, int, int, int, int):boolean");
    }

    public static void maybeConfigureRenderersForTunneling(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, RendererConfiguration[] rendererConfigurationArr, TrackSelection[] trackSelectionArr, int i) {
        boolean z;
        if (i != 0) {
            int i2 = -1;
            int i3 = -1;
            for (int i4 = 0; i4 < mappedTrackInfo.getRendererCount(); i4++) {
                int rendererType = mappedTrackInfo.getRendererType(i4);
                TrackSelection trackSelection = trackSelectionArr[i4];
                if (rendererType != 1) {
                    i2 = i2;
                    i3 = i3;
                    if (rendererType != 2) {
                        continue;
                    }
                }
                i2 = i2;
                i3 = i3;
                if (trackSelection != null) {
                    i2 = i2;
                    i3 = i3;
                    if (!rendererSupportsTunneling(iArr[i4], mappedTrackInfo.getTrackGroups(i4), trackSelection)) {
                        continue;
                    } else if (rendererType == 1) {
                        if (i3 != -1) {
                            z = false;
                            break;
                        } else {
                            i3 = i4;
                            i2 = i2;
                        }
                    } else if (i2 != -1) {
                        z = false;
                        break;
                    } else {
                        i2 = i4;
                        i3 = i3;
                    }
                } else {
                    continue;
                }
            }
            z = true;
            boolean z2 = false;
            if (i3 != -1) {
                z2 = false;
                if (i2 != -1) {
                    z2 = true;
                }
            }
            if (z && z2) {
                RendererConfiguration rendererConfiguration = new RendererConfiguration(i);
                rendererConfigurationArr[i3] = rendererConfiguration;
                rendererConfigurationArr[i2] = rendererConfiguration;
            }
        }
    }

    public static boolean rendererSupportsTunneling(int[][] iArr, TrackGroupArray trackGroupArray, TrackSelection trackSelection) {
        if (trackSelection == null) {
            return false;
        }
        int indexOf = trackGroupArray.indexOf(trackSelection.getTrackGroup());
        for (int i = 0; i < trackSelection.length(); i++) {
            if ((iArr[indexOf][trackSelection.getIndexInTrackGroup(i)] & 32) != 32) {
                return false;
            }
        }
        return true;
    }

    @Nullable
    public static TrackSelection.Definition selectAdaptiveVideoTrack(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters) {
        int i2 = parameters.allowVideoNonSeamlessAdaptiveness ? 24 : 16;
        boolean z = parameters.allowVideoMixedMimeTypeAdaptiveness && (i & i2) != 0;
        for (int i3 = 0; i3 < trackGroupArray.length; i3++) {
            TrackGroup trackGroup = trackGroupArray.get(i3);
            int[] adaptiveVideoTracksForGroup = getAdaptiveVideoTracksForGroup(trackGroup, iArr[i3], z, i2, parameters.maxVideoWidth, parameters.maxVideoHeight, parameters.maxVideoFrameRate, parameters.maxVideoBitrate, parameters.viewportWidth, parameters.viewportHeight, parameters.viewportOrientationMayChange);
            if (adaptiveVideoTracksForGroup.length > 0) {
                return new TrackSelection.Definition(trackGroup, adaptiveVideoTracksForGroup);
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x0155, code lost:
        if (r0 < 0) goto L_0x0158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0158, code lost:
        r25 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01c6 A[SYNTHETIC] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.media2.exoplayer.external.trackselection.TrackSelection.Definition selectFixedVideoTrack(androidx.media2.exoplayer.external.source.TrackGroupArray r8, int[][] r9, androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.Parameters r10) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector.selectFixedVideoTrack(androidx.media2.exoplayer.external.source.TrackGroupArray, int[][], androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector$Parameters):androidx.media2.exoplayer.external.trackselection.TrackSelection$Definition");
    }

    public static boolean stringDefinesNoLanguage(@Nullable String str) {
        return TextUtils.isEmpty(str) || TextUtils.equals(str, "und");
    }

    public ParametersBuilder buildUponParameters() {
        return getParameters().buildUpon();
    }

    @Deprecated
    public final void clearSelectionOverride(int i, TrackGroupArray trackGroupArray) {
        setParameters(buildUponParameters().clearSelectionOverride(i, trackGroupArray));
    }

    @Deprecated
    public final void clearSelectionOverrides() {
        setParameters(buildUponParameters().clearSelectionOverrides());
    }

    @Deprecated
    public final void clearSelectionOverrides(int i) {
        setParameters(buildUponParameters().clearSelectionOverrides(i));
    }

    public void experimental_allowMultipleAdaptiveSelections() {
        this.allowMultipleAdaptiveSelections = true;
    }

    public Parameters getParameters() {
        return this.parametersReference.get();
    }

    @Deprecated
    public final boolean getRendererDisabled(int i) {
        return getParameters().getRendererDisabled(i);
    }

    @Nullable
    @Deprecated
    public final SelectionOverride getSelectionOverride(int i, TrackGroupArray trackGroupArray) {
        return getParameters().getSelectionOverride(i, trackGroupArray);
    }

    @Deprecated
    public final boolean hasSelectionOverride(int i, TrackGroupArray trackGroupArray) {
        return getParameters().hasSelectionOverride(i, trackGroupArray);
    }

    public TrackSelection.Definition[] selectAllTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, Parameters parameters) throws ExoPlaybackException {
        int rendererCount = mappedTrackInfo.getRendererCount();
        TrackSelection.Definition[] definitionArr = new TrackSelection.Definition[rendererCount];
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        while (true) {
            boolean z3 = true;
            if (i >= rendererCount) {
                break;
            }
            z = z;
            z2 = z2;
            if (2 == mappedTrackInfo.getRendererType(i)) {
                z = z;
                if (!z) {
                    definitionArr[i] = selectVideoTrack(mappedTrackInfo.getTrackGroups(i), iArr[i], iArr2[i], parameters, true);
                    z = definitionArr[i] != null;
                }
                if (mappedTrackInfo.getTrackGroups(i).length <= 0) {
                    z3 = false;
                }
                z2 |= z3;
            }
            i++;
        }
        AudioTrackScore audioTrackScore = null;
        String str = null;
        int i2 = -1;
        for (int i3 = 0; i3 < rendererCount; i3++) {
            if (1 == mappedTrackInfo.getRendererType(i3)) {
                Pair<TrackSelection.Definition, AudioTrackScore> selectAudioTrack = selectAudioTrack(mappedTrackInfo.getTrackGroups(i3), iArr[i3], iArr2[i3], parameters, this.allowMultipleAdaptiveSelections || !z2);
                if (selectAudioTrack != null && (audioTrackScore == null || ((AudioTrackScore) selectAudioTrack.second).compareTo(audioTrackScore) > 0)) {
                    if (i2 != -1) {
                        definitionArr[i2] = null;
                    }
                    TrackSelection.Definition definition = (TrackSelection.Definition) selectAudioTrack.first;
                    definitionArr[i3] = definition;
                    str = definition.group.getFormat(definition.tracks[0]).language;
                    audioTrackScore = (AudioTrackScore) selectAudioTrack.second;
                    i2 = i3;
                }
            }
        }
        int i4 = Integer.MIN_VALUE;
        int i5 = -1;
        for (int i6 = 0; i6 < rendererCount; i6++) {
            int rendererType = mappedTrackInfo.getRendererType(i6);
            if (rendererType != 1) {
                if (rendererType != 2) {
                    if (rendererType != 3) {
                        definitionArr[i6] = selectOtherTrack(rendererType, mappedTrackInfo.getTrackGroups(i6), iArr[i6], parameters);
                    } else {
                        Pair<TrackSelection.Definition, Integer> selectTextTrack = selectTextTrack(mappedTrackInfo.getTrackGroups(i6), iArr[i6], parameters, str);
                        i4 = i4;
                        i5 = i5;
                        if (selectTextTrack != null) {
                            i4 = i4;
                            i5 = i5;
                            if (((Integer) selectTextTrack.second).intValue() > i4) {
                                if (i5 != -1) {
                                    definitionArr[i5] = null;
                                }
                                definitionArr[i6] = (TrackSelection.Definition) selectTextTrack.first;
                                i4 = ((Integer) selectTextTrack.second).intValue();
                                i5 = i6;
                            }
                        }
                    }
                }
                i4 = i4;
                i5 = i5;
            } else {
                i5 = i5;
                i4 = i4;
            }
        }
        return definitionArr;
    }

    @Nullable
    public Pair<TrackSelection.Definition, AudioTrackScore> selectAudioTrack(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters, boolean z) throws ExoPlaybackException {
        AudioTrackScore audioTrackScore = null;
        int i2 = 0;
        int i3 = -1;
        int i4 = -1;
        while (i2 < trackGroupArray.length) {
            TrackGroup trackGroup = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            int i5 = i3;
            int i6 = i4;
            for (int i7 = 0; i7 < trackGroup.length; i7++) {
                i5 = i5;
                i6 = i6;
                audioTrackScore = audioTrackScore;
                if (isSupported(iArr2[i7], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    AudioTrackScore audioTrackScore2 = new AudioTrackScore(trackGroup.getFormat(i7), parameters, iArr2[i7]);
                    if (audioTrackScore2.isWithinConstraints || parameters.exceedAudioConstraintsIfNecessary) {
                        if (audioTrackScore != null) {
                            i5 = i5;
                            i6 = i6;
                            audioTrackScore = audioTrackScore;
                            if (audioTrackScore2.compareTo(audioTrackScore) <= 0) {
                            }
                        }
                        i5 = i2;
                        i6 = i7;
                        audioTrackScore = audioTrackScore2;
                    } else {
                        i5 = i5;
                        i6 = i6;
                        audioTrackScore = audioTrackScore;
                    }
                }
            }
            i2++;
            i4 = i6;
            i3 = i5;
        }
        if (i3 == -1) {
            return null;
        }
        TrackGroup trackGroup2 = trackGroupArray.get(i3);
        TrackSelection.Definition definition = null;
        if (!parameters.forceHighestSupportedBitrate) {
            definition = null;
            if (!parameters.forceLowestBitrate) {
                definition = null;
                if (z) {
                    int[] adaptiveAudioTracks = getAdaptiveAudioTracks(trackGroup2, iArr[i3], parameters.allowAudioMixedMimeTypeAdaptiveness, parameters.allowAudioMixedSampleRateAdaptiveness);
                    definition = null;
                    if (adaptiveAudioTracks.length > 0) {
                        definition = new TrackSelection.Definition(trackGroup2, adaptiveAudioTracks);
                    }
                }
            }
        }
        TrackSelection.Definition definition2 = definition;
        if (definition == null) {
            definition2 = new TrackSelection.Definition(trackGroup2, i4);
        }
        return Pair.create(definition2, (AudioTrackScore) Assertions.checkNotNull(audioTrackScore));
    }

    @Nullable
    public TrackSelection.Definition selectOtherTrack(int i, TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters) throws ExoPlaybackException {
        TrackSelection.Definition definition = null;
        TrackGroup trackGroup = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < trackGroupArray.length) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            int i5 = i3;
            for (int i6 = 0; i6 < trackGroup2.length; i6++) {
                trackGroup = trackGroup;
                i5 = i5;
                i4 = i4;
                if (isSupported(iArr2[i6], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    int i7 = (trackGroup2.getFormat(i6).selectionFlags & 1) != 0 ? 2 : 1;
                    int i8 = i7;
                    if (isSupported(iArr2[i6], false)) {
                        i8 = i7 + 1000;
                    }
                    trackGroup = trackGroup;
                    i5 = i5;
                    i4 = i4;
                    if (i8 > i4) {
                        i5 = i6;
                        trackGroup = trackGroup2;
                        i4 = i8;
                    }
                }
            }
            i2++;
            i4 = i4;
            i3 = i5;
        }
        if (trackGroup != null) {
            definition = new TrackSelection.Definition(trackGroup, i3);
        }
        return definition;
    }

    @Nullable
    public Pair<TrackSelection.Definition, Integer> selectTextTrack(TrackGroupArray trackGroupArray, int[][] iArr, Parameters parameters, @Nullable String str) throws ExoPlaybackException {
        int i;
        int i2 = 0;
        TrackGroup trackGroup = null;
        int i3 = 0;
        int i4 = 0;
        while (i2 < trackGroupArray.length) {
            TrackGroup trackGroup2 = trackGroupArray.get(i2);
            int[] iArr2 = iArr[i2];
            int i5 = i3;
            for (int i6 = 0; i6 < trackGroup2.length; i6++) {
                if (isSupported(iArr2[i6], parameters.exceedRendererCapabilitiesIfNecessary)) {
                    Format format = trackGroup2.getFormat(i6);
                    int i7 = format.selectionFlags & (parameters.disabledTextTrackSelectionFlags ^ (-1));
                    boolean z = (i7 & 1) != 0;
                    boolean z2 = (i7 & 2) != 0;
                    int formatLanguageScore = getFormatLanguageScore(format, parameters.preferredTextLanguage);
                    boolean formatHasNoLanguage = formatHasNoLanguage(format);
                    if (formatLanguageScore > 0 || (parameters.selectUndeterminedTextLanguage && formatHasNoLanguage)) {
                        i = (z ? 11 : !z2 ? 7 : 3) + formatLanguageScore;
                    } else if (z) {
                        i = 2;
                    } else if (z2) {
                        if (getFormatLanguageScore(format, str) <= 0) {
                            trackGroup = trackGroup;
                            i5 = i5;
                            i4 = i4;
                            if (formatHasNoLanguage) {
                                trackGroup = trackGroup;
                                i5 = i5;
                                i4 = i4;
                                if (!stringDefinesNoLanguage(str)) {
                                }
                            }
                        }
                        i = 1;
                    }
                    int i8 = i;
                    if (isSupported(iArr2[i6], false)) {
                        i8 = i + 1000;
                    }
                    trackGroup = trackGroup;
                    i5 = i5;
                    i4 = i4;
                    if (i8 > i4) {
                        i5 = i6;
                        trackGroup = trackGroup2;
                        i4 = i8;
                    }
                }
                i4 = i4;
                i5 = i5;
                trackGroup = trackGroup;
            }
            i2++;
            i3 = i5;
        }
        return trackGroup == null ? null : Pair.create(new TrackSelection.Definition(trackGroup, i3), Integer.valueOf(i4));
    }

    @Override // androidx.media2.exoplayer.external.trackselection.MappingTrackSelector
    public final Pair<RendererConfiguration[], TrackSelection[]> selectTracks(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2) throws ExoPlaybackException {
        Parameters parameters = this.parametersReference.get();
        int rendererCount = mappedTrackInfo.getRendererCount();
        TrackSelection.Definition[] selectAllTracks = selectAllTracks(mappedTrackInfo, iArr, iArr2, parameters);
        int i = 0;
        while (true) {
            TrackSelection.Definition definition = null;
            if (i >= rendererCount) {
                break;
            }
            if (parameters.getRendererDisabled(i)) {
                selectAllTracks[i] = null;
            } else {
                TrackGroupArray trackGroups = mappedTrackInfo.getTrackGroups(i);
                if (parameters.hasSelectionOverride(i, trackGroups)) {
                    SelectionOverride selectionOverride = parameters.getSelectionOverride(i, trackGroups);
                    if (selectionOverride != null) {
                        definition = new TrackSelection.Definition(trackGroups.get(selectionOverride.groupIndex), selectionOverride.tracks, selectionOverride.reason, Integer.valueOf(selectionOverride.data));
                    }
                    selectAllTracks[i] = definition;
                }
            }
            i++;
        }
        TrackSelection[] createTrackSelections = this.trackSelectionFactory.createTrackSelections(selectAllTracks, getBandwidthMeter());
        RendererConfiguration[] rendererConfigurationArr = new RendererConfiguration[rendererCount];
        for (int i2 = 0; i2 < rendererCount; i2++) {
            rendererConfigurationArr[i2] = !parameters.getRendererDisabled(i2) && (mappedTrackInfo.getRendererType(i2) == 6 || createTrackSelections[i2] != null) ? RendererConfiguration.DEFAULT : null;
        }
        maybeConfigureRenderersForTunneling(mappedTrackInfo, iArr, rendererConfigurationArr, createTrackSelections, parameters.tunnelingAudioSessionId);
        return Pair.create(rendererConfigurationArr, createTrackSelections);
    }

    @Nullable
    public TrackSelection.Definition selectVideoTrack(TrackGroupArray trackGroupArray, int[][] iArr, int i, Parameters parameters, boolean z) throws ExoPlaybackException {
        TrackSelection.Definition selectAdaptiveVideoTrack = (parameters.forceHighestSupportedBitrate || parameters.forceLowestBitrate || !z) ? null : selectAdaptiveVideoTrack(trackGroupArray, iArr, i, parameters);
        TrackSelection.Definition definition = selectAdaptiveVideoTrack;
        if (selectAdaptiveVideoTrack == null) {
            definition = selectFixedVideoTrack(trackGroupArray, iArr, parameters);
        }
        return definition;
    }

    public void setParameters(Parameters parameters) {
        Assertions.checkNotNull(parameters);
        if (!this.parametersReference.getAndSet(parameters).equals(parameters)) {
            invalidate();
        }
    }

    public void setParameters(ParametersBuilder parametersBuilder) {
        setParameters(parametersBuilder.build());
    }

    @Deprecated
    public final void setRendererDisabled(int i, boolean z) {
        setParameters(buildUponParameters().setRendererDisabled(i, z));
    }

    @Deprecated
    public final void setSelectionOverride(int i, TrackGroupArray trackGroupArray, SelectionOverride selectionOverride) {
        setParameters(buildUponParameters().setSelectionOverride(i, trackGroupArray, selectionOverride));
    }

    @Deprecated
    public void setTunnelingAudioSessionId(int i) {
        setParameters(buildUponParameters().setTunnelingAudioSessionId(i));
    }
}
