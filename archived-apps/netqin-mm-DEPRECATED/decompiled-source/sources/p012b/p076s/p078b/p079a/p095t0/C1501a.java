package p012b.p076s.p078b.p079a.p095t0;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
/* renamed from: b.s.b.a.t0.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/t0/a.class */
public final class C1501a {

    /* renamed from: a */
    public final String f6160a;

    /* renamed from: b */
    public final String f6161b;

    /* renamed from: c */
    public final MediaCodecInfo.CodecCapabilities f6162c;

    /* renamed from: d */
    public final boolean f6163d;

    /* renamed from: e */
    public final boolean f6164e;

    /* renamed from: f */
    public final boolean f6165f;

    /* renamed from: g */
    public final boolean f6166g;

    public C1501a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3) {
        C1160a.m34522a(str);
        this.f6160a = str;
        this.f6161b = str2;
        this.f6162c = codecCapabilities;
        this.f6165f = z;
        this.f6163d = !z2 && codecCapabilities != null && m33103a(codecCapabilities);
        if (codecCapabilities != null) {
            m33087e(codecCapabilities);
        }
        this.f6164e = !z3 ? codecCapabilities != null && m33091c(codecCapabilities) : true;
        this.f6166g = C1178m.m34398l(str2);
    }

    /* renamed from: a */
    public static int m33098a(String str, String str2, int i) {
        if (i > 1 || ((C1167d0.f4688a >= 26 && i > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i;
        }
        int i2 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 59);
        sb.append("AssumedMaxChannelAdjustment: ");
        sb.append(str);
        sb.append(", [");
        sb.append(i);
        sb.append(" to ");
        sb.append(i2);
        sb.append("]");
        C1175j.m34414d("MediaCodecInfo", sb.toString());
        return i2;
    }

    /* renamed from: a */
    public static C1501a m33097a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return new C1501a(str, str2, codecCapabilities, false, false, false);
    }

    /* renamed from: a */
    public static C1501a m33096a(String str, String str2, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2) {
        return new C1501a(str, str2, codecCapabilities, false, z, z2);
    }

    /* renamed from: a */
    public static boolean m33103a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return C1167d0.f4688a >= 19 && m33094b(codecCapabilities);
    }

    /* renamed from: a */
    public static boolean m33102a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i, i2) : videoCapabilities.areSizeAndRateSupported(i, i2, d);
    }

    /* renamed from: b */
    public static boolean m33094b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    /* renamed from: c */
    public static boolean m33091c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return C1167d0.f4688a >= 21 && m33089d(codecCapabilities);
    }

    /* renamed from: d */
    public static C1501a m33088d(String str) {
        return new C1501a(str, null, null, true, false, false);
    }

    /* renamed from: d */
    public static boolean m33089d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    /* renamed from: e */
    public static boolean m33087e(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return C1167d0.f4688a >= 21 && m33086f(codecCapabilities);
    }

    /* renamed from: f */
    public static boolean m33086f(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    /* renamed from: a */
    public Point m33105a(int i, int i2) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6162c;
        if (codecCapabilities == null) {
            m33090c("align.caps");
            return null;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m33090c("align.vCaps");
            return null;
        }
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(C1167d0.m34494a(i, widthAlignment) * widthAlignment, C1167d0.m34494a(i2, heightAlignment) * heightAlignment);
    }

    /* renamed from: a */
    public boolean m33106a(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6162c;
        if (codecCapabilities == null) {
            m33090c("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m33090c("channelCount.aCaps");
            return false;
        } else if (m33098a(this.f6160a, this.f6161b, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(33);
            sb.append("channelCount.support, ");
            sb.append(i);
            m33090c(sb.toString());
            return false;
        }
    }

    /* renamed from: a */
    public boolean m33104a(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6162c;
        if (codecCapabilities == null) {
            m33090c("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m33090c("sizeAndRate.vCaps");
            return false;
        } else if (m33102a(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !m33102a(videoCapabilities, i2, i, d)) {
                StringBuilder sb = new StringBuilder(69);
                sb.append("sizeAndRate.support, ");
                sb.append(i);
                sb.append("x");
                sb.append(i2);
                sb.append("x");
                sb.append(d);
                m33090c(sb.toString());
                return false;
            }
            StringBuilder sb2 = new StringBuilder(69);
            sb2.append("sizeAndRate.rotated, ");
            sb2.append(i);
            sb2.append("x");
            sb2.append(i2);
            sb2.append("x");
            sb2.append(d);
            m33092b(sb2.toString());
            return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b9, code lost:
        if (m33095b(r0) != false) goto L_0x00bc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00d1, code lost:
        if (m33106a(r0) != false) goto L_0x00d4;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m33101a(androidx.media2.exoplayer.external.Format r7) throws androidx.media2.exoplayer.external.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            Method dump skipped, instructions count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p095t0.C1501a.m33101a(androidx.media2.exoplayer.external.Format):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r5.f1574u != null) goto L_0x0055;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m33100a(androidx.media2.exoplayer.external.Format r4, androidx.media2.exoplayer.external.Format r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p095t0.C1501a.m33100a(androidx.media2.exoplayer.external.Format, androidx.media2.exoplayer.external.Format, boolean):boolean");
    }

    /* renamed from: a */
    public boolean m33099a(String str) {
        String d;
        MediaCodecInfo.CodecProfileLevel[] a;
        if (str == null || this.f6161b == null || (d = C1178m.m34406d(str)) == null) {
            return true;
        }
        if (!this.f6161b.equals(d)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(d).length());
            sb.append("codec.mime ");
            sb.append(str);
            sb.append(", ");
            sb.append(d);
            m33090c(sb.toString());
            return false;
        }
        Pair<Integer, Integer> b = MediaCodecUtil.m38030b(str);
        if (b == null) {
            return true;
        }
        int intValue = ((Integer) b.first).intValue();
        int intValue2 = ((Integer) b.second).intValue();
        if (!(this.f6166g || intValue == 42)) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m33107a()) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                return true;
            }
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 22 + String.valueOf(d).length());
        sb2.append("codec.profileLevel, ");
        sb2.append(str);
        sb2.append(", ");
        sb2.append(d);
        m33090c(sb2.toString());
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L_0x0014;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.media.MediaCodecInfo.CodecProfileLevel[] m33107a() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.f6162c
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
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p095t0.C1501a.m33107a():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    /* renamed from: b */
    public final void m33092b(String str) {
        String str2 = this.f6160a;
        String str3 = this.f6161b;
        String str4 = C1167d0.f4692e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 25 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("AssumedSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        C1175j.m34420a("MediaCodecInfo", sb.toString());
    }

    /* renamed from: b */
    public boolean m33095b(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f6162c;
        if (codecCapabilities == null) {
            m33090c("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m33090c("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            StringBuilder sb = new StringBuilder(31);
            sb.append("sampleRate.support, ");
            sb.append(i);
            m33090c(sb.toString());
            return false;
        }
    }

    /* renamed from: b */
    public boolean m33093b(Format format) {
        if (this.f6166g) {
            return this.f6163d;
        }
        Pair<Integer, Integer> b = MediaCodecUtil.m38030b(format.f1559f);
        return b != null && ((Integer) b.first).intValue() == 42;
    }

    /* renamed from: c */
    public final void m33090c(String str) {
        String str2 = this.f6160a;
        String str3 = this.f6161b;
        String str4 = C1167d0.f4692e;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length());
        sb.append("NoSupport [");
        sb.append(str);
        sb.append("] [");
        sb.append(str2);
        sb.append(", ");
        sb.append(str3);
        sb.append("] [");
        sb.append(str4);
        sb.append("]");
        C1175j.m34420a("MediaCodecInfo", sb.toString());
    }

    public String toString() {
        return this.f6160a;
    }
}
