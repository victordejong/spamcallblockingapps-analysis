package com.b.a;

import com.asus.updatesdk.BuildConfig;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/b/a/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final d f3306a;

    /* renamed from: b  reason: collision with root package name */
    public static final d f3307b;
    public final boolean c;
    public final boolean d;
    public final int e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final int i;
    public final int j;
    public final boolean k;
    String l;
    private final int m;
    private final boolean n;

    /* loaded from: classes-dex2jar.jar:com/b/a/d$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f3308a;

        /* renamed from: b  reason: collision with root package name */
        boolean f3309b;
        int c = -1;
        int d = -1;
        int e = -1;
        boolean f;
        boolean g;

        public final d a() {
            return new d(this, (byte) 0);
        }
    }

    static {
        a aVar = new a();
        aVar.f3308a = true;
        f3306a = aVar.a();
        a aVar2 = new a();
        aVar2.f = true;
        long seconds = TimeUnit.SECONDS.toSeconds(2147483647L);
        aVar2.d = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
        f3307b = aVar2.a();
    }

    private d(a aVar) {
        this.c = aVar.f3308a;
        this.d = aVar.f3309b;
        this.e = aVar.c;
        this.m = -1;
        this.f = false;
        this.g = false;
        this.h = false;
        this.i = aVar.d;
        this.j = aVar.e;
        this.k = aVar.f;
        this.n = aVar.g;
    }

    /* synthetic */ d(a aVar, byte b2) {
        this(aVar);
    }

    private d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, String str) {
        this.c = z;
        this.d = z2;
        this.e = i;
        this.m = i2;
        this.f = z3;
        this.g = z4;
        this.h = z5;
        this.i = i3;
        this.j = i4;
        this.k = z6;
        this.n = z7;
        this.l = str;
    }

    public static d a(p pVar) {
        String str;
        boolean z = false;
        boolean z2 = false;
        int i = -1;
        int i2 = -1;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        int i3 = -1;
        int i4 = -1;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = true;
        String str2 = null;
        int length = pVar.f3336a.length / 2;
        for (int i5 = 0; i5 < length; i5++) {
            String a2 = pVar.a(i5);
            String b2 = pVar.b(i5);
            if (a2.equalsIgnoreCase("Cache-Control")) {
                if (str2 != null) {
                    z8 = false;
                } else {
                    str2 = b2;
                }
            } else if (a2.equalsIgnoreCase("Pragma")) {
                z8 = false;
            } else {
                z = z;
                z8 = z8;
                z7 = z7;
                z6 = z6;
                i4 = i4;
                i3 = i3;
                z5 = z5;
                z4 = z4;
                z3 = z3;
                i2 = i2;
                i = i;
                z2 = z2;
                str2 = str2;
            }
            int i6 = 0;
            while (true) {
                z2 = z2;
                i = i;
                i2 = i2;
                z3 = z3;
                z4 = z4;
                z5 = z5;
                i3 = i3;
                i4 = i4;
                z6 = z6;
                z7 = z7;
                z = z;
                if (i6 < b2.length()) {
                    int a3 = com.b.a.a.a.d.a(b2, i6, "=,;");
                    String trim = b2.substring(i6, a3).trim();
                    if (a3 == b2.length() || b2.charAt(a3) == ',' || b2.charAt(a3) == ';') {
                        i6 = a3 + 1;
                        str = null;
                    } else {
                        int a4 = com.b.a.a.a.d.a(b2, a3 + 1);
                        if (a4 >= b2.length() || b2.charAt(a4) != '\"') {
                            i6 = com.b.a.a.a.d.a(b2, a4, ",;");
                            str = b2.substring(a4, i6).trim();
                        } else {
                            int i7 = a4 + 1;
                            int a5 = com.b.a.a.a.d.a(b2, i7, "\"");
                            str = b2.substring(i7, a5);
                            i6 = a5 + 1;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(trim)) {
                        z = true;
                    } else if ("no-store".equalsIgnoreCase(trim)) {
                        z2 = true;
                    } else if ("max-age".equalsIgnoreCase(trim)) {
                        i = com.b.a.a.a.d.b(str, -1);
                    } else if ("s-maxage".equalsIgnoreCase(trim)) {
                        i2 = com.b.a.a.a.d.b(str, -1);
                    } else if ("private".equalsIgnoreCase(trim)) {
                        z3 = true;
                    } else if ("public".equalsIgnoreCase(trim)) {
                        z4 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(trim)) {
                        z5 = true;
                    } else if ("max-stale".equalsIgnoreCase(trim)) {
                        i3 = com.b.a.a.a.d.b(str, Integer.MAX_VALUE);
                    } else if ("min-fresh".equalsIgnoreCase(trim)) {
                        i4 = com.b.a.a.a.d.b(str, -1);
                    } else if ("only-if-cached".equalsIgnoreCase(trim)) {
                        z6 = true;
                    } else if ("no-transform".equalsIgnoreCase(trim)) {
                        z7 = true;
                    }
                }
            }
        }
        if (!z8) {
            str2 = null;
        }
        return new d(z, z2, i, i2, z3, z4, z5, i3, i4, z6, z7, str2);
    }

    public final String toString() {
        String str = this.l;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (this.c) {
                sb.append("no-cache, ");
            }
            if (this.d) {
                sb.append("no-store, ");
            }
            if (this.e != -1) {
                sb.append("max-age=").append(this.e).append(", ");
            }
            if (this.m != -1) {
                sb.append("s-maxage=").append(this.m).append(", ");
            }
            if (this.f) {
                sb.append("private, ");
            }
            if (this.g) {
                sb.append("public, ");
            }
            if (this.h) {
                sb.append("must-revalidate, ");
            }
            if (this.i != -1) {
                sb.append("max-stale=").append(this.i).append(", ");
            }
            if (this.j != -1) {
                sb.append("min-fresh=").append(this.j).append(", ");
            }
            if (this.k) {
                sb.append("only-if-cached, ");
            }
            if (this.n) {
                sb.append("no-transform, ");
            }
            if (sb.length() == 0) {
                str = BuildConfig.FLAVOR;
            } else {
                sb.delete(sb.length() - 2, sb.length());
                str = sb.toString();
            }
            this.l = str;
        }
        return str;
    }
}
