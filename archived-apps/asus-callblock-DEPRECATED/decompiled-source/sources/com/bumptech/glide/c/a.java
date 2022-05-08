package com.bumptech.glide.c;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/a.class */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private int f3384b;
    private int c;
    private int e;
    private OutputStream h;
    private Bitmap i;
    private byte[] j;
    private byte[] k;
    private int l;
    private byte[] m;
    private boolean u;
    private Integer d = null;
    private int f = -1;

    /* renamed from: a  reason: collision with root package name */
    public int f3383a = 0;
    private boolean g = false;
    private boolean[] n = new boolean[256];
    private int o = 7;
    private int p = -1;
    private boolean q = false;
    private boolean r = true;
    private boolean s = false;
    private int t = 10;

    private int a(int i) {
        int i2;
        if (this.m != null) {
            int red = Color.red(i);
            int green = Color.green(i);
            int blue = Color.blue(i);
            int i3 = 16777216;
            int length = this.m.length;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i2 = i5;
                if (i4 >= length) {
                    break;
                }
                int i6 = i4 + 1;
                int i7 = red - (this.m[i4] & 255);
                int i8 = i6 + 1;
                int i9 = green - (this.m[i6] & 255);
                int i10 = blue - (this.m[i8] & 255);
                int i11 = (i7 * i7) + (i9 * i9) + (i10 * i10);
                int i12 = i8 / 3;
                if (this.n[i12] && i11 < i3) {
                    i5 = i12;
                    i3 = i11;
                }
                i4 = i8 + 1;
            }
        } else {
            i2 = -1;
        }
        return i2;
    }

    private void a(String str) {
        for (int i = 0; i < str.length(); i++) {
            this.h.write((byte) str.charAt(i));
        }
    }

    private void b() {
        int length = this.j.length;
        int i = length / 3;
        this.k = new byte[i];
        c cVar = new c(this.j, length, this.t);
        cVar.c();
        cVar.d();
        cVar.b();
        this.m = cVar.a();
        for (int i2 = 0; i2 < this.m.length; i2 += 3) {
            byte b2 = this.m[i2];
            this.m[i2] = this.m[i2 + 2];
            this.m[i2 + 2] = b2;
            this.n[i2 / 3] = false;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = i3 + 1;
            int i6 = i5 + 1;
            i3 = i6 + 1;
            int a2 = cVar.a(this.j[i3] & 255, this.j[i5] & 255, this.j[i6] & 255);
            this.n[a2] = true;
            this.k[i4] = (byte) a2;
        }
        this.j = null;
        this.l = 8;
        this.o = 7;
        if (this.d != null) {
            this.e = a(this.d.intValue());
        } else if (this.u) {
            this.e = a(0);
        }
    }

    private void b(int i) {
        this.h.write(i & 255);
        this.h.write((i >> 8) & 255);
    }

    private void c() {
        this.h.write(this.m, 0, this.m.length);
        int length = this.m.length;
        for (int i = 0; i < 768 - length; i++) {
            this.h.write(0);
        }
    }

    public final boolean a() {
        boolean z = false;
        if (this.g) {
            this.g = false;
            try {
                this.h.write(59);
                this.h.flush();
                if (this.q) {
                    this.h.close();
                }
                z = true;
            } catch (IOException e) {
                z = false;
            }
            this.e = 0;
            this.h = null;
            this.i = null;
            this.j = null;
            this.k = null;
            this.m = null;
            this.q = false;
            this.r = true;
        }
        return z;
    }

    public final boolean a(Bitmap bitmap) {
        boolean z;
        int i;
        int i2;
        if (bitmap == null || !this.g) {
            z = false;
        } else {
            try {
                if (!this.s) {
                    int width = bitmap.getWidth();
                    int height = bitmap.getHeight();
                    if (!this.g || this.r) {
                        this.f3384b = width;
                        this.c = height;
                        if (this.f3384b <= 0) {
                            this.f3384b = 320;
                        }
                        if (this.c <= 0) {
                            this.c = 240;
                        }
                        this.s = true;
                    }
                }
                this.i = bitmap;
                int width2 = this.i.getWidth();
                int height2 = this.i.getHeight();
                if (!(width2 == this.f3384b && height2 == this.c)) {
                    Bitmap createBitmap = Bitmap.createBitmap(this.f3384b, this.c, Bitmap.Config.ARGB_8888);
                    new Canvas(createBitmap).drawBitmap(createBitmap, 0.0f, 0.0f, (Paint) null);
                    this.i = createBitmap;
                }
                int[] iArr = new int[width2 * height2];
                this.i.getPixels(iArr, 0, width2, 0, 0, width2, height2);
                this.j = new byte[iArr.length * 3];
                this.u = false;
                int length = iArr.length;
                int i3 = 0;
                int i4 = 0;
                for (int i5 : iArr) {
                    i4 = i4;
                    if (i5 == 0) {
                        i4++;
                    }
                    int i6 = i3 + 1;
                    this.j[i3] = (byte) (i5 & 255);
                    int i7 = i6 + 1;
                    this.j[i6] = (byte) ((i5 >> 8) & 255);
                    i3 = i7 + 1;
                    this.j[i7] = (byte) ((i5 >> 16) & 255);
                }
                double d = (i4 * 100) / length;
                this.u = d > 4.0d;
                if (Log.isLoggable("AnimatedGifEncoder", 3)) {
                    Log.d("AnimatedGifEncoder", "got pixels for frame with " + d + "% transparent pixels");
                }
                b();
                if (this.r) {
                    b(this.f3384b);
                    b(this.c);
                    this.h.write(this.o | 240);
                    this.h.write(0);
                    this.h.write(0);
                    c();
                    if (this.f >= 0) {
                        this.h.write(33);
                        this.h.write(255);
                        this.h.write(11);
                        a("NETSCAPE2.0");
                        this.h.write(3);
                        this.h.write(1);
                        b(this.f);
                        this.h.write(0);
                    }
                }
                this.h.write(33);
                this.h.write(249);
                this.h.write(4);
                if (this.d != null || this.u) {
                    i = 2;
                    i2 = 1;
                } else {
                    i = 0;
                    i2 = 0;
                }
                if (this.p >= 0) {
                    i = this.p & 7;
                }
                this.h.write((i << 2) | 0 | 0 | i2);
                b(this.f3383a);
                this.h.write(this.e);
                this.h.write(0);
                this.h.write(44);
                b(0);
                b(0);
                b(this.f3384b);
                b(this.c);
                if (this.r) {
                    this.h.write(0);
                } else {
                    this.h.write(this.o | 128);
                }
                if (!this.r) {
                    c();
                }
                b bVar = new b(this.f3384b, this.c, this.k, this.l);
                OutputStream outputStream = this.h;
                outputStream.write(bVar.c);
                bVar.d = bVar.f3385a * bVar.f3386b;
                bVar.e = 0;
                bVar.a(bVar.c + 1, outputStream);
                outputStream.write(0);
                this.r = false;
                z = true;
            } catch (IOException e) {
                z = false;
            }
        }
        return z;
    }

    public final boolean a(OutputStream outputStream) {
        boolean z = false;
        if (outputStream != null) {
            z = true;
            this.q = false;
            this.h = outputStream;
            try {
                a("GIF89a");
            } catch (IOException e) {
                z = false;
            }
            this.g = z;
        }
        return z;
    }
}
