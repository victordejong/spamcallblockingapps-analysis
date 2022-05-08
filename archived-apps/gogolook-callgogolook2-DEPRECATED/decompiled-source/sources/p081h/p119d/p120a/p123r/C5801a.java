package p081h.p119d.p120a.p123r;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.Log;
import androidx.media2.exoplayer.external.extractor.p007ts.AdtsReader;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: h.d.a.r.a */
/* loaded from: classes-dex2jar.jar:h/d/a/r/a.class */
public class C5801a {

    /* renamed from: a */
    public int f14596a;

    /* renamed from: b */
    public int f14597b;

    /* renamed from: d */
    public int f14599d;

    /* renamed from: h */
    public OutputStream f14603h;

    /* renamed from: i */
    public Bitmap f14604i;

    /* renamed from: j */
    public byte[] f14605j;

    /* renamed from: k */
    public byte[] f14606k;

    /* renamed from: l */
    public int f14607l;

    /* renamed from: m */
    public byte[] f14608m;

    /* renamed from: u */
    public boolean f14616u;

    /* renamed from: c */
    public Integer f14598c = null;

    /* renamed from: e */
    public int f14600e = -1;

    /* renamed from: f */
    public int f14601f = 0;

    /* renamed from: g */
    public boolean f14602g = false;

    /* renamed from: n */
    public boolean[] f14609n = new boolean[256];

    /* renamed from: o */
    public int f14610o = 7;

    /* renamed from: p */
    public int f14611p = -1;

    /* renamed from: q */
    public boolean f14612q = false;

    /* renamed from: r */
    public boolean f14613r = true;

    /* renamed from: s */
    public boolean f14614s = false;

    /* renamed from: t */
    public int f14615t = 10;

    /* renamed from: a */
    public final int m24342a(int i) {
        if (this.f14608m == null) {
            return -1;
        }
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        int length = this.f14608m.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 16777216;
        while (i2 < length) {
            byte[] bArr = this.f14608m;
            int i5 = i2 + 1;
            int i6 = red - (bArr[i2] & 255);
            int i7 = i5 + 1;
            int i8 = green - (bArr[i5] & 255);
            int i9 = blue - (bArr[i7] & 255);
            int i10 = (i6 * i6) + (i8 * i8) + (i9 * i9);
            int i11 = i7 / 3;
            i3 = i3;
            i4 = i4;
            if (this.f14609n[i11]) {
                i3 = i3;
                i4 = i4;
                if (i10 < i4) {
                    i4 = i10;
                    i3 = i11;
                }
            }
            i2 = i7 + 1;
        }
        return i3;
    }

    /* renamed from: a */
    public final void m24343a() {
        byte[] bArr = this.f14605j;
        int length = bArr.length;
        int i = length / 3;
        this.f14606k = new byte[i];
        C5803c cVar = new C5803c(bArr, length, this.f14615t);
        this.f14608m = cVar.m24311d();
        int i2 = 0;
        while (true) {
            byte[] bArr2 = this.f14608m;
            if (i2 >= bArr2.length) {
                break;
            }
            byte b = bArr2[i2];
            int i3 = i2 + 2;
            bArr2[i2] = bArr2[i3];
            bArr2[i3] = b;
            this.f14609n[i2 / 3] = false;
            i2 += 3;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < i) {
            byte[] bArr3 = this.f14605j;
            int i6 = i5 + 1;
            byte b2 = bArr3[i5];
            int i7 = i6 + 1;
            int b3 = cVar.m24314b(b2 & 255, bArr3[i6] & 255, bArr3[i7] & 255);
            this.f14609n[b3] = true;
            this.f14606k[i4] = (byte) b3;
            i4++;
            i5 = i7 + 1;
        }
        this.f14605j = null;
        this.f14607l = 8;
        this.f14610o = 7;
        Integer num = this.f14598c;
        if (num != null) {
            this.f14599d = m24342a(num.intValue());
        } else if (this.f14616u) {
            this.f14599d = m24342a(0);
        }
    }

    /* renamed from: a */
    public void m24341a(int i, int i2) {
        if (!this.f14602g || this.f14613r) {
            this.f14596a = i;
            this.f14597b = i2;
            if (this.f14596a < 1) {
                this.f14596a = 320;
            }
            if (this.f14597b < 1) {
                this.f14597b = 240;
            }
            this.f14614s = true;
        }
    }

    /* renamed from: a */
    public final void m24338a(String str) throws IOException {
        for (int i = 0; i < str.length(); i++) {
            this.f14603h.write((byte) str.charAt(i));
        }
    }

    /* renamed from: a */
    public boolean m24340a(Bitmap bitmap) {
        boolean z = false;
        if (bitmap != null) {
            if (!this.f14602g) {
                z = false;
            } else {
                try {
                    if (!this.f14614s) {
                        m24341a(bitmap.getWidth(), bitmap.getHeight());
                    }
                    this.f14604i = bitmap;
                    m24335c();
                    m24343a();
                    if (this.f14613r) {
                        m24331f();
                        m24329h();
                        if (this.f14600e >= 0) {
                            m24330g();
                        }
                    }
                    m24333d();
                    m24332e();
                    if (!this.f14613r) {
                        m24329h();
                    }
                    m24328i();
                    this.f14613r = false;
                    z = true;
                } catch (IOException e) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    public boolean m24339a(OutputStream outputStream) {
        boolean z = false;
        if (outputStream == null) {
            return false;
        }
        this.f14612q = false;
        this.f14603h = outputStream;
        try {
            m24338a("GIF89a");
            z = true;
        } catch (IOException e) {
        }
        this.f14602g = z;
        return z;
    }

    /* renamed from: b */
    public void m24336b(int i) {
        this.f14601f = Math.round(i / 10.0f);
    }

    /* renamed from: b */
    public boolean m24337b() {
        boolean z;
        if (!this.f14602g) {
            return false;
        }
        this.f14602g = false;
        try {
            this.f14603h.write(59);
            this.f14603h.flush();
            if (this.f14612q) {
                this.f14603h.close();
            }
            z = true;
        } catch (IOException e) {
            z = false;
        }
        this.f14599d = 0;
        this.f14603h = null;
        this.f14604i = null;
        this.f14605j = null;
        this.f14606k = null;
        this.f14608m = null;
        this.f14612q = false;
        this.f14613r = true;
        return z;
    }

    /* renamed from: c */
    public final void m24335c() {
        int i;
        int width = this.f14604i.getWidth();
        int height = this.f14604i.getHeight();
        if (!(width == this.f14596a && height == this.f14597b)) {
            Bitmap createBitmap = Bitmap.createBitmap(this.f14596a, this.f14597b, Bitmap.Config.ARGB_8888);
            new Canvas(createBitmap).drawBitmap(createBitmap, 0.0f, 0.0f, (Paint) null);
            this.f14604i = createBitmap;
        }
        int[] iArr = new int[width * height];
        this.f14604i.getPixels(iArr, 0, width, 0, 0, width, height);
        this.f14605j = new byte[iArr.length * 3];
        boolean z = false;
        this.f14616u = false;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < length) {
            i3 = i3;
            if (iArr[i2] == 0) {
                i3++;
            }
            byte[] bArr = this.f14605j;
            int i5 = i4 + 1;
            bArr[i4] = (byte) (i & 255);
            int i6 = i5 + 1;
            bArr[i5] = (byte) ((i >> 8) & 255);
            bArr[i6] = (byte) ((i >> 16) & 255);
            i2++;
            i4 = i6 + 1;
        }
        double length2 = (i3 * 100) / iArr.length;
        if (length2 > 4.0d) {
            z = true;
        }
        this.f14616u = z;
        if (Log.isLoggable("AnimatedGifEncoder", 3)) {
            String str = "got pixels for frame with " + length2 + "% transparent pixels";
        }
    }

    /* renamed from: c */
    public final void m24334c(int i) throws IOException {
        this.f14603h.write(i & 255);
        this.f14603h.write((i >> 8) & 255);
    }

    /* renamed from: d */
    public final void m24333d() throws IOException {
        int i;
        int i2;
        this.f14603h.write(33);
        this.f14603h.write(249);
        this.f14603h.write(4);
        if (this.f14598c != null || this.f14616u) {
            i2 = 1;
            i = 2;
        } else {
            i2 = 0;
            i = 0;
        }
        int i3 = this.f14611p;
        if (i3 >= 0) {
            i = i3 & 7;
        }
        this.f14603h.write(i2 | (i << 2) | 0 | 0);
        m24334c(this.f14601f);
        this.f14603h.write(this.f14599d);
        this.f14603h.write(0);
    }

    /* renamed from: e */
    public final void m24332e() throws IOException {
        this.f14603h.write(44);
        m24334c(0);
        m24334c(0);
        m24334c(this.f14596a);
        m24334c(this.f14597b);
        if (this.f14613r) {
            this.f14603h.write(0);
        } else {
            this.f14603h.write(this.f14610o | 128);
        }
    }

    /* renamed from: f */
    public final void m24331f() throws IOException {
        m24334c(this.f14596a);
        m24334c(this.f14597b);
        this.f14603h.write(this.f14610o | 240);
        this.f14603h.write(0);
        this.f14603h.write(0);
    }

    /* renamed from: g */
    public final void m24330g() throws IOException {
        this.f14603h.write(33);
        this.f14603h.write(255);
        this.f14603h.write(11);
        m24338a("NETSCAPE2.0");
        this.f14603h.write(3);
        this.f14603h.write(1);
        m24334c(this.f14600e);
        this.f14603h.write(0);
    }

    /* renamed from: h */
    public final void m24329h() throws IOException {
        OutputStream outputStream = this.f14603h;
        byte[] bArr = this.f14608m;
        outputStream.write(bArr, 0, bArr.length);
        int length = this.f14608m.length;
        for (int i = 0; i < AdtsReader.MATCH_STATE_I - length; i++) {
            this.f14603h.write(0);
        }
    }

    /* renamed from: i */
    public final void m24328i() throws IOException {
        new C5802b(this.f14596a, this.f14597b, this.f14606k, this.f14607l).m24320b(this.f14603h);
    }
}
