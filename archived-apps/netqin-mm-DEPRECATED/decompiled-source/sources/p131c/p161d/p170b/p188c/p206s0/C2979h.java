package p131c.p161d.p170b.p188c.p206s0;

import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.logging.type.LogSeverity;
import java.nio.ByteBuffer;
import p131c.p161d.p170b.p188c.p203g1.C2903u;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.s0.h */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/h.class */
public final class C2979h {

    /* renamed from: a */
    public static final int[] f10722a = {AdError.CACHE_ERROR_CODE, AdError.SERVER_ERROR_CODE, 1920, 1601, 1600, AdError.NO_FILL_ERROR_CODE, 1000, 960, LogSeverity.EMERGENCY_VALUE, LogSeverity.EMERGENCY_VALUE, 480, LogSeverity.WARNING_VALUE, LogSeverity.WARNING_VALUE, RecyclerView.AbstractC0495b0.FLAG_MOVED};

    /* renamed from: c.d.b.c.s0.h$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/s0/h$b.class */
    public static final class C2981b {

        /* renamed from: a */
        public final int f10723a;

        /* renamed from: b */
        public final int f10724b;

        /* renamed from: c */
        public final int f10725c;

        /* renamed from: d */
        public final int f10726d;

        public C2981b(int i, int i2, int i3, int i4, int i5) {
            this.f10724b = i2;
            this.f10723a = i3;
            this.f10725c = i4;
            this.f10726d = i5;
        }
    }

    /* renamed from: a */
    public static int m28304a(C2903u uVar, int i) {
        int i2 = 0;
        while (true) {
            int a = i2 + uVar.m28565a(i);
            if (!uVar.m28554e()) {
                return a;
            }
            i2 = (a + 1) << i;
        }
    }

    /* renamed from: a */
    public static int m28302a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[16];
        int position = byteBuffer.position();
        byteBuffer.get(bArr);
        byteBuffer.position(position);
        return m28305a(new C2903u(bArr)).f10726d;
    }

    /* renamed from: a */
    public static int m28301a(byte[] bArr, int i) {
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
    public static p131c.p161d.p170b.p188c.p206s0.C2979h.C2981b m28305a(p131c.p161d.p170b.p188c.p203g1.C2903u r9) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p188c.p206s0.C2979h.m28305a(c.d.b.c.g1.u):c.d.b.c.s0.h$b");
    }

    /* renamed from: a */
    public static Format m28303a(C2904v vVar, String str, String str2, DrmInitData drmInitData) {
        vVar.m28536f(1);
        return Format.m18698a(str, "audio/ac4", null, -1, -1, 2, ((vVar.m28524r() & 32) >> 5) == 1 ? 48000 : 44100, null, drmInitData, 0, str2);
    }

    /* renamed from: a */
    public static void m28306a(int i, C2904v vVar) {
        vVar.m28542c(7);
        byte[] bArr = vVar.f10530a;
        bArr[0] = (byte) (-84);
        bArr[1] = (byte) 64;
        bArr[2] = (byte) (-1);
        bArr[3] = (byte) (-1);
        bArr[4] = (byte) ((i >> 16) & 255);
        bArr[5] = (byte) ((i >> 8) & 255);
        bArr[6] = (byte) (i & 255);
    }
}
