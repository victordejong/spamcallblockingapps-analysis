package p081h.p119d.p120a.p122q;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* renamed from: h.d.a.q.d */
/* loaded from: classes-dex2jar.jar:h/d/a/q/d.class */
public class C5800d {

    /* renamed from: b */
    public ByteBuffer f14593b;

    /* renamed from: c */
    public C5799c f14594c;

    /* renamed from: a */
    public final byte[] f14592a = new byte[256];

    /* renamed from: d */
    public int f14595d = 0;

    /* renamed from: a */
    public C5800d m24358a(byte[] bArr) {
        m24346m();
        if (bArr != null) {
            this.f14593b = ByteBuffer.wrap(bArr);
            this.f14593b.rewind();
            this.f14593b.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f14593b = null;
            this.f14594c.f14580b = 2;
        }
        return this;
    }

    /* renamed from: a */
    public void m24360a() {
        this.f14593b = null;
        this.f14594c = null;
    }

    /* renamed from: a */
    public final int[] m24359a(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.f14593b.get(bArr);
            iArr = null;
            int[] iArr2 = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (true) {
                iArr = iArr2;
                if (i2 >= i) {
                    break;
                }
                int i4 = i3 + 1;
                byte b = bArr[i3];
                int i5 = i4 + 1;
                iArr2[i2] = ((b & 255) << 16) | (-16777216) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                i3 = i5 + 1;
                i2++;
            }
        } catch (BufferUnderflowException e) {
            Log.isLoggable("GifHeaderParser", 3);
            this.f14594c.f14580b = 1;
        }
        return iArr;
    }

    /* renamed from: b */
    public final boolean m24357b() {
        return this.f14594c.f14580b != 0;
    }

    /* renamed from: c */
    public C5799c m24356c() {
        if (this.f14593b == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        } else if (m24357b()) {
            return this.f14594c;
        } else {
            m24350i();
            if (!m24357b()) {
                m24352g();
                C5799c cVar = this.f14594c;
                if (cVar.f14581c < 0) {
                    cVar.f14580b = 1;
                }
            }
            return this.f14594c;
        }
    }

    /* renamed from: d */
    public final int m24355d() {
        int i;
        try {
            i = this.f14593b.get() & 255;
        } catch (Exception e) {
            this.f14594c.f14580b = 1;
            i = 0;
        }
        return i;
    }

    /* renamed from: e */
    public final void m24354e() {
        this.f14594c.f14582d.f14568a = m24347l();
        this.f14594c.f14582d.f14569b = m24347l();
        this.f14594c.f14582d.f14570c = m24347l();
        this.f14594c.f14582d.f14571d = m24347l();
        int d = m24355d();
        boolean z = false;
        boolean z2 = (d & 128) != 0;
        int pow = (int) Math.pow(2.0d, (d & 7) + 1);
        C5798b bVar = this.f14594c.f14582d;
        if ((d & 64) != 0) {
            z = true;
        }
        bVar.f14572e = z;
        if (z2) {
            this.f14594c.f14582d.f14578k = m24359a(pow);
        } else {
            this.f14594c.f14582d.f14578k = null;
        }
        this.f14594c.f14582d.f14577j = this.f14593b.position();
        m24344o();
        if (!m24357b()) {
            C5799c cVar = this.f14594c;
            cVar.f14581c++;
            cVar.f14583e.add(cVar.f14582d);
        }
    }

    /* renamed from: f */
    public final int m24353f() {
        this.f14595d = m24355d();
        int i = 0;
        int i2 = 0;
        if (this.f14595d > 0) {
            int i3 = 0;
            while (true) {
                i = i2;
                try {
                    if (i2 >= this.f14595d) {
                        break;
                    }
                    i3 = this.f14595d - i2;
                    this.f14593b.get(this.f14592a, i2, i3);
                    i2 += i3;
                } catch (Exception e) {
                    if (Log.isLoggable("GifHeaderParser", 3)) {
                        String str = "Error Reading Block n: " + i2 + " count: " + i3 + " blockSize: " + this.f14595d;
                    }
                    this.f14594c.f14580b = 1;
                    i = i2;
                }
            }
        }
        return i;
    }

    /* renamed from: g */
    public final void m24352g() {
        boolean z = false;
        while (!z && !m24357b()) {
            int d = m24355d();
            if (d == 33) {
                int d2 = m24355d();
                if (d2 == 1) {
                    m24345n();
                } else if (d2 == 249) {
                    this.f14594c.f14582d = new C5798b();
                    m24351h();
                } else if (d2 == 254) {
                    m24345n();
                } else if (d2 != 255) {
                    m24345n();
                } else {
                    m24353f();
                    String str = "";
                    for (int i = 0; i < 11; i++) {
                        str = str + ((char) this.f14592a[i]);
                    }
                    if (str.equals("NETSCAPE2.0")) {
                        m24348k();
                    } else {
                        m24345n();
                    }
                }
            } else if (d == 44) {
                C5799c cVar = this.f14594c;
                if (cVar.f14582d == null) {
                    cVar.f14582d = new C5798b();
                }
                m24354e();
            } else if (d != 59) {
                this.f14594c.f14580b = 1;
            } else {
                z = true;
            }
        }
    }

    /* renamed from: h */
    public final void m24351h() {
        m24355d();
        int d = m24355d();
        C5798b bVar = this.f14594c.f14582d;
        bVar.f14574g = (d & 28) >> 2;
        boolean z = true;
        if (bVar.f14574g == 0) {
            bVar.f14574g = 1;
        }
        C5798b bVar2 = this.f14594c.f14582d;
        if ((d & 1) == 0) {
            z = false;
        }
        bVar2.f14573f = z;
        int l = m24347l();
        int i = l;
        if (l < 3) {
            i = 10;
        }
        C5798b bVar3 = this.f14594c.f14582d;
        bVar3.f14576i = i * 10;
        bVar3.f14575h = m24355d();
        m24355d();
    }

    /* renamed from: i */
    public final void m24350i() {
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) m24355d());
        }
        if (!str.startsWith("GIF")) {
            this.f14594c.f14580b = 1;
            return;
        }
        m24349j();
        if (this.f14594c.f14586h && !m24357b()) {
            C5799c cVar = this.f14594c;
            cVar.f14579a = m24359a(cVar.f14587i);
            C5799c cVar2 = this.f14594c;
            cVar2.f14590l = cVar2.f14579a[cVar2.f14588j];
        }
    }

    /* renamed from: j */
    public final void m24349j() {
        this.f14594c.f14584f = m24347l();
        this.f14594c.f14585g = m24347l();
        int d = m24355d();
        this.f14594c.f14586h = (d & 128) != 0;
        C5799c cVar = this.f14594c;
        cVar.f14587i = 2 << (d & 7);
        cVar.f14588j = m24355d();
        this.f14594c.f14589k = m24355d();
    }

    /* renamed from: k */
    public final void m24348k() {
        do {
            m24353f();
            byte[] bArr = this.f14592a;
            if (bArr[0] == 1) {
                byte b = bArr[1];
                this.f14594c.f14591m = ((bArr[2] & 255) << 8) | (b & 255);
            }
            if (this.f14595d <= 0) {
                return;
            }
        } while (!m24357b());
    }

    /* renamed from: l */
    public final int m24347l() {
        return this.f14593b.getShort();
    }

    /* renamed from: m */
    public final void m24346m() {
        this.f14593b = null;
        Arrays.fill(this.f14592a, (byte) 0);
        this.f14594c = new C5799c();
        this.f14595d = 0;
    }

    /* renamed from: n */
    public final void m24345n() {
        int d;
        do {
            d = m24355d();
            ByteBuffer byteBuffer = this.f14593b;
            byteBuffer.position(byteBuffer.position() + d);
        } while (d > 0);
    }

    /* renamed from: o */
    public final void m24344o() {
        m24355d();
        m24345n();
    }
}
