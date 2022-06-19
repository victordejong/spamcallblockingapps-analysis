package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import n.d0;
/* renamed from: com.squareup.picasso.y */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/y.class */
public abstract class AbstractC1930y {

    /* renamed from: com.squareup.picasso.y$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/y$a.class */
    public static final class C1931a {

        /* renamed from: a */
        private final Picasso.EnumC1889e f5243a;

        /* renamed from: b */
        private final Bitmap f5244b;

        /* renamed from: c */
        private final d0 f5245c;

        /* renamed from: d */
        private final int f5246d;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public C1931a(Bitmap bitmap, Picasso.EnumC1889e enumC1889e) {
            this(bitmap, null, enumC1889e, 0);
            C1908f0.m711d(bitmap, "bitmap == null");
        }

        C1931a(Bitmap bitmap, d0 d0Var, Picasso.EnumC1889e enumC1889e, int i) {
            if ((bitmap != null) != (d0Var == null ? false : true)) {
                this.f5244b = bitmap;
                this.f5245c = d0Var;
                C1908f0.m711d(enumC1889e, "loadedFrom == null");
                this.f5243a = enumC1889e;
                this.f5246d = i;
                return;
            }
            throw new AssertionError();
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public C1931a(d0 d0Var, Picasso.EnumC1889e enumC1889e) {
            this(null, d0Var, enumC1889e, 0);
            C1908f0.m711d(d0Var, "source == null");
        }

        /* renamed from: a */
        public Bitmap m608a() {
            return this.f5244b;
        }

        /* renamed from: b */
        public int m607b() {
            return this.f5246d;
        }

        /* renamed from: c */
        public Picasso.EnumC1889e m606c() {
            return this.f5243a;
        }

        /* renamed from: d */
        public d0 m605d() {
            return this.f5245c;
        }
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [double] */
    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    /* renamed from: a */
    static void m617a(int i, int i2, int i3, int i4, BitmapFactory.Options options, C1926w c1926w) {
        int i5;
        char floor;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                floor = Math.floor(i3 / i);
            } else if (i == 0) {
                floor = Math.floor(i4 / i2);
            } else {
                int floor2 = (int) Math.floor(i4 / i2);
                int floor3 = (int) Math.floor(i3 / i);
                i5 = c1926w.f5204l ? Math.max(floor2, floor3) : Math.min(floor2, floor3);
            }
            i5 = floor;
        } else {
            i5 = 1;
        }
        options.inSampleSize = i5;
        options.inJustDecodeBounds = false;
    }

    /* renamed from: b */
    public static void m616b(int i, int i2, BitmapFactory.Options options, C1926w c1926w) {
        m617a(i, i2, options.outWidth, options.outHeight, options, c1926w);
    }

    /* renamed from: d */
    public static BitmapFactory.Options m614d(C1926w c1926w) {
        boolean m648c = c1926w.m648c();
        boolean z = c1926w.f5211s != null;
        BitmapFactory.Options options = null;
        if (m648c || z || c1926w.f5210r) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = m648c;
            boolean z2 = c1926w.f5210r;
            options2.inInputShareable = z2;
            options2.inPurgeable = z2;
            options = options2;
            if (z) {
                options2.inPreferredConfig = c1926w.f5211s;
                options = options2;
            }
        }
        return options;
    }

    /* renamed from: g */
    public static boolean m611g(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    /* renamed from: c */
    public abstract boolean m615c(C1926w c1926w);

    /* renamed from: e */
    public int m613e() {
        return 0;
    }

    /* renamed from: f */
    public abstract C1931a m612f(C1926w c1926w, int i) throws IOException;

    /* renamed from: h */
    public boolean m610h(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    /* renamed from: i */
    public boolean m609i() {
        return false;
    }
}
