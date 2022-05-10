package p131c.p161d.p170b.p188c.p219x0;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2897r;
/* renamed from: c.d.b.c.x0.e */
/* loaded from: classes-dex2jar.jar:c/d/b/c/x0/e.class */
public final class C3198e {

    /* renamed from: a */
    public final String f11799a;

    /* renamed from: b */
    public final String f11800b;

    /* renamed from: c */
    public final String f11801c;

    /* renamed from: d */
    public final MediaCodecInfo.CodecCapabilities f11802d;

    /* renamed from: e */
    public final boolean f11803e;

    /* renamed from: f */
    public final boolean f11804f;

    /* renamed from: g */
    public final boolean f11805g;

    /* renamed from: h */
    public final boolean f11806h;

    public C3198e(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        C2877e.m28737a(str);
        this.f11799a = str;
        this.f11800b = str2;
        this.f11801c = str3;
        this.f11802d = codecCapabilities;
        this.f11805g = z;
        this.f11803e = !z5 && codecCapabilities != null && m27525a(codecCapabilities);
        if (codecCapabilities != null) {
            m27507e(codecCapabilities);
        }
        this.f11804f = !z6 ? codecCapabilities != null && m27512c(codecCapabilities) : true;
        this.f11806h = C2897r.m28579k(str2);
    }

    /* renamed from: a */
    public static int m27519a(String str, String str2, int i) {
        if (i > 1 || ((C2885h0.f10477a >= 26 && i > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i;
        }
        int i2 = "audio/ac3".equals(str2) ? 6 : "audio/eac3".equals(str2) ? 16 : 30;
        C2894o.m28594d("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + i + " to " + i2 + "]");
        return i2;
    }

    /* renamed from: a */
    public static Point m27524a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(C2885h0.m28686a(i, widthAlignment) * widthAlignment, C2885h0.m28686a(i2, heightAlignment) * heightAlignment);
    }

    /* renamed from: a */
    public static C3198e m27518a(String str, String str2, String str3, MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new C3198e(str, str2, str3, codecCapabilities, false, z, z2, z3, z4, z5);
    }

    /* renamed from: a */
    public static boolean m27525a(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return C2885h0.f10477a >= 19 && m27515b(codecCapabilities);
    }

    /* renamed from: a */
    public static boolean m27523a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Point a = m27524a(videoCapabilities, i, i2);
        int i3 = a.x;
        int i4 = a.y;
        return (d == -1.0d || d <= 0.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, Math.floor(d));
    }

    /* renamed from: b */
    public static boolean m27515b(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    /* renamed from: c */
    public static boolean m27512c(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return C2885h0.f10477a >= 21 && m27509d(codecCapabilities);
    }

    /* renamed from: c */
    public static final boolean m27510c(String str) {
        return !"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(C2885h0.f10478b);
    }

    /* renamed from: d */
    public static C3198e m27508d(String str) {
        return new C3198e(str, null, null, null, true, false, true, false, false, false);
    }

    /* renamed from: d */
    public static boolean m27509d(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    /* renamed from: e */
    public static boolean m27507e(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return C2885h0.f10477a >= 21 && m27506f(codecCapabilities);
    }

    /* renamed from: f */
    public static boolean m27506f(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    /* renamed from: a */
    public Point m27527a(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f11802d;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return m27524a(videoCapabilities, i, i2);
    }

    /* renamed from: a */
    public final void m27520a(String str) {
        C2894o.m28600a("MediaCodecInfo", "AssumedSupport [" + str + "] [" + this.f11799a + ", " + this.f11800b + "] [" + C2885h0.f10481e + "]");
    }

    /* renamed from: a */
    public boolean m27528a(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f11802d;
        if (codecCapabilities == null) {
            m27513b("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m27513b("channelCount.aCaps");
            return false;
        } else if (m27519a(this.f11799a, this.f11800b, audioCapabilities.getMaxInputChannelCount()) >= i) {
            return true;
        } else {
            m27513b("channelCount.support, " + i);
            return false;
        }
    }

    /* renamed from: a */
    public boolean m27526a(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f11802d;
        if (codecCapabilities == null) {
            m27513b("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            m27513b("sizeAndRate.vCaps");
            return false;
        } else if (m27523a(videoCapabilities, i, i2, d)) {
            return true;
        } else {
            if (i >= i2 || !m27510c(this.f11799a) || !m27523a(videoCapabilities, i2, i, d)) {
                m27513b("sizeAndRate.support, " + i + "x" + i2 + "x" + d);
                return false;
            }
            m27520a("sizeAndRate.rotated, " + i + "x" + i2 + "x" + d);
            return true;
        }
    }

    /* renamed from: a */
    public boolean m27522a(Format format) {
        String d;
        MediaCodecInfo.CodecProfileLevel[] a;
        String str = format.f21949f;
        if (str == null || this.f11800b == null || (d = C2897r.m28586d(str)) == null) {
            return true;
        }
        if (!this.f11800b.equals(d)) {
            m27513b("codec.mime " + format.f21949f + ", " + d);
            return false;
        }
        Pair<Integer, Integer> a2 = MediaCodecUtil.m18551a(format);
        if (a2 == null) {
            return true;
        }
        int intValue = ((Integer) a2.first).intValue();
        int intValue2 = ((Integer) a2.second).intValue();
        if (!(this.f11806h || intValue == 42)) {
            return true;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m27529a()) {
            if (codecProfileLevel.profile == intValue && codecProfileLevel.level >= intValue2) {
                return true;
            }
        }
        m27513b("codec.profileLevel, " + format.f21949f + ", " + d);
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        if (r5.f21964u != null) goto L_0x0055;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m27521a(com.google.android.exoplayer2.Format r4, com.google.android.exoplayer2.Format r5, boolean r6) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p219x0.C3198e.m27521a(com.google.android.exoplayer2.Format, com.google.android.exoplayer2.Format, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0011, code lost:
        if (r0 == null) goto L_0x0014;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.media.MediaCodecInfo.CodecProfileLevel[] m27529a() {
        /*
            r2 = this;
            r0 = r2
            android.media.MediaCodecInfo$CodecCapabilities r0 = r0.f11802d
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
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p219x0.C3198e.m27529a():android.media.MediaCodecInfo$CodecProfileLevel[]");
    }

    /* renamed from: b */
    public final void m27513b(String str) {
        C2894o.m28600a("MediaCodecInfo", "NoSupport [" + str + "] [" + this.f11799a + ", " + this.f11800b + "] [" + C2885h0.f10481e + "]");
    }

    /* renamed from: b */
    public boolean m27517b() {
        if (C2885h0.f10477a < 29 || !"video/x-vnd.on2.vp9".equals(this.f11800b)) {
            return false;
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : m27529a()) {
            if (codecProfileLevel.profile == 16384) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public boolean m27516b(int i) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.f11802d;
        if (codecCapabilities == null) {
            m27513b("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            m27513b("sampleRate.aCaps");
            return false;
        } else if (audioCapabilities.isSampleRateSupported(i)) {
            return true;
        } else {
            m27513b("sampleRate.support, " + i);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b3, code lost:
        if (m27516b(r0) != false) goto L_0x00b6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00cb, code lost:
        if (m27528a(r0) != false) goto L_0x00ce;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m27514b(com.google.android.exoplayer2.Format r7) throws com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException {
        /*
            Method dump skipped, instructions count: 212
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p219x0.C3198e.m27514b(com.google.android.exoplayer2.Format):boolean");
    }

    /* renamed from: c */
    public boolean m27511c(Format format) {
        if (this.f11806h) {
            return this.f11803e;
        }
        Pair<Integer, Integer> a = MediaCodecUtil.m18551a(format);
        return a != null && ((Integer) a.first).intValue() == 42;
    }

    public String toString() {
        return this.f11799a;
    }
}
