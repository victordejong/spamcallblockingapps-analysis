package p459j.p460a.p474c0.p475c.p479z;

import android.util.LruCache;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11685y;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.z.p */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/p.class */
public class C11670p<T extends AbstractC11685y> extends LruCache<String, T> {

    /* renamed from: a */
    public final String f26201a;

    public C11670p(int i, int i2, String str) {
        super(i);
        this.f26201a = str;
    }

    /* renamed from: a */
    public T m8670a(String str) {
        T t;
        synchronized (this) {
            t = (T) ((AbstractC11685y) get(str));
            if (t != null) {
                if (C12153d0.m6992a("MessagingAppImage", 2)) {
                    C12153d0.m6983d("MessagingAppImage", "cache hit in mediaCache @ " + m8669b() + ", total cache hit = " + hitCount() + ", total cache miss = " + missCount());
                }
                t.m8617b();
            } else if (C12153d0.m6992a("MessagingAppImage", 2)) {
                C12153d0.m6983d("MessagingAppImage", "cache miss in mediaCache @ " + m8669b() + ", total cache hit = " + hitCount() + ", total cache miss = " + missCount());
            }
        }
        return t;
    }

    /* renamed from: a */
    public T mo8637a(String str, T t) {
        T t2;
        synchronized (this) {
            t.m8617b();
            t2 = (T) ((AbstractC11685y) put(str, t));
        }
        return t2;
    }

    /* renamed from: a */
    public void m8671a() {
        evictAll();
    }

    /* renamed from: a */
    public void entryRemoved(boolean z, String str, T t, T t2) {
        synchronized (this) {
            t.m8606l();
        }
    }

    /* renamed from: b */
    public int sizeOf(String str, T t) {
        int h = t.mo8610h() / 1024;
        int i = h;
        if (h == 0) {
            i = 1;
        }
        return i;
    }

    /* renamed from: b */
    public String m8669b() {
        return this.f26201a;
    }
}
