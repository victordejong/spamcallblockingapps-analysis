package p012b.p076s.p078b.p079a.p086s0.p093x;

import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
/* renamed from: b.s.b.a.s0.x.t */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/x/t.class */
public final class C1485t {

    /* renamed from: a */
    public final int f6095a;

    /* renamed from: b */
    public boolean f6096b;

    /* renamed from: c */
    public boolean f6097c;

    /* renamed from: d */
    public byte[] f6098d;

    /* renamed from: e */
    public int f6099e;

    public C1485t(int i, int i2) {
        this.f6095a = i;
        byte[] bArr = new byte[i2 + 3];
        this.f6098d = bArr;
        bArr[2] = (byte) 1;
    }

    /* renamed from: a */
    public void m33160a(byte[] bArr, int i, int i2) {
        if (this.f6096b) {
            int i3 = i2 - i;
            byte[] bArr2 = this.f6098d;
            int length = bArr2.length;
            int i4 = this.f6099e;
            if (length < i4 + i3) {
                this.f6098d = Arrays.copyOf(bArr2, (i4 + i3) * 2);
            }
            System.arraycopy(bArr, i, this.f6098d, this.f6099e, i3);
            this.f6099e += i3;
        }
    }

    /* renamed from: a */
    public boolean m33162a() {
        return this.f6097c;
    }

    /* renamed from: a */
    public boolean m33161a(int i) {
        if (!this.f6096b) {
            return false;
        }
        this.f6099e -= i;
        this.f6096b = false;
        this.f6097c = true;
        return true;
    }

    /* renamed from: b */
    public void m33159b() {
        this.f6096b = false;
        this.f6097c = false;
    }

    /* renamed from: b */
    public void m33158b(int i) {
        boolean z = true;
        C1160a.m34518b(!this.f6096b);
        if (i != this.f6095a) {
            z = false;
        }
        this.f6096b = z;
        if (z) {
            this.f6099e = 3;
            this.f6097c = false;
        }
    }
}
