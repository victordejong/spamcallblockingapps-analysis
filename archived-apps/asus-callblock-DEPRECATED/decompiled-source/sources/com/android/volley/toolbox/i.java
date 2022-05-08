package com.android.volley.toolbox;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;
import com.android.volley.d;
import com.android.volley.j;
import com.android.volley.l;
import com.android.volley.n;
import com.android.volley.p;
import com.android.volley.v;
/* loaded from: classes-dex2jar.jar:com/android/volley/toolbox/i.class */
public final class i extends n<Bitmap> {
    private static final Object r = new Object();
    private final p.b<Bitmap> m;
    private final Bitmap.Config n;
    private final int o;
    private final int p;
    private ImageView.ScaleType q;

    public i(String str, p.b<Bitmap> bVar, int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, p.a aVar) {
        super(str, aVar);
        this.k = new d(1000, 2, 2.0f);
        this.m = bVar;
        this.n = config;
        this.o = i;
        this.p = i2;
        this.q = scaleType;
    }

    private static int a(int i, int i2, int i3, int i4) {
        float f = 1.0f;
        while (f * 2.0f <= Math.min(i / i3, i2 / i4)) {
            f *= 2.0f;
        }
        return (int) f;
    }

    private static int a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        int i5;
        if (i == 0 && i2 == 0) {
            i5 = i3;
        } else if (scaleType == ImageView.ScaleType.FIT_XY) {
            i5 = i;
            if (i == 0) {
                i5 = i3;
            }
        } else if (i == 0) {
            i5 = (int) ((i2 / i4) * i3);
        } else {
            i5 = i;
            if (i2 != 0) {
                double d = i4 / i3;
                if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                    i5 = i;
                    if (i * d < i2) {
                        i5 = (int) (i2 / d);
                    }
                } else {
                    i5 = i;
                    if (i * d > i2) {
                        i5 = (int) (i2 / d);
                    }
                }
            }
        }
        return i5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.n
    public final p<Bitmap> a(j jVar) {
        p<Bitmap> a2;
        Bitmap decodeByteArray;
        synchronized (r) {
            try {
                byte[] bArr = jVar.f2301b;
                BitmapFactory.Options options = new BitmapFactory.Options();
                if (this.o == 0 && this.p == 0) {
                    options.inPreferredConfig = this.n;
                    decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                } else {
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                    int i = options.outWidth;
                    int i2 = options.outHeight;
                    int a3 = a(this.o, this.p, i, i2, this.q);
                    int a4 = a(this.p, this.o, i2, i, this.q);
                    options.inJustDecodeBounds = false;
                    options.inSampleSize = a(i, i2, a3, a4);
                    decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
                    if (decodeByteArray != null && (decodeByteArray.getWidth() > a3 || decodeByteArray.getHeight() > a4)) {
                        decodeByteArray = Bitmap.createScaledBitmap(decodeByteArray, a3, a4, true);
                        decodeByteArray.recycle();
                    }
                }
                a2 = decodeByteArray == null ? p.a(new l(jVar)) : p.a(decodeByteArray, e.a(jVar));
            } catch (OutOfMemoryError e) {
                v.c("Caught OOM for %d byte image, url=%s", Integer.valueOf(jVar.f2301b.length), b());
                a2 = p.a(new l(e));
            }
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.android.volley.n
    public final /* bridge */ /* synthetic */ void a(Bitmap bitmap) {
        this.m.a(bitmap);
    }

    @Override // com.android.volley.n
    public final n.a i() {
        return n.a.LOW;
    }
}
