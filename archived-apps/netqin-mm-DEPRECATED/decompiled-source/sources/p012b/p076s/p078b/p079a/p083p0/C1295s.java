package p012b.p076s.p078b.p079a.p083p0;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.recyclerview.widget.RecyclerView;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1183o;
/* renamed from: b.s.b.a.p0.s */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/s.class */
public final class C1295s {

    /* renamed from: a */
    public static final int[] f5149a = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};

    /* renamed from: b */
    public static final int[] f5150b = {-1, 8000, 16000, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, 48000, -1, -1};

    /* renamed from: c */
    public static final int[] f5151c = {64, 112, 128, 192, 224, 256, 384, 448, RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, RecyclerView.AbstractC0495b0.FLAG_MOVED, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};

    /* renamed from: a */
    public static int m33842a(ByteBuffer byteBuffer) {
        int i;
        int i2;
        byte b;
        byte b2;
        int position = byteBuffer.position();
        byte b3 = byteBuffer.get(position);
        if (b3 != -2) {
            if (b3 == -1) {
                i = (byteBuffer.get(position + 4) & 7) << 4;
                b2 = byteBuffer.get(position + 7);
            } else if (b3 != 31) {
                i = (byteBuffer.get(position + 4) & 1) << 6;
                b = byteBuffer.get(position + 5);
            } else {
                i = (byteBuffer.get(position + 5) & 7) << 4;
                b2 = byteBuffer.get(position + 6);
            }
            i2 = b2 & 60;
            return (((i2 >> 2) | i) + 1) * 32;
        }
        i = (byteBuffer.get(position + 5) & 1) << 6;
        b = byteBuffer.get(position + 4);
        i2 = b & 252;
        return (((i2 >> 2) | i) + 1) * 32;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a7  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m33841a(byte[] r4) {
        /*
            Method dump skipped, instructions count: 177
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p083p0.C1295s.m33841a(byte[]):int");
    }

    /* renamed from: a */
    public static Format m33840a(byte[] bArr, String str, String str2, DrmInitData drmInitData) {
        C1183o b = m33839b(bArr);
        b.m34376c(60);
        int i = f5149a[b.m34385a(6)];
        int i2 = f5150b[b.m34385a(4)];
        int a = b.m34385a(5);
        int[] iArr = f5151c;
        int i3 = a >= iArr.length ? -1 : (iArr[a] * 1000) / 2;
        b.m34376c(10);
        return Format.m38180a(str, "audio/vnd.dts", (String) null, i3, -1, i + (b.m34385a(2) > 0 ? 1 : 0), i2, (List<byte[]>) null, drmInitData, 0, str2);
    }

    /* renamed from: a */
    public static boolean m33843a(int i) {
        return i == 2147385345 || i == -25230976 || i == 536864768 || i == -14745368;
    }

    /* renamed from: b */
    public static C1183o m33839b(byte[] bArr) {
        if (bArr[0] == Byte.MAX_VALUE) {
            return new C1183o(bArr);
        }
        byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
        if (m33838c(copyOf)) {
            for (int i = 0; i < copyOf.length - 1; i += 2) {
                byte b = copyOf[i];
                int i2 = i + 1;
                copyOf[i] = copyOf[i2];
                copyOf[i2] = b;
            }
        }
        C1183o oVar = new C1183o(copyOf);
        if (copyOf[0] == 31) {
            C1183o oVar2 = new C1183o(copyOf);
            while (oVar2.m34379b() >= 16) {
                oVar2.m34376c(2);
                oVar.m34384a(oVar2.m34385a(14), 14);
            }
        }
        oVar.m34382a(copyOf);
        return oVar;
    }

    /* renamed from: c */
    public static boolean m33838c(byte[] bArr) {
        boolean z = false;
        if (bArr[0] == -2 || bArr[0] == -1) {
            z = true;
        }
        return z;
    }

    /* renamed from: d */
    public static int m33837d(byte[] bArr) {
        int i;
        int i2;
        byte b;
        byte b2;
        byte b3 = bArr[0];
        if (b3 != -2) {
            if (b3 == -1) {
                i2 = (bArr[4] & 7) << 4;
                b2 = bArr[7];
            } else if (b3 != 31) {
                i2 = (bArr[4] & 1) << 6;
                b = bArr[5];
            } else {
                i2 = (bArr[5] & 7) << 4;
                b2 = bArr[6];
            }
            i = b2 & 60;
            return (((i >> 2) | i2) + 1) * 32;
        }
        i2 = (bArr[5] & 1) << 6;
        b = bArr[4];
        i = b & 252;
        return (((i >> 2) | i2) + 1) * 32;
    }
}
