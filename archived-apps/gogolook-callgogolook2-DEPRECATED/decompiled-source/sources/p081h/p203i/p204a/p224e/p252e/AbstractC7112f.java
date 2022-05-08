package p081h.p203i.p204a.p224e.p252e;

import android.content.Context;
import android.os.IBinder;
import p081h.p203i.p204a.p224e.p235d.C6799g;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
/* renamed from: h.i.a.e.e.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/e/f.class */
public abstract class AbstractC7112f<T> {

    /* renamed from: a */
    public final String f17227a;

    /* renamed from: b */
    public T f17228b;

    /* renamed from: h.i.a.e.e.f$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/e/f$a.class */
    public static class C7113a extends Exception {
        public C7113a(String str) {
            super(str);
        }

        public C7113a(String str, Throwable th) {
            super(str, th);
        }
    }

    public AbstractC7112f(String str) {
        this.f17227a = str;
    }

    /* renamed from: a */
    public final T m21057a(Context context) throws C7113a {
        if (this.f17228b == null) {
            C7021t.m21290a(context);
            Context remoteContext = C6799g.getRemoteContext(context);
            if (remoteContext != null) {
                try {
                    this.f17228b = mo20463a((IBinder) remoteContext.getClassLoader().loadClass(this.f17227a).newInstance());
                } catch (ClassNotFoundException e) {
                    throw new C7113a("Could not load creator class.", e);
                } catch (IllegalAccessException e2) {
                    throw new C7113a("Could not access creator.", e2);
                } catch (InstantiationException e3) {
                    throw new C7113a("Could not instantiate creator.", e3);
                }
            } else {
                throw new C7113a("Could not get remote context.");
            }
        }
        return this.f17228b;
    }

    /* renamed from: a */
    public abstract T mo20463a(IBinder iBinder);
}
