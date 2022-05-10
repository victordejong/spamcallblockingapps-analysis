package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import com.google.logging.type.LogSeverity;
import java.nio.ByteBuffer;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.p0.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/b.class */
public final class C1268b {

    /* renamed from: a */
    public static final int[] f5057a = {AdError.CACHE_ERROR_CODE, AdError.SERVER_ERROR_CODE, 1920, 1601, 1600, AdError.NO_FILL_ERROR_CODE, 1000, 960, LogSeverity.EMERGENCY_VALUE, LogSeverity.EMERGENCY_VALUE, 480, LogSeverity.WARNING_VALUE, LogSeverity.WARNING_VALUE, RecyclerView.AbstractC0495b0.FLAG_MOVED};

    /* renamed from: b.s.b.a.p0.b$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/p0/b$b.class */
    public static final class C1270b {

        /* renamed from: a */
        public final int f5058a;

        /* renamed from: b */
        public final int f5059b;

        /* renamed from: c */
        public final int f5060c;

        /* renamed from: d */
        public final int f5061d;

        public C1270b(int i, int i2, int i3, int i4, int i5) {
            this.f5059b = i2;
            this.f5058a = i3;
            this.f5060c = i4;
            this.f5061d = i5;
        }
    }

    /* renamed from: a */
    public static int m33939a(C1183o oVar, int i) {
        int i2 = 0;
        while (true) {
            int a = i2 + oVar.m34385a(i);
            if (!oVar.m34374e()) {
                return a;
            }
            i2 = (a + 1) << i;
        }
    }

    /* renamed from: a */
    public static int m33937a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return m33940a(new C1183o(bArr)).f5061d;
    }

    /* renamed from: a */
    public static int m33936a(byte[] bArr, int i) {
        int i2 = 7;
        if (bArr.length < 7) {
            return -1;
        }
        int i3 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        if (i3 == 65535) {
            i3 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
        } else {
            i2 = 4;
        }
        int i4 = i2;
        if (i == 44097) {
            i4 = i2 + 2;
        }
        return i3 + i4;
    }

    /* renamed from: a */
    public static Format m33938a(C1184p pVar, String str, String str2, DrmInitData drmInitData) {
        pVar.m34356f(1);
        return Format.m38180a(str, "audio/ac4", (String) null, -1, -1, 2, ((pVar.m34344r() & 32) >> 5) == 1 ? 48000 : 44100, (List<byte[]>) null, drmInitData, 0, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00de, code lost:
        if (r0 == 11) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00f2, code lost:
        if (r0 == 11) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0105, code lost:
        if (r0 == 8) goto L_0x010e;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p012b.p076s.p078b.p079a.p083p0.C1268b.C1270b m33940a(p012b.p076s.p078b.p079a.p080a1.C1183o r9) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p083p0.C1268b.m33940a(b.s.b.a.a1.o):b.s.b.a.p0.b$b");
    }

    /* renamed from: a */
    public static void m33941a(int i, C1184p pVar) {
        pVar.m34362c(7);
        byte[] bArr = pVar.f4738a;
        bArr[0] = (byte) (-84);
        bArr[1] = (byte) 64;
        bArr[2] = (byte) (-1);
        bArr[3] = (byte) (-1);
        bArr[4] = (byte) ((i >> 16) & 255);
        bArr[5] = (byte) ((i >> 8) & 255);
        bArr[6] = (byte) (i & 255);
    }
}
