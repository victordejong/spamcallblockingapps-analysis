package p131c.p161d.p170b.p188c.p210w0.p216w;

import com.google.android.exoplayer2.Format;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
import p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i;
/* renamed from: c.d.b.c.w0.w.h */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/h.class */
public final class C3124h extends AbstractC3125i {

    /* renamed from: o */
    public static final byte[] f11411o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* renamed from: n */
    public boolean f11412n;

    /* renamed from: b */
    public static boolean m27761b(C2904v vVar) {
        int a = vVar.m28552a();
        byte[] bArr = f11411o;
        if (a < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        vVar.m28546a(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, f11411o);
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: a */
    public long mo27743a(C2904v vVar) {
        return m27755b(m27762a(vVar.f10530a));
    }

    /* renamed from: a */
    public final long m27762a(byte[] bArr) {
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
    public final void m27763a(List<byte[]> list, int i) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((i * 1000000000) / 48000).array());
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: a */
    public void mo27740a(boolean z) {
        super.mo27740a(z);
        if (z) {
            this.f11412n = false;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p210w0.p216w.AbstractC3125i
    /* renamed from: a */
    public boolean mo27741a(C2904v vVar, long j, AbstractC3125i.C3127b bVar) {
        boolean z = true;
        if (!this.f11412n) {
            byte[] copyOf = Arrays.copyOf(vVar.f10530a, vVar.m28541d());
            byte b = copyOf[9];
            byte b2 = copyOf[11];
            byte b3 = copyOf[10];
            ArrayList arrayList = new ArrayList(3);
            arrayList.add(copyOf);
            m27763a(arrayList, ((b2 & 255) << 8) | (b3 & 255));
            m27763a(arrayList, 3840);
            bVar.f11426a = Format.m18698a(null, "audio/opus", null, -1, -1, b & 255, 48000, arrayList, null, 0, null);
            this.f11412n = true;
            return true;
        }
        if (vVar.m28535g() != 1332770163) {
            z = false;
        }
        vVar.m28538e(0);
        return z;
    }
}
