package p012b.p076s.p078b.p079a.p086s0.p092w;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i;
/* renamed from: b.s.b.a.s0.w.h */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/h.class */
public final class C1431h extends AbstractC1432i {

    /* renamed from: o */
    public static final byte[] f5771o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: n */
    public boolean f5772n;

    /* renamed from: b */
    public static boolean m33330b(C1184p pVar) {
        int a = pVar.m34372a();
        byte[] bArr = f5771o;
        if (a < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        pVar.m34366a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, f5771o);
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: a */
    public long mo33312a(C1184p pVar) {
        return m33324b(m33331a(pVar.f4738a));
    }

    /* renamed from: a */
    public final long m33331a(byte[] bArr) {
        int i;
        int i2;
        int i3 = bArr[0] & 255;
        int i4 = i3 & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1) {
                i = 2;
                if (i4 != 2) {
                    i = bArr[1] & 63;
                }
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        return i * (i5 >= 16 ? 2500 << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2);
    }

    /* renamed from: a */
    public final void m33332a(List<byte[]> list, int i) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i * 1000000000) / 48000).array());
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: a */
    public void mo33309a(boolean z) {
        super.mo33309a(z);
        if (z) {
            this.f5772n = false;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.p092w.AbstractC1432i
    /* renamed from: a */
    public boolean mo33310a(C1184p pVar, long j, AbstractC1432i.C1434b bVar) {
        boolean z = true;
        if (!this.f5772n) {
            byte[] copyOf = Arrays.copyOf(pVar.f4738a, pVar.m34361d());
            byte b = copyOf[9];
            byte b2 = copyOf[11];
            byte b3 = copyOf[10];
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(copyOf);
            m33332a(arrayList, ((b2 & 255) << 8) | (b3 & 255));
            m33332a(arrayList, 3840);
            bVar.f5786a = Format.m38180a((String) null, "audio/opus", (String) null, -1, -1, b & 255, 48000, arrayList, (DrmInitData) null, 0, (String) null);
            this.f5772n = true;
            return true;
        }
        if (pVar.m34357f() != 1332770163) {
            z = false;
        }
        pVar.m34358e(0);
        return z;
    }
}
