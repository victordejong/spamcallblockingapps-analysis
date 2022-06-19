package com.squareup.picasso;

import android.graphics.Bitmap;
import android.net.Uri;
import com.squareup.picasso.Picasso;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: com.squareup.picasso.w */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/w.class */
public final class C1926w {

    /* renamed from: u */
    private static final long f5192u = TimeUnit.SECONDS.toNanos(5);

    /* renamed from: a */
    int f5193a;

    /* renamed from: b */
    long f5194b;

    /* renamed from: c */
    int f5195c;

    /* renamed from: d */
    public final Uri f5196d;

    /* renamed from: e */
    public final int f5197e;

    /* renamed from: f */
    public final String f5198f;

    /* renamed from: g */
    public final List<AbstractC1907e0> f5199g;

    /* renamed from: h */
    public final int f5200h;

    /* renamed from: i */
    public final int f5201i;

    /* renamed from: j */
    public final boolean f5202j;

    /* renamed from: k */
    public final int f5203k;

    /* renamed from: l */
    public final boolean f5204l;

    /* renamed from: m */
    public final boolean f5205m;

    /* renamed from: n */
    public final float f5206n;

    /* renamed from: o */
    public final float f5207o;

    /* renamed from: p */
    public final float f5208p;

    /* renamed from: q */
    public final boolean f5209q;

    /* renamed from: r */
    public final boolean f5210r;

    /* renamed from: s */
    public final Bitmap.Config f5211s;

    /* renamed from: t */
    public final Picasso.EnumC1890f f5212t;

    /* renamed from: com.squareup.picasso.w$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/w$b.class */
    public static final class C1928b {

        /* renamed from: a */
        private Uri f5213a;

        /* renamed from: b */
        private int f5214b;

        /* renamed from: c */
        private String f5215c;

        /* renamed from: d */
        private int f5216d;

        /* renamed from: e */
        private int f5217e;

        /* renamed from: f */
        private boolean f5218f;

        /* renamed from: g */
        private int f5219g;

        /* renamed from: h */
        private boolean f5220h;

        /* renamed from: i */
        private boolean f5221i;

        /* renamed from: j */
        private float f5222j;

        /* renamed from: k */
        private float f5223k;

        /* renamed from: l */
        private float f5224l;

        /* renamed from: m */
        private boolean f5225m;

        /* renamed from: n */
        private boolean f5226n;

        /* renamed from: o */
        private List<AbstractC1907e0> f5227o;

        /* renamed from: p */
        private Bitmap.Config f5228p;

        /* renamed from: q */
        private Picasso.EnumC1890f f5229q;

        public C1928b(Uri uri, int i, Bitmap.Config config) {
            this.f5213a = uri;
            this.f5214b = i;
            this.f5228p = config;
        }

        /* renamed from: a */
        public C1926w m643a() {
            boolean z = this.f5220h;
            if (!z || !this.f5218f) {
                if (this.f5218f && this.f5216d == 0 && this.f5217e == 0) {
                    throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
                }
                if (z && this.f5216d == 0 && this.f5217e == 0) {
                    throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
                }
                if (this.f5229q == null) {
                    this.f5229q = Picasso.EnumC1890f.NORMAL;
                }
                return new C1926w(this.f5213a, this.f5214b, this.f5215c, this.f5227o, this.f5216d, this.f5217e, this.f5218f, this.f5220h, this.f5219g, this.f5221i, this.f5222j, this.f5223k, this.f5224l, this.f5225m, this.f5226n, this.f5228p, this.f5229q);
            }
            throw new IllegalStateException("Center crop and center inside can not be used together.");
        }

        /* renamed from: b */
        public C1928b m642b(int i) {
            if (!this.f5220h) {
                this.f5218f = true;
                this.f5219g = i;
                return this;
            }
            throw new IllegalStateException("Center crop can not be used after calling centerInside");
        }

        /* renamed from: c */
        public boolean m641c() {
            return (this.f5213a == null && this.f5214b == 0) ? false : true;
        }

        /* renamed from: d */
        public boolean m640d() {
            return (this.f5216d == 0 && this.f5217e == 0) ? false : true;
        }

        /* renamed from: e */
        public C1928b m639e(int i, int i2) {
            if (i >= 0) {
                if (i2 < 0) {
                    throw new IllegalArgumentException("Height must be positive number or 0.");
                }
                if (i2 == 0 && i == 0) {
                    throw new IllegalArgumentException("At least one dimension has to be positive number.");
                }
                this.f5216d = i;
                this.f5217e = i2;
                return this;
            }
            throw new IllegalArgumentException("Width must be positive number or 0.");
        }

        /* renamed from: f */
        public C1928b m638f(AbstractC1907e0 abstractC1907e0) {
            if (abstractC1907e0 != null) {
                if (abstractC1907e0.key() == null) {
                    throw new IllegalArgumentException("Transformation key must not be null.");
                }
                if (this.f5227o == null) {
                    this.f5227o = new ArrayList(2);
                }
                this.f5227o.add(abstractC1907e0);
                return this;
            }
            throw new IllegalArgumentException("Transformation must not be null.");
        }
    }

    private C1926w(Uri uri, int i, String str, List<AbstractC1907e0> list, int i2, int i3, boolean z, boolean z2, int i4, boolean z3, float f, float f2, float f3, boolean z4, boolean z5, Bitmap.Config config, Picasso.EnumC1890f enumC1890f) {
        this.f5196d = uri;
        this.f5197e = i;
        this.f5198f = str;
        if (list == null) {
            this.f5199g = null;
        } else {
            this.f5199g = Collections.unmodifiableList(list);
        }
        this.f5200h = i2;
        this.f5201i = i3;
        this.f5202j = z;
        this.f5204l = z2;
        this.f5203k = i4;
        this.f5205m = z3;
        this.f5206n = f;
        this.f5207o = f2;
        this.f5208p = f3;
        this.f5209q = z4;
        this.f5210r = z5;
        this.f5211s = config;
        this.f5212t = enumC1890f;
    }

    /* renamed from: a */
    public String m650a() {
        Uri uri = this.f5196d;
        return uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(this.f5197e);
    }

    /* renamed from: b */
    public boolean m649b() {
        return this.f5199g != null;
    }

    /* renamed from: c */
    public boolean m648c() {
        return (this.f5200h == 0 && this.f5201i == 0) ? false : true;
    }

    /* renamed from: d */
    public String m647d() {
        long nanoTime = System.nanoTime() - this.f5194b;
        if (nanoTime > f5192u) {
            return m644g() + '+' + TimeUnit.NANOSECONDS.toSeconds(nanoTime) + 's';
        }
        return m644g() + '+' + TimeUnit.NANOSECONDS.toMillis(nanoTime) + "ms";
    }

    /* renamed from: e */
    public boolean m646e() {
        return m648c() || this.f5206n != 0.0f;
    }

    /* renamed from: f */
    public boolean m645f() {
        return m646e() || m649b();
    }

    /* renamed from: g */
    public String m644g() {
        return "[R" + this.f5193a + ']';
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i = this.f5197e;
        if (i > 0) {
            sb.append(i);
        } else {
            sb.append(this.f5196d);
        }
        List<AbstractC1907e0> list = this.f5199g;
        if (list != null && !list.isEmpty()) {
            for (AbstractC1907e0 abstractC1907e0 : this.f5199g) {
                sb.append(' ');
                sb.append(abstractC1907e0.key());
            }
        }
        if (this.f5198f != null) {
            sb.append(" stableKey(");
            sb.append(this.f5198f);
            sb.append(')');
        }
        if (this.f5200h > 0) {
            sb.append(" resize(");
            sb.append(this.f5200h);
            sb.append(',');
            sb.append(this.f5201i);
            sb.append(')');
        }
        if (this.f5202j) {
            sb.append(" centerCrop");
        }
        if (this.f5204l) {
            sb.append(" centerInside");
        }
        if (this.f5206n != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.f5206n);
            if (this.f5209q) {
                sb.append(" @ ");
                sb.append(this.f5207o);
                sb.append(',');
                sb.append(this.f5208p);
            }
            sb.append(')');
        }
        if (this.f5210r) {
            sb.append(" purgeable");
        }
        if (this.f5211s != null) {
            sb.append(' ');
            sb.append(this.f5211s);
        }
        sb.append('}');
        return sb.toString();
    }
}
