package p060e.p061a.p062a;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: e.a.a.a */
/* loaded from: classes-dex2jar.jar:e/a/a/a.class */
public class C4224a {

    /* renamed from: a */
    public byte[] f10247a;

    /* renamed from: b */
    public int f10248b;

    /* renamed from: c */
    public int f10249c = 0;

    /* renamed from: d */
    public int f10250d;

    /* renamed from: e */
    public OutputStream f10251e;

    /* renamed from: a */
    public void m29283a() throws IOException {
        m29277b();
        this.f10251e = null;
    }

    /* renamed from: a */
    public void m29282a(byte b) throws IOException {
        byte[] bArr = this.f10247a;
        int i = this.f10248b;
        this.f10248b = i + 1;
        bArr[i] = b;
        if (this.f10248b >= this.f10249c) {
            m29277b();
        }
    }

    /* renamed from: a */
    public void m29281a(int i) {
        if (this.f10247a == null || this.f10249c != i) {
            this.f10247a = new byte[i];
        }
        this.f10249c = i;
        this.f10248b = 0;
        this.f10250d = 0;
    }

    /* renamed from: a */
    public void m29280a(int i, int i2) throws IOException {
        int i3 = (this.f10248b - i) - 1;
        int i4 = i3;
        int i5 = i2;
        if (i3 < 0) {
            i4 = i3 + this.f10249c;
            i5 = i2;
        }
        while (i5 != 0) {
            int i6 = i4;
            if (i4 >= this.f10249c) {
                i6 = 0;
            }
            byte[] bArr = this.f10247a;
            int i7 = this.f10248b;
            this.f10248b = i7 + 1;
            bArr[i7] = bArr[i6];
            if (this.f10248b >= this.f10249c) {
                m29277b();
            }
            i5--;
            i4 = i6 + 1;
        }
    }

    /* renamed from: a */
    public void m29279a(OutputStream outputStream) throws IOException {
        m29283a();
        this.f10251e = outputStream;
    }

    /* renamed from: a */
    public void m29278a(boolean z) {
        if (!z) {
            this.f10250d = 0;
            this.f10248b = 0;
        }
    }

    /* renamed from: b */
    public byte m29276b(int i) {
        int i2 = (this.f10248b - i) - 1;
        int i3 = i2;
        if (i2 < 0) {
            i3 = i2 + this.f10249c;
        }
        return this.f10247a[i3];
    }

    /* renamed from: b */
    public void m29277b() throws IOException {
        int i = this.f10248b;
        int i2 = this.f10250d;
        int i3 = i - i2;
        if (i3 != 0) {
            this.f10251e.write(this.f10247a, i2, i3);
            if (this.f10248b >= this.f10249c) {
                this.f10248b = 0;
            }
            this.f10250d = this.f10248b;
        }
    }
}
