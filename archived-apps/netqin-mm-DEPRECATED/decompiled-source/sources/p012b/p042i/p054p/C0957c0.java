package p012b.p042i.p054p;

import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Objects;
import p012b.p042i.p046j.C0892c;
import p012b.p042i.p053o.C0943c;
import p012b.p042i.p053o.C0948h;
/* renamed from: b.i.p.c0 */
/* loaded from: classes-dex2jar.jar:b/i/p/c0.class */
public class C0957c0 {

    /* renamed from: b */
    public static final C0957c0 f4203b = new C0958a().m35404a().m35418a().m35414b().m35412c();

    /* renamed from: a */
    public final C0966i f4204a;

    /* renamed from: b.i.p.c0$a */
    /* loaded from: classes-dex2jar.jar:b/i/p/c0$a.class */
    public static final class C0958a {

        /* renamed from: a */
        public final C0961d f4205a;

        public C0958a() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                this.f4205a = new C0960c();
            } else if (i >= 20) {
                this.f4205a = new C0959b();
            } else {
                this.f4205a = new C0961d();
            }
        }

        public C0958a(C0957c0 c0Var) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                this.f4205a = new C0960c(c0Var);
            } else if (i >= 20) {
                this.f4205a = new C0959b(c0Var);
            } else {
                this.f4205a = new C0961d(c0Var);
            }
        }

        /* renamed from: a */
        public C0958a m35403a(C0892c cVar) {
            this.f4205a.mo35399a(cVar);
            return this;
        }

        /* renamed from: a */
        public C0957c0 m35404a() {
            return this.f4205a.mo35400a();
        }

        /* renamed from: b */
        public C0958a m35402b(C0892c cVar) {
            this.f4205a.mo35398b(cVar);
            return this;
        }
    }

    /* renamed from: b.i.p.c0$b */
    /* loaded from: classes-dex2jar.jar:b/i/p/c0$b.class */
    public static class C0959b extends C0961d {

        /* renamed from: c */
        public static Field f4206c;

        /* renamed from: d */
        public static boolean f4207d = false;

        /* renamed from: e */
        public static Constructor<WindowInsets> f4208e;

        /* renamed from: f */
        public static boolean f4209f = false;

        /* renamed from: b */
        public WindowInsets f4210b;

        public C0959b() {
            this.f4210b = m35401b();
        }

        public C0959b(C0957c0 c0Var) {
            this.f4210b = c0Var.m35405j();
        }

        /* renamed from: b */
        public static WindowInsets m35401b() {
            if (!f4207d) {
                try {
                    f4206c = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e);
                }
                f4207d = true;
            }
            Field field = f4206c;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e2) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e2);
                }
            }
            if (!f4209f) {
                try {
                    f4208e = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e3) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e3);
                }
                f4209f = true;
            }
            Constructor<WindowInsets> constructor = f4208e;
            if (constructor == null) {
                return null;
            }
            try {
                return constructor.newInstance(new Rect());
            } catch (ReflectiveOperationException e4) {
                Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e4);
                return null;
            }
        }

        @Override // p012b.p042i.p054p.C0957c0.C0961d
        /* renamed from: a */
        public C0957c0 mo35400a() {
            return C0957c0.m35416a(this.f4210b);
        }

        @Override // p012b.p042i.p054p.C0957c0.C0961d
        /* renamed from: b */
        public void mo35398b(C0892c cVar) {
            WindowInsets windowInsets = this.f4210b;
            if (windowInsets != null) {
                this.f4210b = windowInsets.replaceSystemWindowInsets(cVar.f4085a, cVar.f4086b, cVar.f4087c, cVar.f4088d);
            }
        }
    }

    /* renamed from: b.i.p.c0$c */
    /* loaded from: classes-dex2jar.jar:b/i/p/c0$c.class */
    public static class C0960c extends C0961d {

        /* renamed from: b */
        public final WindowInsets.Builder f4211b;

        public C0960c() {
            this.f4211b = new WindowInsets.Builder();
        }

        public C0960c(C0957c0 c0Var) {
            WindowInsets j = c0Var.m35405j();
            this.f4211b = j != null ? new WindowInsets.Builder(j) : new WindowInsets.Builder();
        }

        @Override // p012b.p042i.p054p.C0957c0.C0961d
        /* renamed from: a */
        public C0957c0 mo35400a() {
            return C0957c0.m35416a(this.f4211b.build());
        }

        @Override // p012b.p042i.p054p.C0957c0.C0961d
        /* renamed from: a */
        public void mo35399a(C0892c cVar) {
            this.f4211b.setStableInsets(cVar.m35600a());
        }

        @Override // p012b.p042i.p054p.C0957c0.C0961d
        /* renamed from: b */
        public void mo35398b(C0892c cVar) {
            this.f4211b.setSystemWindowInsets(cVar.m35600a());
        }
    }

    /* renamed from: b.i.p.c0$d */
    /* loaded from: classes-dex2jar.jar:b/i/p/c0$d.class */
    public static class C0961d {

        /* renamed from: a */
        public final C0957c0 f4212a;

        public C0961d() {
            this(new C0957c0((C0957c0) null));
        }

        public C0961d(C0957c0 c0Var) {
            this.f4212a = c0Var;
        }

        /* renamed from: a */
        public C0957c0 mo35400a() {
            return this.f4212a;
        }

        /* renamed from: a */
        public void mo35399a(C0892c cVar) {
        }

        /* renamed from: b */
        public void mo35398b(C0892c cVar) {
        }
    }

    /* renamed from: b.i.p.c0$e */
    /* loaded from: classes-dex2jar.jar:b/i/p/c0$e.class */
    public static class C0962e extends C0966i {

        /* renamed from: b */
        public final WindowInsets f4213b;

        /* renamed from: c */
        public C0892c f4214c;

        public C0962e(C0957c0 c0Var, WindowInsets windowInsets) {
            super(c0Var);
            this.f4214c = null;
            this.f4213b = windowInsets;
        }

        public C0962e(C0957c0 c0Var, C0962e eVar) {
            this(c0Var, new WindowInsets(eVar.f4213b));
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: a */
        public C0957c0 mo35396a(int i, int i2, int i3, int i4) {
            C0958a aVar = new C0958a(C0957c0.m35416a(this.f4213b));
            aVar.m35402b(C0957c0.m35415a(mo35391f(), i, i2, i3, i4));
            aVar.m35403a(C0957c0.m35415a(mo35392e(), i, i2, i3, i4));
            return aVar.m35404a();
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: f */
        public final C0892c mo35391f() {
            if (this.f4214c == null) {
                this.f4214c = C0892c.m35599a(this.f4213b.getSystemWindowInsetLeft(), this.f4213b.getSystemWindowInsetTop(), this.f4213b.getSystemWindowInsetRight(), this.f4213b.getSystemWindowInsetBottom());
            }
            return this.f4214c;
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: h */
        public boolean mo35389h() {
            return this.f4213b.isRound();
        }
    }

    /* renamed from: b.i.p.c0$f */
    /* loaded from: classes-dex2jar.jar:b/i/p/c0$f.class */
    public static class C0963f extends C0962e {

        /* renamed from: d */
        public C0892c f4215d = null;

        public C0963f(C0957c0 c0Var, WindowInsets windowInsets) {
            super(c0Var, windowInsets);
        }

        public C0963f(C0957c0 c0Var, C0963f fVar) {
            super(c0Var, fVar);
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: b */
        public C0957c0 mo35395b() {
            return C0957c0.m35416a(this.f4213b.consumeStableInsets());
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: c */
        public C0957c0 mo35394c() {
            return C0957c0.m35416a(this.f4213b.consumeSystemWindowInsets());
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: e */
        public final C0892c mo35392e() {
            if (this.f4215d == null) {
                this.f4215d = C0892c.m35599a(this.f4213b.getStableInsetLeft(), this.f4213b.getStableInsetTop(), this.f4213b.getStableInsetRight(), this.f4213b.getStableInsetBottom());
            }
            return this.f4215d;
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: g */
        public boolean mo35390g() {
            return this.f4213b.isConsumed();
        }
    }

    /* renamed from: b.i.p.c0$g */
    /* loaded from: classes-dex2jar.jar:b/i/p/c0$g.class */
    public static class C0964g extends C0963f {
        public C0964g(C0957c0 c0Var, WindowInsets windowInsets) {
            super(c0Var, windowInsets);
        }

        public C0964g(C0957c0 c0Var, C0964g gVar) {
            super(c0Var, gVar);
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: a */
        public C0957c0 mo35397a() {
            return C0957c0.m35416a(this.f4213b.consumeDisplayCutout());
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: d */
        public C0956c mo35393d() {
            return C0956c.m35419a(this.f4213b.getDisplayCutout());
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0964g)) {
                return false;
            }
            return Objects.equals(this.f4213b, ((C0964g) obj).f4213b);
        }

        @Override // p012b.p042i.p054p.C0957c0.C0966i
        public int hashCode() {
            return this.f4213b.hashCode();
        }
    }

    /* renamed from: b.i.p.c0$h */
    /* loaded from: classes-dex2jar.jar:b/i/p/c0$h.class */
    public static class C0965h extends C0964g {
        public C0965h(C0957c0 c0Var, WindowInsets windowInsets) {
            super(c0Var, windowInsets);
        }

        public C0965h(C0957c0 c0Var, C0965h hVar) {
            super(c0Var, hVar);
        }

        @Override // p012b.p042i.p054p.C0957c0.C0962e, p012b.p042i.p054p.C0957c0.C0966i
        /* renamed from: a */
        public C0957c0 mo35396a(int i, int i2, int i3, int i4) {
            return C0957c0.m35416a(this.f4213b.inset(i, i2, i3, i4));
        }
    }

    /* renamed from: b.i.p.c0$i */
    /* loaded from: classes-dex2jar.jar:b/i/p/c0$i.class */
    public static class C0966i {

        /* renamed from: a */
        public final C0957c0 f4216a;

        public C0966i(C0957c0 c0Var) {
            this.f4216a = c0Var;
        }

        /* renamed from: a */
        public C0957c0 mo35397a() {
            return this.f4216a;
        }

        /* renamed from: a */
        public C0957c0 mo35396a(int i, int i2, int i3, int i4) {
            return C0957c0.f4203b;
        }

        /* renamed from: b */
        public C0957c0 mo35395b() {
            return this.f4216a;
        }

        /* renamed from: c */
        public C0957c0 mo35394c() {
            return this.f4216a;
        }

        /* renamed from: d */
        public C0956c mo35393d() {
            return null;
        }

        /* renamed from: e */
        public C0892c mo35392e() {
            return C0892c.f4084e;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0966i)) {
                return false;
            }
            C0966i iVar = (C0966i) obj;
            if (mo35389h() != iVar.mo35389h() || mo35390g() != iVar.mo35390g() || !C0943c.m35448a(mo35391f(), iVar.mo35391f()) || !C0943c.m35448a(mo35392e(), iVar.mo35392e()) || !C0943c.m35448a(mo35393d(), iVar.mo35393d())) {
                z = false;
            }
            return z;
        }

        /* renamed from: f */
        public C0892c mo35391f() {
            return C0892c.f4084e;
        }

        /* renamed from: g */
        public boolean mo35390g() {
            return false;
        }

        /* renamed from: h */
        public boolean mo35389h() {
            return false;
        }

        public int hashCode() {
            return C0943c.m35447a(Boolean.valueOf(mo35389h()), Boolean.valueOf(mo35390g()), mo35391f(), mo35392e(), mo35393d());
        }
    }

    public C0957c0(WindowInsets windowInsets) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f4204a = new C0965h(this, windowInsets);
        } else if (i >= 28) {
            this.f4204a = new C0964g(this, windowInsets);
        } else if (i >= 21) {
            this.f4204a = new C0963f(this, windowInsets);
        } else if (i >= 20) {
            this.f4204a = new C0962e(this, windowInsets);
        } else {
            this.f4204a = new C0966i(this);
        }
    }

    public C0957c0(C0957c0 c0Var) {
        if (c0Var != null) {
            C0966i iVar = c0Var.f4204a;
            if (Build.VERSION.SDK_INT >= 29 && (iVar instanceof C0965h)) {
                this.f4204a = new C0965h(this, (C0965h) iVar);
            } else if (Build.VERSION.SDK_INT >= 28 && (iVar instanceof C0964g)) {
                this.f4204a = new C0964g(this, (C0964g) iVar);
            } else if (Build.VERSION.SDK_INT >= 21 && (iVar instanceof C0963f)) {
                this.f4204a = new C0963f(this, (C0963f) iVar);
            } else if (Build.VERSION.SDK_INT < 20 || !(iVar instanceof C0962e)) {
                this.f4204a = new C0966i(this);
            } else {
                this.f4204a = new C0962e(this, (C0962e) iVar);
            }
        } else {
            this.f4204a = new C0966i(this);
        }
    }

    /* renamed from: a */
    public static C0892c m35415a(C0892c cVar, int i, int i2, int i3, int i4) {
        int max = Math.max(0, cVar.f4085a - i);
        int max2 = Math.max(0, cVar.f4086b - i2);
        int max3 = Math.max(0, cVar.f4087c - i3);
        int max4 = Math.max(0, cVar.f4088d - i4);
        return (max == i && max2 == i2 && max3 == i3 && max4 == i4) ? cVar : C0892c.m35599a(max, max2, max3, max4);
    }

    /* renamed from: a */
    public static C0957c0 m35416a(WindowInsets windowInsets) {
        C0948h.m35442a(windowInsets);
        return new C0957c0(windowInsets);
    }

    /* renamed from: a */
    public C0957c0 m35418a() {
        return this.f4204a.mo35397a();
    }

    /* renamed from: a */
    public C0957c0 m35417a(int i, int i2, int i3, int i4) {
        return this.f4204a.mo35396a(i, i2, i3, i4);
    }

    /* renamed from: b */
    public C0957c0 m35414b() {
        return this.f4204a.mo35395b();
    }

    @Deprecated
    /* renamed from: b */
    public C0957c0 m35413b(int i, int i2, int i3, int i4) {
        C0958a aVar = new C0958a(this);
        aVar.m35402b(C0892c.m35599a(i, i2, i3, i4));
        return aVar.m35404a();
    }

    /* renamed from: c */
    public C0957c0 m35412c() {
        return this.f4204a.mo35394c();
    }

    /* renamed from: d */
    public int m35411d() {
        return m35407h().f4088d;
    }

    /* renamed from: e */
    public int m35410e() {
        return m35407h().f4085a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0957c0)) {
            return false;
        }
        return C0943c.m35448a(this.f4204a, ((C0957c0) obj).f4204a);
    }

    /* renamed from: f */
    public int m35409f() {
        return m35407h().f4087c;
    }

    /* renamed from: g */
    public int m35408g() {
        return m35407h().f4086b;
    }

    /* renamed from: h */
    public C0892c m35407h() {
        return this.f4204a.mo35391f();
    }

    public int hashCode() {
        C0966i iVar = this.f4204a;
        return iVar == null ? 0 : iVar.hashCode();
    }

    /* renamed from: i */
    public boolean m35406i() {
        return this.f4204a.mo35390g();
    }

    /* renamed from: j */
    public WindowInsets m35405j() {
        C0966i iVar = this.f4204a;
        return iVar instanceof C0962e ? ((C0962e) iVar).f4213b : null;
    }
}
