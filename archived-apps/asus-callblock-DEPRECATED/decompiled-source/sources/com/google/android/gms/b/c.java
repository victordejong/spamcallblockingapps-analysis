package com.google.android.gms.b;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.common.l;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/c.class */
public abstract class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f3916a;

    /* renamed from: b  reason: collision with root package name */
    private T f3917b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/b/c$a.class */
    public static final class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str) {
        this.f3916a = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T a(Context context) {
        if (this.f3917b == null) {
            b.a(context);
            Context c = l.c(context);
            if (c == null) {
                throw new a("Could not get remote context.");
            }
            try {
                this.f3917b = a((IBinder) c.getClassLoader().loadClass(this.f3916a).newInstance());
            } catch (ClassNotFoundException e) {
                throw new a("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new a("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new a("Could not instantiate creator.", e3);
            }
        }
        return this.f3917b;
    }

    public abstract T a(IBinder iBinder);
}
