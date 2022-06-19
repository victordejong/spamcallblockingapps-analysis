package androidx.work.impl.p012m.p014f;

import android.content.Context;
import androidx.work.impl.utils.p017o.AbstractC0537a;
/* renamed from: androidx.work.impl.m.f.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/g.class */
public class C0502g {

    /* renamed from: e */
    private static C0502g f2578e;

    /* renamed from: a */
    private a f2579a;

    /* renamed from: b */
    private b f2580b;

    /* renamed from: c */
    private e f2581c;

    /* renamed from: d */
    private f f2582d;

    private C0502g(Context context, AbstractC0537a abstractC0537a) {
        Context applicationContext = context.getApplicationContext();
        this.f2579a = new a(applicationContext, abstractC0537a);
        this.f2580b = new b(applicationContext, abstractC0537a);
        this.f2581c = new e(applicationContext, abstractC0537a);
        this.f2582d = new f(applicationContext, abstractC0537a);
    }

    /* renamed from: c */
    public static C0502g m4424c(Context context, AbstractC0537a abstractC0537a) {
        C0502g c0502g;
        synchronized (C0502g.class) {
            try {
                if (f2578e == null) {
                    f2578e = new C0502g(context, abstractC0537a);
                }
                c0502g = f2578e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c0502g;
    }

    /* renamed from: a */
    public a m4426a() {
        return this.f2579a;
    }

    /* renamed from: b */
    public b m4425b() {
        return this.f2580b;
    }

    /* renamed from: d */
    public e m4423d() {
        return this.f2581c;
    }

    /* renamed from: e */
    public f m4422e() {
        return this.f2582d;
    }
}
