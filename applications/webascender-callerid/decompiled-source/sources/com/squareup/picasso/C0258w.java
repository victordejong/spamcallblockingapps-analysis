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
public final class C0258w {

    /* renamed from: u */
    private static final long f513u = TimeUnit.SECONDS.toNanos(5);

    /* renamed from: a */
    int f514a;

    /* renamed from: b */
    long f515b;

    /* renamed from: c */
    int f516c;

    /* renamed from: d */
    public final Uri f517d;

    /* renamed from: e */
    public final int f518e;

    /* renamed from: f */
    public final String f519f;

    /* renamed from: g */
    public final List<AbstractC0239e0> f520g;

    /* renamed from: h */
    public final int f521h;

    /* renamed from: i */
    public final int f522i;

    /* renamed from: j */
    public final boolean f523j;

    /* renamed from: k */
    public final int f524k;

    /* renamed from: l */
    public final boolean f525l;

    /* renamed from: m */
    public final boolean f526m;

    /* renamed from: n */
    public final float f527n;

    /* renamed from: o */
    public final float f528o;

    /* renamed from: p */
    public final float f529p;

    /* renamed from: q */
    public final boolean f530q;

    /* renamed from: r */
    public final boolean f531r;

    /* renamed from: s */
    public final Bitmap.Config f532s;

    /* renamed from: t */
    public final Picasso.EnumC0222f f533t;

    /* renamed from: com.squareup.picasso.w$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/w$b.class */
    public static final class C0260b {

        /* renamed from: a */
        private Uri f534a;

        /* renamed from: b */
        private int f535b;

        /* renamed from: c */
        private String f536c;

        /* renamed from: d */
        private int f537d;

        /* renamed from: e */
        private int f538e;

        /* renamed from: f */
        private boolean f539f;

        /* renamed from: g */
        private int f540g;

        /* renamed from: h */
        private boolean f541h;

        /* renamed from: i */
        private boolean f542i;

        /* renamed from: j */
        private float f543j;

        /* renamed from: k */
        private float f544k;

        /* renamed from: l */
        private float f545l;

        /* renamed from: m */
        private boolean f546m;

        /* renamed from: n */
        private boolean f547n;

        /* renamed from: o */
        private List<AbstractC0239e0> f548o;

        /* renamed from: p */
        private Bitmap.Config f549p;

        /* renamed from: q */
        private Picasso.EnumC0222f f550q;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0260b(Uri uri, int i, Bitmap.Config config) {
            this.f534a = uri;
            this.f535b = i;
            this.f549p = config;
        }

        /* renamed from: a */
        public C0258w m643a() {
            boolean z = this.f541h;
            if (z && this.f539f) {
                throw new IllegalStateException("Center crop and center inside can not be used together.");
            } else if (this.f539f && this.f537d == 0 && this.f538e == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            } else if (z && this.f537d == 0 && this.f538e == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            } else {
                if (this.f550q == null) {
                    this.f550q = Picasso.EnumC0222f.NORMAL;
                }
                return new C0258w(this.f534a, this.f535b, this.f536c, this.f548o, this.f537d, this.f538e, this.f539f, this.f541h, this.f540g, this.f542i, this.f543j, this.f544k, this.f545l, this.f546m, this.f547n, this.f549p, this.f550q);
            }
        }

        /* renamed from: b */
        public C0260b m642b(int i) {
            if (!this.f541h) {
                this.f539f = true;
                this.f540g = i;
                return this;
            }
            throw new IllegalStateException("Center crop can not be used after calling centerInside");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public boolean m641c() {
            return (this.f534a == null && this.f535b == 0) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: d */
        public boolean m640d() {
            return (this.f537d == 0 && this.f538e == 0) ? false : true;
        }

        /* renamed from: e */
        public C0260b m639e(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Width must be positive number or 0.");
            } else if (i2 < 0) {
                throw new IllegalArgumentException("Height must be positive number or 0.");
            } else if (i2 == 0 && i == 0) {
                throw new IllegalArgumentException("At least one dimension has to be positive number.");
            } else {
                this.f537d = i;
                this.f538e = i2;
                return this;
            }
        }

        /* renamed from: f */
        public C0260b m638f(AbstractC0239e0 e0Var) {
            if (e0Var == null) {
                throw new IllegalArgumentException("Transformation must not be null.");
            } else if (e0Var.key() != null) {
                if (this.f548o == null) {
                    this.f548o = new ArrayList(2);
                }
                this.f548o.add(e0Var);
                return this;
            } else {
                throw new IllegalArgumentException("Transformation key must not be null.");
            }
        }
    }

    private C0258w(Uri uri, int i, String str, List<AbstractC0239e0> list, int i2, int i3, boolean z, boolean z2, int i4, boolean z3, float f, float f2, float f3, boolean z4, boolean z5, Bitmap.Config config, Picasso.EnumC0222f fVar) {
        this.f517d = uri;
        this.f518e = i;
        this.f519f = str;
        if (list == null) {
            this.f520g = null;
        } else {
            this.f520g = Collections.unmodifiableList(list);
        }
        this.f521h = i2;
        this.f522i = i3;
        this.f523j = z;
        this.f525l = z2;
        this.f524k = i4;
        this.f526m = z3;
        this.f527n = f;
        this.f528o = f2;
        this.f529p = f3;
        this.f530q = z4;
        this.f531r = z5;
        this.f532s = config;
        this.f533t = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public String m650a() {
        Uri uri = this.f517d;
        return uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(this.f518e);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public boolean m649b() {
        return this.f520g != null;
    }

    /* renamed from: c */
    public boolean m648c() {
        return (this.f521h == 0 && this.f522i == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public String m647d() {
        long nanoTime = System.nanoTime() - this.f515b;
        if (nanoTime > f513u) {
            return m644g() + '+' + TimeUnit.NANOSECONDS.toSeconds(nanoTime) + 's';
        }
        return m644g() + '+' + TimeUnit.NANOSECONDS.toMillis(nanoTime) + "ms";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m646e() {
        return m648c() || this.f527n != 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public boolean m645f() {
        return m646e() || m649b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public String m644g() {
        return "[R" + this.f514a + ']';
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i = this.f518e;
        if (i > 0) {
            sb.append(i);
        } else {
            sb.append(this.f517d);
        }
        List<AbstractC0239e0> list = this.f520g;
        if (list != null && !list.isEmpty()) {
            for (AbstractC0239e0 e0Var : this.f520g) {
                sb.append(' ');
                sb.append(e0Var.key());
            }
        }
        if (this.f519f != null) {
            sb.append(" stableKey(");
            sb.append(this.f519f);
            sb.append(')');
        }
        if (this.f521h > 0) {
            sb.append(" resize(");
            sb.append(this.f521h);
            sb.append(',');
            sb.append(this.f522i);
            sb.append(')');
        }
        if (this.f523j) {
            sb.append(" centerCrop");
        }
        if (this.f525l) {
            sb.append(" centerInside");
        }
        if (this.f527n != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.f527n);
            if (this.f530q) {
                sb.append(" @ ");
                sb.append(this.f528o);
                sb.append(',');
                sb.append(this.f529p);
            }
            sb.append(')');
        }
        if (this.f531r) {
            sb.append(" purgeable");
        }
        if (this.f532s != null) {
            sb.append(' ');
            sb.append(this.f532s);
        }
        sb.append('}');
        return sb.toString();
    }
}
