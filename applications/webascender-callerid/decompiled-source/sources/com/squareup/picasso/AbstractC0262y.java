package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import com.squareup.picasso.Picasso;
import java.io.IOException;
import n.d0;
/* renamed from: com.squareup.picasso.y */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/y.class */
public abstract class AbstractC0262y {

    /* renamed from: com.squareup.picasso.y$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/y$a.class */
    public static final class C0263a {

        /* renamed from: a */
        private final Picasso.EnumC0221e f564a;

        /* renamed from: b */
        private final Bitmap f565b;

        /* renamed from: c */
        private final d0 f566c;

        /* renamed from: d */
        private final int f567d;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public C0263a(Bitmap bitmap, Picasso.EnumC0221e eVar) {
            this(bitmap, null, eVar, 0);
            C0240f0.m711d(bitmap, "bitmap == null");
        }

        C0263a(Bitmap bitmap, d0 d0Var, Picasso.EnumC0221e eVar, int i) {
            if ((bitmap != null) != (d0Var == null ? false : true)) {
                this.f565b = bitmap;
                this.f566c = d0Var;
                C0240f0.m711d(eVar, "loadedFrom == null");
                this.f564a = eVar;
                this.f567d = i;
                return;
            }
            throw new AssertionError();
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public C0263a(d0 d0Var, Picasso.EnumC0221e eVar) {
            this(null, d0Var, eVar, 0);
            C0240f0.m711d(d0Var, "source == null");
        }

        /* renamed from: a */
        public Bitmap m608a() {
            return this.f565b;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public int m607b() {
            return this.f567d;
        }

        /* renamed from: c */
        public Picasso.EnumC0221e m606c() {
            return this.f564a;
        }

        /* renamed from: d */
        public d0 m605d() {
            return this.f566c;
        }
    }

    /* renamed from: a */
    static void m617a(int i, int i2, int i3, int i4, BitmapFactory.Options options, C0258w wVar) {
        int i5;
        double floor;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                floor = Math.floor(i3 / i);
            } else if (i == 0) {
                floor = Math.floor(i4 / i2);
            } else {
                int floor2 = (int) Math.floor(i4 / i2);
                int floor3 = (int) Math.floor(i3 / i);
                i5 = wVar.f525l ? Math.max(floor2, floor3) : Math.min(floor2, floor3);
            }
            i5 = (int) floor;
        } else {
            i5 = 1;
        }
        options.inSampleSize = i5;
        options.inJustDecodeBounds = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m616b(int i, int i2, BitmapFactory.Options options, C0258w wVar) {
        m617a(i, i2, options.outWidth, options.outHeight, options, wVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static BitmapFactory.Options m614d(C0258w wVar) {
        boolean c = wVar.m648c();
        boolean z = wVar.f532s != null;
        BitmapFactory.Options options = null;
        if (c || z || wVar.f531r) {
            BitmapFactory.Options options2 = new BitmapFactory.Options();
            options2.inJustDecodeBounds = c;
            boolean z2 = wVar.f531r;
            options2.inInputShareable = z2;
            options2.inPurgeable = z2;
            options = options2;
            if (z) {
                options2.inPreferredConfig = wVar.f532s;
                options = options2;
            }
        }
        return options;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static boolean m611g(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    /* renamed from: c */
    public abstract boolean m615c(C0258w wVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public int m613e() {
        return 0;
    }

    /* renamed from: f */
    public abstract C0263a m612f(C0258w wVar, int i) throws IOException;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public boolean m610h(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public boolean m609i() {
        return false;
    }
}
