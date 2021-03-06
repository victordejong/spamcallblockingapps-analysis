package androidx.media2.exoplayer.external;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.AudioManager;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.MimeTypes;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.UUID;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: androidx.media2.exoplayer.external.C */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C.class */
public final class C0463C {
    public static final String ASCII_NAME = "US-ASCII";
    public static final int AUDIOFOCUS_GAIN = 1;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT = 2;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE = 4;
    public static final int AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK = 3;
    public static final int AUDIOFOCUS_NONE = 0;
    public static final int AUDIO_SESSION_ID_UNSET = 0;
    public static final int BITS_PER_BYTE = 8;
    public static final int BUFFER_FLAG_DECODE_ONLY = Integer.MIN_VALUE;
    public static final int BUFFER_FLAG_ENCRYPTED = 1073741824;
    public static final int BUFFER_FLAG_END_OF_STREAM = 4;
    public static final int BUFFER_FLAG_KEY_FRAME = 1;
    public static final int BUFFER_FLAG_LAST_SAMPLE = 536870912;
    public static final int BYTES_PER_FLOAT = 4;
    public static final String CENC_TYPE_cbc1 = "cbc1";
    public static final String CENC_TYPE_cbcs = "cbcs";
    public static final String CENC_TYPE_cenc = "cenc";
    public static final String CENC_TYPE_cens = "cens";
    public static final int COLOR_RANGE_FULL = 1;
    public static final int COLOR_RANGE_LIMITED = 2;
    public static final int COLOR_SPACE_BT2020 = 6;
    public static final int COLOR_SPACE_BT601 = 2;
    public static final int COLOR_SPACE_BT709 = 1;
    public static final int COLOR_TRANSFER_HLG = 7;
    public static final int COLOR_TRANSFER_SDR = 3;
    public static final int COLOR_TRANSFER_ST2084 = 6;
    public static final int CONTENT_TYPE_MOVIE = 3;
    public static final int CONTENT_TYPE_MUSIC = 2;
    public static final int CONTENT_TYPE_SONIFICATION = 4;
    public static final int CONTENT_TYPE_SPEECH = 1;
    public static final int CONTENT_TYPE_UNKNOWN = 0;
    public static final int CRYPTO_MODE_AES_CBC = 2;
    public static final int CRYPTO_MODE_AES_CTR = 1;
    public static final int CRYPTO_MODE_UNENCRYPTED = 0;
    public static final int DATA_TYPE_AD = 6;
    public static final int DATA_TYPE_CUSTOM_BASE = 10000;
    public static final int DATA_TYPE_DRM = 3;
    public static final int DATA_TYPE_MANIFEST = 4;
    public static final int DATA_TYPE_MEDIA = 1;
    public static final int DATA_TYPE_MEDIA_INITIALIZATION = 2;
    public static final int DATA_TYPE_MEDIA_PROGRESSIVE_LIVE = 7;
    public static final int DATA_TYPE_TIME_SYNCHRONIZATION = 5;
    public static final int DATA_TYPE_UNKNOWN = 0;
    public static final int DEFAULT_AUDIO_BUFFER_SIZE = 3538944;
    public static final int DEFAULT_BUFFER_SEGMENT_SIZE = 65536;
    public static final int DEFAULT_CAMERA_MOTION_BUFFER_SIZE = 131072;
    public static final int DEFAULT_METADATA_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MUXED_BUFFER_SIZE = 16777216;
    public static final int DEFAULT_TEXT_BUFFER_SIZE = 131072;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE = 13107200;
    public static final int ENCODING_AC3 = 5;
    public static final int ENCODING_AC4 = 17;
    public static final int ENCODING_DOLBY_TRUEHD = 14;
    public static final int ENCODING_DTS = 7;
    public static final int ENCODING_DTS_HD = 8;
    public static final int ENCODING_E_AC3 = 6;
    public static final int ENCODING_INVALID = 0;
    public static final int ENCODING_PCM_16BIT = 2;
    public static final int ENCODING_PCM_24BIT = Integer.MIN_VALUE;
    public static final int ENCODING_PCM_32BIT = 1073741824;
    public static final int ENCODING_PCM_8BIT = 3;
    public static final int ENCODING_PCM_A_LAW = 536870912;
    public static final int ENCODING_PCM_FLOAT = 4;
    public static final int ENCODING_PCM_MU_LAW = 268435456;
    public static final int FLAG_AUDIBILITY_ENFORCED = 1;
    public static final int INDEX_UNSET = -1;
    public static final String LANGUAGE_UNDETERMINED = "und";
    public static final int LENGTH_UNSET = -1;
    public static final long MICROS_PER_SECOND = 1000000;
    public static final int MSG_CUSTOM_BASE = 10000;
    public static final int MSG_SET_AUDIO_ATTRIBUTES = 3;
    public static final int MSG_SET_AUX_EFFECT_INFO = 5;
    public static final int MSG_SET_CAMERA_MOTION_LISTENER = 7;
    public static final int MSG_SET_SCALING_MODE = 4;
    public static final int MSG_SET_SURFACE = 1;
    public static final int MSG_SET_VIDEO_FRAME_METADATA_LISTENER = 6;
    public static final int MSG_SET_VOLUME = 2;
    public static final long NANOS_PER_SECOND = 1000000000;
    public static final int NETWORK_TYPE_2G = 3;
    public static final int NETWORK_TYPE_3G = 4;
    public static final int NETWORK_TYPE_4G = 5;
    public static final int NETWORK_TYPE_CELLULAR_UNKNOWN = 6;
    public static final int NETWORK_TYPE_ETHERNET = 7;
    public static final int NETWORK_TYPE_OFFLINE = 1;
    public static final int NETWORK_TYPE_OTHER = 8;
    public static final int NETWORK_TYPE_UNKNOWN = 0;
    public static final int NETWORK_TYPE_WIFI = 2;
    public static final int PERCENTAGE_UNSET = -1;
    public static final int POSITION_UNSET = -1;
    public static final int PRIORITY_DOWNLOAD = -1000;
    public static final int PRIORITY_PLAYBACK = 0;
    public static final int PROJECTION_CUBEMAP = 2;
    public static final int PROJECTION_EQUIRECTANGULAR = 1;
    public static final int PROJECTION_MESH = 3;
    public static final int PROJECTION_RECTANGULAR = 0;
    public static final int RESULT_BUFFER_READ = -4;
    public static final int RESULT_END_OF_INPUT = -1;
    public static final int RESULT_FORMAT_READ = -5;
    public static final int RESULT_MAX_LENGTH_EXCEEDED = -2;
    public static final int RESULT_NOTHING_READ = -3;
    public static final int ROLE_FLAG_ALTERNATE = 2;
    public static final int ROLE_FLAG_CAPTION = 64;
    public static final int ROLE_FLAG_COMMENTARY = 8;
    public static final int ROLE_FLAG_DESCRIBES_MUSIC_AND_SOUND = 1024;
    public static final int ROLE_FLAG_DESCRIBES_VIDEO = 512;
    public static final int ROLE_FLAG_DUB = 16;
    public static final int ROLE_FLAG_EASY_TO_READ = 8192;
    public static final int ROLE_FLAG_EMERGENCY = 32;
    public static final int ROLE_FLAG_ENHANCED_DIALOG_INTELLIGIBILITY = 2048;
    public static final int ROLE_FLAG_MAIN = 1;
    public static final int ROLE_FLAG_SIGN = 256;
    public static final int ROLE_FLAG_SUBTITLE = 128;
    public static final int ROLE_FLAG_SUPPLEMENTARY = 4;
    public static final int ROLE_FLAG_TRANSCRIBES_DIALOG = 4096;
    public static final String SANS_SERIF_NAME = "sans-serif";
    public static final int SELECTION_FLAG_AUTOSELECT = 4;
    public static final int SELECTION_FLAG_DEFAULT = 1;
    public static final int SELECTION_FLAG_FORCED = 2;
    public static final int SELECTION_REASON_ADAPTIVE = 3;
    public static final int SELECTION_REASON_CUSTOM_BASE = 10000;
    public static final int SELECTION_REASON_INITIAL = 1;
    public static final int SELECTION_REASON_MANUAL = 2;
    public static final int SELECTION_REASON_TRICK_PLAY = 4;
    public static final int SELECTION_REASON_UNKNOWN = 0;
    public static final String SERIF_NAME = "serif";
    public static final int STEREO_MODE_LEFT_RIGHT = 2;
    public static final int STEREO_MODE_MONO = 0;
    public static final int STEREO_MODE_STEREO_MESH = 3;
    public static final int STEREO_MODE_TOP_BOTTOM = 1;
    public static final int STREAM_TYPE_ALARM = 4;
    public static final int STREAM_TYPE_DEFAULT = 3;
    public static final int STREAM_TYPE_DTMF = 8;
    public static final int STREAM_TYPE_MUSIC = 3;
    public static final int STREAM_TYPE_NOTIFICATION = 5;
    public static final int STREAM_TYPE_RING = 2;
    public static final int STREAM_TYPE_SYSTEM = 1;
    public static final int STREAM_TYPE_USE_DEFAULT = Integer.MIN_VALUE;
    public static final int STREAM_TYPE_VOICE_CALL = 0;
    public static final long TIME_END_OF_SOURCE = Long.MIN_VALUE;
    public static final long TIME_UNSET = -9223372036854775807L;
    public static final int TRACK_TYPE_AUDIO = 1;
    public static final int TRACK_TYPE_CAMERA_MOTION = 5;
    public static final int TRACK_TYPE_CUSTOM_BASE = 10000;
    public static final int TRACK_TYPE_DEFAULT = 0;
    public static final int TRACK_TYPE_METADATA = 4;
    public static final int TRACK_TYPE_NONE = 6;
    public static final int TRACK_TYPE_TEXT = 3;
    public static final int TRACK_TYPE_UNKNOWN = -1;
    public static final int TRACK_TYPE_VIDEO = 2;
    public static final int TYPE_DASH = 0;
    public static final int TYPE_HLS = 2;
    public static final int TYPE_OTHER = 3;
    public static final int TYPE_SS = 1;
    public static final int USAGE_ALARM = 4;
    public static final int USAGE_ASSISTANCE_ACCESSIBILITY = 11;
    public static final int USAGE_ASSISTANCE_NAVIGATION_GUIDANCE = 12;
    public static final int USAGE_ASSISTANCE_SONIFICATION = 13;
    public static final int USAGE_ASSISTANT = 16;
    public static final int USAGE_GAME = 14;
    public static final int USAGE_MEDIA = 1;
    public static final int USAGE_NOTIFICATION = 5;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_DELAYED = 9;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_INSTANT = 8;
    public static final int USAGE_NOTIFICATION_COMMUNICATION_REQUEST = 7;
    public static final int USAGE_NOTIFICATION_EVENT = 10;
    public static final int USAGE_NOTIFICATION_RINGTONE = 6;
    public static final int USAGE_UNKNOWN = 0;
    public static final int USAGE_VOICE_COMMUNICATION = 2;
    public static final int USAGE_VOICE_COMMUNICATION_SIGNALLING = 3;
    public static final String UTF16LE_NAME = "UTF-16LE";
    public static final String UTF16_NAME = "UTF-16";
    public static final String UTF8_NAME = "UTF-8";
    public static final int VIDEO_SCALING_MODE_DEFAULT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING = 2;
    public static final UUID UUID_NIL = new UUID(0, 0);
    public static final UUID COMMON_PSSH_UUID = new UUID(1186680826959645954L, -5988876978535335093L);
    public static final UUID CLEARKEY_UUID = new UUID(-2129748144642739255L, 8654423357094679310L);
    public static final UUID WIDEVINE_UUID = new UUID(-1301668207276963122L, -6645017420763422227L);
    public static final UUID PLAYREADY_UUID = new UUID(-7348484286925749626L, -6083546864340672619L);

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$AudioContentType */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$AudioContentType.class */
    public @interface AudioContentType {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$AudioFlags */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$AudioFlags.class */
    public @interface AudioFlags {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$AudioFocusGain */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$AudioFocusGain.class */
    public @interface AudioFocusGain {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$AudioUsage */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$AudioUsage.class */
    public @interface AudioUsage {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$BufferFlags */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$BufferFlags.class */
    public @interface BufferFlags {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$ColorRange */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$ColorRange.class */
    public @interface ColorRange {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$ColorSpace */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$ColorSpace.class */
    public @interface ColorSpace {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$ColorTransfer */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$ColorTransfer.class */
    public @interface ColorTransfer {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$ContentType */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$ContentType.class */
    public @interface ContentType {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$CryptoMode */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$CryptoMode.class */
    public @interface CryptoMode {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$Encoding */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$Encoding.class */
    public @interface Encoding {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$NetworkType */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$NetworkType.class */
    public @interface NetworkType {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$PcmEncoding */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$PcmEncoding.class */
    public @interface PcmEncoding {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$Projection */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$Projection.class */
    public @interface Projection {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$RoleFlags */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$RoleFlags.class */
    public @interface RoleFlags {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$SelectionFlags */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$SelectionFlags.class */
    public @interface SelectionFlags {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$StereoMode */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$StereoMode.class */
    public @interface StereoMode {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$StreamType */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$StreamType.class */
    public @interface StreamType {
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: androidx.media2.exoplayer.external.C$VideoScalingMode */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/C$VideoScalingMode.class */
    public @interface VideoScalingMode {
    }

    @TargetApi(21)
    public static int generateAudioSessionIdV21(Context context) {
        return ((AudioManager) context.getSystemService(MimeTypes.BASE_TYPE_AUDIO)).generateAudioSessionId();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long msToUs(long r5) {
        /*
            r0 = r5
            r7 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x001d
            r0 = r5
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0017
            r0 = r5
            r7 = r0
            goto L_0x001d
        L_0x0017:
            r0 = r5
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            r7 = r0
        L_0x001d:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.C0463C.msToUs(long):long");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long usToMs(long r5) {
        /*
            r0 = r5
            r7 = r0
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x001d
            r0 = r5
            r1 = -9223372036854775808
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0017
            r0 = r5
            r7 = r0
            goto L_0x001d
        L_0x0017:
            r0 = r5
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 / r1
            r7 = r0
        L_0x001d:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.C0463C.usToMs(long):long");
    }
}
