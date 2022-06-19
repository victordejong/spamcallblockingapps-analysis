package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0381h;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: androidx.recyclerview.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c.class */
public final class C0371c<T> {

    /* renamed from: a */
    private final Executor f2027a;

    /* renamed from: b */
    private final Executor f2028b;

    /* renamed from: c */
    private final C0381h.AbstractC0385d<T> f2029c;

    /* renamed from: androidx.recyclerview.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/c$a.class */
    public static final class C0372a<T> {

        /* renamed from: d */
        private static final Object f2030d = new Object();

        /* renamed from: e */
        private static Executor f2031e;

        /* renamed from: a */
        private Executor f2032a;

        /* renamed from: b */
        private Executor f2033b;

        /* renamed from: c */
        private final C0381h.AbstractC0385d<T> f2034c;

        public C0372a(C0381h.AbstractC0385d<T> abstractC0385d) {
            this.f2034c = abstractC0385d;
        }

        /* renamed from: a */
        public C0371c<T> m4987a() {
            if (this.f2033b == null) {
                synchronized (f2030d) {
                    if (f2031e == null) {
                        f2031e = Executors.newFixedThreadPool(2);
                    }
                }
                this.f2033b = f2031e;
            }
            return new C0371c<>(this.f2032a, this.f2033b, this.f2034c);
        }
    }

    C0371c(Executor executor, Executor executor2, C0381h.AbstractC0385d<T> abstractC0385d) {
        this.f2027a = executor;
        this.f2028b = executor2;
        this.f2029c = abstractC0385d;
    }

    /* renamed from: a */
    public Executor m4990a() {
        return this.f2028b;
    }

    /* renamed from: b */
    public C0381h.AbstractC0385d<T> m4989b() {
        return this.f2029c;
    }

    /* renamed from: c */
    public Executor m4988c() {
        return this.f2027a;
    }
}
