package p081h.p444n.p445a;

import android.graphics.Bitmap;
import android.net.Uri;
import androidx.annotation.AbstractC0053Px;
import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;
import p081h.p444n.p445a.C10798u;
/* renamed from: h.n.a.x */
/* loaded from: classes2-dex2jar.jar:h/n/a/x.class */
public final class C10811x {

    /* renamed from: u */
    public static final long f24701u = TimeUnit.SECONDS.toNanos(5);

    /* renamed from: a */
    public int f24702a;

    /* renamed from: b */
    public long f24703b;

    /* renamed from: c */
    public int f24704c;

    /* renamed from: d */
    public final Uri f24705d;

    /* renamed from: e */
    public final int f24706e;

    /* renamed from: f */
    public final String f24707f;

    /* renamed from: g */
    public final List<AbstractC10768d0> f24708g;

    /* renamed from: h */
    public final int f24709h;

    /* renamed from: i */
    public final int f24710i;

    /* renamed from: j */
    public final boolean f24711j;

    /* renamed from: k */
    public final int f24712k;

    /* renamed from: l */
    public final boolean f24713l;

    /* renamed from: m */
    public final boolean f24714m;

    /* renamed from: n */
    public final float f24715n;

    /* renamed from: o */
    public final float f24716o;

    /* renamed from: p */
    public final float f24717p;

    /* renamed from: q */
    public final boolean f24718q;

    /* renamed from: r */
    public final boolean f24719r;

    /* renamed from: s */
    public final Bitmap.Config f24720s;

    /* renamed from: t */
    public final C10798u.EnumC10805f f24721t;

    /* renamed from: h.n.a.x$b */
    /* loaded from: classes2-dex2jar.jar:h/n/a/x$b.class */
    public static final class C10813b {

        /* renamed from: a */
        public Uri f24722a;

        /* renamed from: b */
        public int f24723b;

        /* renamed from: c */
        public String f24724c;

        /* renamed from: d */
        public int f24725d;

        /* renamed from: e */
        public int f24726e;

        /* renamed from: f */
        public boolean f24727f;

        /* renamed from: g */
        public int f24728g;

        /* renamed from: h */
        public boolean f24729h;

        /* renamed from: i */
        public boolean f24730i;

        /* renamed from: j */
        public float f24731j;

        /* renamed from: k */
        public float f24732k;

        /* renamed from: l */
        public float f24733l;

        /* renamed from: m */
        public boolean f24734m;

        /* renamed from: n */
        public boolean f24735n;

        /* renamed from: o */
        public List<AbstractC10768d0> f24736o;

        /* renamed from: p */
        public Bitmap.Config f24737p;

        /* renamed from: q */
        public C10798u.EnumC10805f f24738q;

        public C10813b(Uri uri, int i, Bitmap.Config config) {
            this.f24722a = uri;
            this.f24723b = i;
            this.f24737p = config;
        }

        /* renamed from: a */
        public C10813b m10581a(@AbstractC0053Px int i, @AbstractC0053Px int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Width must be positive number or 0.");
            } else if (i2 < 0) {
                throw new IllegalArgumentException("Height must be positive number or 0.");
            } else if (i2 == 0 && i == 0) {
                throw new IllegalArgumentException("At least one dimension has to be positive number.");
            } else {
                this.f24725d = i;
                this.f24726e = i2;
                return this;
            }
        }

        /* renamed from: a */
        public C10813b m10580a(@NonNull C10798u.EnumC10805f fVar) {
            if (fVar == null) {
                throw new IllegalArgumentException("Priority invalid.");
            } else if (this.f24738q == null) {
                this.f24738q = fVar;
                return this;
            } else {
                throw new IllegalStateException("Priority already set.");
            }
        }

        /* renamed from: a */
        public C10811x m10582a() {
            if (this.f24729h && this.f24727f) {
                throw new IllegalStateException("Center crop and center inside can not be used together.");
            } else if (this.f24727f && this.f24725d == 0 && this.f24726e == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            } else if (this.f24729h && this.f24725d == 0 && this.f24726e == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            } else {
                if (this.f24738q == null) {
                    this.f24738q = C10798u.EnumC10805f.NORMAL;
                }
                return new C10811x(this.f24722a, this.f24723b, this.f24724c, this.f24736o, this.f24725d, this.f24726e, this.f24727f, this.f24729h, this.f24728g, this.f24730i, this.f24731j, this.f24732k, this.f24733l, this.f24734m, this.f24735n, this.f24737p, this.f24738q);
            }
        }

        /* renamed from: b */
        public boolean m10579b() {
            return (this.f24722a == null && this.f24723b == 0) ? false : true;
        }

        /* renamed from: c */
        public boolean m10578c() {
            return this.f24738q != null;
        }

        /* renamed from: d */
        public boolean m10577d() {
            return (this.f24725d == 0 && this.f24726e == 0) ? false : true;
        }
    }

    public C10811x(Uri uri, int i, String str, List<AbstractC10768d0> list, int i2, int i3, boolean z, boolean z2, int i4, boolean z3, float f, float f2, float f3, boolean z4, boolean z5, Bitmap.Config config, C10798u.EnumC10805f fVar) {
        this.f24705d = uri;
        this.f24706e = i;
        this.f24707f = str;
        if (list == null) {
            this.f24708g = null;
        } else {
            this.f24708g = Collections.unmodifiableList(list);
        }
        this.f24709h = i2;
        this.f24710i = i3;
        this.f24711j = z;
        this.f24713l = z2;
        this.f24712k = i4;
        this.f24714m = z3;
        this.f24715n = f;
        this.f24716o = f2;
        this.f24717p = f3;
        this.f24718q = z4;
        this.f24719r = z5;
        this.f24720s = config;
        this.f24721t = fVar;
    }

    /* renamed from: a */
    public String m10589a() {
        Uri uri = this.f24705d;
        return uri != null ? String.valueOf(uri.getPath()) : Integer.toHexString(this.f24706e);
    }

    /* renamed from: b */
    public boolean m10588b() {
        return this.f24708g != null;
    }

    /* renamed from: c */
    public boolean m10587c() {
        return (this.f24709h == 0 && this.f24710i == 0) ? false : true;
    }

    /* renamed from: d */
    public String m10586d() {
        long nanoTime = System.nanoTime() - this.f24703b;
        if (nanoTime > f24701u) {
            return m10583g() + '+' + TimeUnit.NANOSECONDS.toSeconds(nanoTime) + 's';
        }
        return m10583g() + '+' + TimeUnit.NANOSECONDS.toMillis(nanoTime) + "ms";
    }

    /* renamed from: e */
    public boolean m10585e() {
        return m10587c() || this.f24715n != 0.0f;
    }

    /* renamed from: f */
    public boolean m10584f() {
        return m10585e() || m10588b();
    }

    /* renamed from: g */
    public String m10583g() {
        return "[R" + this.f24702a + ']';
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        int i = this.f24706e;
        if (i > 0) {
            sb.append(i);
        } else {
            sb.append(this.f24705d);
        }
        List<AbstractC10768d0> list = this.f24708g;
        if (list != null && !list.isEmpty()) {
            for (AbstractC10768d0 d0Var : this.f24708g) {
                sb.append(' ');
                sb.append(d0Var.m10684a());
            }
        }
        if (this.f24707f != null) {
            sb.append(" stableKey(");
            sb.append(this.f24707f);
            sb.append(')');
        }
        if (this.f24709h > 0) {
            sb.append(" resize(");
            sb.append(this.f24709h);
            sb.append(',');
            sb.append(this.f24710i);
            sb.append(')');
        }
        if (this.f24711j) {
            sb.append(" centerCrop");
        }
        if (this.f24713l) {
            sb.append(" centerInside");
        }
        if (this.f24715n != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.f24715n);
            if (this.f24718q) {
                sb.append(" @ ");
                sb.append(this.f24716o);
                sb.append(',');
                sb.append(this.f24717p);
            }
            sb.append(')');
        }
        if (this.f24719r) {
            sb.append(" purgeable");
        }
        if (this.f24720s != null) {
            sb.append(' ');
            sb.append(this.f24720s);
        }
        sb.append('}');
        return sb.toString();
    }
}
