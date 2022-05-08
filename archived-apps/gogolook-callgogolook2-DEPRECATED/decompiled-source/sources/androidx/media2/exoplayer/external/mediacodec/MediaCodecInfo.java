package androidx.media2.exoplayer.external.mediacodec;

import android.annotation.TargetApi;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.util.Assertions;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.Util;
import gogolook.callgogolook2.gson.UserProfile;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/mediacodec/MediaCodecInfo.class */
public final class MediaCodecInfo {
    public static final int MAX_SUPPORTED_INSTANCES_UNKNOWN = -1;
    public static final String TAG = "MediaCodecInfo";
    public final boolean adaptive;
    @Nullable
    public final MediaCodecInfo.CodecCapabilities capabilities;
    public final boolean isVideo;
    @Nullable
    public final String mimeType;
    public final String name;
    public final boolean passthrough;
    public final boolean secure;
    public final boolean tunneling;

    public MediaCodecInfo(String str, @Nullable String str2, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3) {
        this.name = (String) Assertions.checkNotNull(str);
        this.mimeType = str2;
        this.capabilities = codecCapabilities;
        this.passthrough = z;
        this.adaptive = !z2 && codecCapabilities != null && isAdaptive(codecCapabilities);
        this.tunneling = codecCapabilities != null && isTunneling(codecCapabilities);
        this.secure = !z3 ? codecCapabilities != null && isSecure(codecCapabilities) : true;
        this.isVideo = MimeTypes.isVideo(str2);
    }

    public static int adjustMaxInputChannelCount(String str, String str2, int i) {
        if (i > 1 || ((Util.SDK_INT >= 26 && i > 0) || MimeTypes.AUDIO_MPEG.equals(str2) || MimeTypes.AUDIO_AMR_NB.equals(str2) || MimeTypes.AUDIO_AMR_WB.equals(str2) || MimeTypes.AUDIO_AAC.equals(str2) || MimeTypes.AUDIO_VORBIS.equals(str2) || MimeTypes.AUDIO_OPUS.equals(str2) || MimeTypes.AUDIO_RAW.equals(str2) || MimeTypes.AUDIO_FLAC.equals(str2) || MimeTypes.AUDIO_ALAW.equals(str2) || MimeTypes.AUDIO_MLAW.equals(str2) || MimeTypes.AUDIO_MSGSM.equals(str2))) {
            return i;
        }
        int i2 = MimeTypes.AUDIO_AC3.equals(str2) ? 6 : MimeTypes.AUDIO_E_AC3.equals(str2) ? 16 : 30;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("AssumedMaxChannelAdjustment: ");
        sb.append(str);
        sb.append(", [");
        sb.append(i);
        sb.append(" to ");
        sb.append(i2);
        sb.append("]");
        Log.m37483w(TAG, sb.toString());
        return i2;
    }

    @TargetApi(21)
    public static boolean areSizeAndRateSupportedV21(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    @TargetApi(23)
    public static int getMaxSupportedInstancesV23(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.getMaxSupportedInstances();
    }

    public static boolean isAdaptive(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return Util.SDK_INT >= 19 && isAdaptiveV19(codecCapabilities);
    }

    @TargetApi(19)
    public static boolean isAdaptiveV19(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    public static boolean isSecure(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return Util.SDK_INT >= 21 && isSecureV21(codecCapabilities);
    }

    @TargetApi(21)
    public static boolean isSecureV21(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    public static boolean isTunneling(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return Util.SDK_INT >= 21 && isTunnelingV21(codecCapabilities);
    }

    @TargetApi(21)
    public static boolean isTunnelingV21(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void logAssumedSupport(String str) {
        String str2 = this.name;
        String str3 = this.mimeType;
        String str4 = Util.DEVICE_DEBUG_INFO;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("AssumedSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        Log.m37489d(TAG, sb.toString());
    }

    private void logNoSupport(String str) {
        String str2 = this.name;
        String str3 = this.mimeType;
        String str4 = Util.DEVICE_DEBUG_INFO;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(UserProfile.CARD_CATE_SEPARATOR);
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        Log.m37489d(TAG, sb.toString());
    }

    public static MediaCodecInfo newInstance(String str, String str2, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return new MediaCodecInfo(str, str2, codecCapabilities, false, false, false);
    }

    public static MediaCodecInfo newInstance(String str, String str2, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new MediaCodecInfo(str, str2, codecCapabilities, false, z, z2);
    }

    public static MediaCodecInfo newPassthroughInstance(String str) {
        return new MediaCodecInfo(str, null, null, true, false, false);
    }

    @TargetApi(21)
    public Point alignVideoSizeV21(int i, int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            logNoSupport("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(Util.ceilDivide(i, widthAlignment) * widthAlignment, Util.ceilDivide(i2, heightAlignment) * heightAlignment);
    }

    public int getMaxSupportedInstances() {
        MediaCodecInfo.CodecCapabilities codecCapabilities;
        return (Util.SDK_INT < 23 || (codecCapabilities = this.capabilities) == null) ? -1 : getMaxSupportedInstancesV23(codecCapabilities);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L_0x0014;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.media.MediaCodecInfo.CodecProfileLevel[] getProfileLevels() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.capabilities
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0014
            r0 = r3
            android.media.MediaCodecInfo$CodecProfileLevel[] r0 = r0.profileLevels
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0019
        L_0x0014:
            r0 = 0
            android.media.MediaCodecInfo$CodecProfileLevel[] r0 = new android.media.MediaCodecInfo.CodecProfileLevel[r0]
            r3 = r0
        L_0x0019:
            r0 = r3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecInfo.getProfileLevels():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    @TargetApi(21)
    public boolean isAudioChannelCountSupportedV21(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            logNoSupport("channelCount.aCaps");
            return false;
        } else if (adjustMaxInputChannelCount(this.name, this.mimeType, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(33);
            sb.append("channelCount.support, ");
            sb.append(i);
            logNoSupport(sb.toString());
            return false;
        }
    }

    @TargetApi(21)
    public boolean isAudioSampleRateSupportedV21(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            logNoSupport("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(31);
            sb.append("sampleRate.support, ");
            sb.append(i);
            logNoSupport(sb.toString());
            return false;
        }
    }

    public boolean isCodecSupported(String str) {
        String mediaMimeType;
        MediaCodecInfo.CodecProfileLevel[] profileLevels;
        if (str == null || this.mimeType == null || (mediaMimeType = MimeTypes.getMediaMimeType(str)) == null) {
            return true;
        }
        if (!this.mimeType.equals(mediaMimeType)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(mediaMimeType).length());
            sb.append("codec.mime ");
            sb.append(str);
            sb.append(UserProfile.CARD_CATE_SEPARATOR);
            sb.append(mediaMimeType);
            logNoSupport(sb.toString());
            return false;
        }
        Pair<Integer, Integer> codecProfileAndLevel = MediaCodecUtil.getCodecProfileAndLevel(str);
        if (codecProfileAndLevel == null) {
            return true;
        }
        int intValue = ((Integer) codecProfileAndLevel.first).intValue();
        int intValue2 = ((Integer) codecProfileAndLevel.second).intValue();
        if (!(this.isVideo || intValue == 42)) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : getProfileLevels()) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                return true;
            }
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 22 + String.valueOf(mediaMimeType).length());
        sb2.append("codec.profileLevel, ");
        sb2.append(str);
        sb2.append(UserProfile.CARD_CATE_SEPARATOR);
        sb2.append(mediaMimeType);
        logNoSupport(sb2.toString());
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00bb, code lost:
        if (isAudioSampleRateSupportedV21(r0) != false) goto L_0x00be;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d3, code lost:
        if (isAudioChannelCountSupportedV21(r0) != false) goto L_0x00d6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isFormatSupported(androidx.media2.exoplayer.external.Format r7) throws androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecInfo.isFormatSupported(androidx.media2.exoplayer.external.Format):boolean");
    }

    public boolean isSeamlessAdaptationSupported(Format format) {
        if (this.isVideo) {
            return this.adaptive;
        }
        Pair<Integer, Integer> codecProfileAndLevel = MediaCodecUtil.getCodecProfileAndLevel(format.codecs);
        return codecProfileAndLevel != null && ((Integer) codecProfileAndLevel.first).intValue() == 42;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r5.colorInfo != null) goto L_0x0055;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean isSeamlessAdaptationSupported(androidx.media2.exoplayer.external.Format r4, androidx.media2.exoplayer.external.Format r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.mediacodec.MediaCodecInfo.isSeamlessAdaptationSupported(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.Format, boolean):boolean");
    }

    @TargetApi(21)
    public boolean isVideoSizeAndRateSupportedV21(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            logNoSupport("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            logNoSupport("sizeAndRate.vCaps");
            return false;
        } else if (areSizeAndRateSupportedV21(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !areSizeAndRateSupportedV21(videoCapabilities, i2, i, d)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.support, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                logNoSupport(sb.toString());
                return false;
            }
            StringBuilder sb2 = new StringBuilder(69);
            sb2.append("sizeAndRate.rotated, ");
            sb2.append(i);
            sb2.append("x");
            sb2.append(i2);
            sb2.append("x");
            sb2.append(d);
            logAssumedSupport(sb2.toString());
            return true;
        }
    }

    public String toString() {
        return this.name;
    }
}
