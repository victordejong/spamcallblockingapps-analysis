package androidx.work.impl.p012m.p014f;

import android.content.Context;
import androidx.work.AbstractC0541m;
import androidx.work.impl.p012m.AbstractC0497a;
import androidx.work.impl.utils.p017o.AbstractC0537a;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
/* renamed from: androidx.work.impl.m.f.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/d.class */
public abstract class AbstractC0500d<T> {

    /* renamed from: f */
    private static final String f2568f = AbstractC0541m.m4305f("ConstraintTracker");

    /* renamed from: a */
    protected final AbstractC0537a f2569a;

    /* renamed from: b */
    protected final Context f2570b;

    /* renamed from: c */
    private final Object f2571c = new Object();

    /* renamed from: d */
    private final Set<AbstractC0497a<T>> f2572d = new LinkedHashSet();

    /* renamed from: e */
    T f2573e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.m.f.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/m/f/d$a.class */
    public class RunnableC0501a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ List f2574f;

        RunnableC0501a(List list) {
            AbstractC0500d.this = r4;
            this.f2574f = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (AbstractC0497a abstractC0497a : this.f2574f) {
                abstractC0497a.m4441a(AbstractC0500d.this.f2573e);
            }
        }
    }

    AbstractC0500d(Context context, AbstractC0537a abstractC0537a) {
        this.f2570b = context.getApplicationContext();
        this.f2569a = abstractC0537a;
    }

    /* renamed from: a */
    public void m4432a(AbstractC0497a<T> abstractC0497a) {
        synchronized (this.f2571c) {
            if (this.f2572d.add(abstractC0497a)) {
                if (this.f2572d.size() == 1) {
                    this.f2573e = m4431b();
                    AbstractC0541m.m4308c().m4310a(f2568f, String.format("%s: initial state = %s", getClass().getSimpleName(), this.f2573e), new Throwable[0]);
                    m4428e();
                }
                abstractC0497a.m4441a(this.f2573e);
            }
        }
    }

    /* renamed from: b */
    public abstract T m4431b();

    /* renamed from: c */
    public void m4430c(AbstractC0497a<T> abstractC0497a) {
        synchronized (this.f2571c) {
            if (this.f2572d.remove(abstractC0497a) && this.f2572d.isEmpty()) {
                m4427f();
            }
        }
    }

    /* renamed from: d */
    public void m4429d(T t) {
        synchronized (this.f2571c) {
            T t2 = this.f2573e;
            if (t2 != t && (t2 == null || !t2.equals(t))) {
                this.f2573e = t;
                this.f2569a.m4319a().execute(new RunnableC0501a(new ArrayList(this.f2572d)));
            }
        }
    }

    /* renamed from: e */
    public abstract void m4428e();

    /* renamed from: f */
    public abstract void m4427f();
}
