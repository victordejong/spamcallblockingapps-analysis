package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.recyclerview.widget.C0381h;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
/* renamed from: androidx.recyclerview.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d.class */
public class C0373d<T> {

    /* renamed from: h */
    private static final Executor f2035h = new ExecutorC0377c();

    /* renamed from: a */
    private final AbstractC0393o f2036a;

    /* renamed from: b */
    final C0371c<T> f2037b;

    /* renamed from: c */
    Executor f2038c;

    /* renamed from: e */
    private List<T> f2040e;

    /* renamed from: g */
    int f2042g;

    /* renamed from: d */
    private final List<AbstractC0376b<T>> f2039d = new CopyOnWriteArrayList();

    /* renamed from: f */
    private List<T> f2041f = Collections.emptyList();

    /* renamed from: androidx.recyclerview.widget.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$a.class */
    public class RunnableC0374a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ List f2043f;

        /* renamed from: g */
        final /* synthetic */ List f2044g;

        /* renamed from: h */
        final /* synthetic */ int f2045h;

        /* renamed from: i */
        final /* synthetic */ Runnable f2046i;

        /* renamed from: androidx.recyclerview.widget.d$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$a$b.class */
        class RunnableC0375b implements Runnable {

            /* renamed from: f */
            final /* synthetic */ C0381h.C0384c f2048f;

            RunnableC0375b(C0381h.C0384c c0384c) {
                RunnableC0374a.this = r4;
                this.f2048f = c0384c;
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC0374a runnableC0374a = RunnableC0374a.this;
                C0373d c0373d = C0373d.this;
                if (c0373d.f2042g == runnableC0374a.f2045h) {
                    c0373d.m4984c(runnableC0374a.f2044g, this.f2048f, runnableC0374a.f2046i);
                }
            }
        }

        RunnableC0374a(List list, List list2, int i, Runnable runnable) {
            C0373d.this = r4;
            this.f2043f = list;
            this.f2044g = list2;
            this.f2045h = i;
            this.f2046i = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0373d.this.f2038c.execute(new RunnableC0375b(C0381h.m4940a(new a(this))));
        }
    }

    /* renamed from: androidx.recyclerview.widget.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$b.class */
    public interface AbstractC0376b<T> {
        /* renamed from: a */
        void m4980a(List<T> list, List<T> list2);
    }

    /* renamed from: androidx.recyclerview.widget.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/d$c.class */
    private static class ExecutorC0377c implements Executor {

        /* renamed from: f */
        final Handler f2050f = new Handler(Looper.getMainLooper());

        ExecutorC0377c() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f2050f.post(runnable);
        }
    }

    public C0373d(AbstractC0393o abstractC0393o, C0371c<T> c0371c) {
        this.f2036a = abstractC0393o;
        this.f2037b = c0371c;
        if (c0371c.m4988c() != null) {
            this.f2038c = c0371c.m4988c();
        } else {
            this.f2038c = f2035h;
        }
    }

    /* renamed from: d */
    private void m4983d(List<T> list, Runnable runnable) {
        for (AbstractC0376b<T> abstractC0376b : this.f2039d) {
            abstractC0376b.m4980a(list, this.f2041f);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public void m4986a(AbstractC0376b<T> abstractC0376b) {
        this.f2039d.add(abstractC0376b);
    }

    /* renamed from: b */
    public List<T> m4985b() {
        return this.f2041f;
    }

    /* renamed from: c */
    void m4984c(List<T> list, C0381h.C0384c c0384c, Runnable runnable) {
        List<T> list2 = this.f2041f;
        this.f2040e = list;
        this.f2041f = Collections.unmodifiableList(list);
        c0384c.m4933d(this.f2036a);
        m4983d(list2, runnable);
    }

    /* renamed from: e */
    public void m4982e(List<T> list) {
        m4981f(list, null);
    }

    /* renamed from: f */
    public void m4981f(List<T> list, Runnable runnable) {
        int i = this.f2042g + 1;
        this.f2042g = i;
        List<T> list2 = this.f2040e;
        if (list == list2) {
            if (runnable == null) {
                return;
            }
            runnable.run();
            return;
        }
        List<T> list3 = this.f2041f;
        if (list == null) {
            int size = list2.size();
            this.f2040e = null;
            this.f2041f = Collections.emptyList();
            this.f2036a.onRemoved(0, size);
            m4983d(list3, runnable);
        } else if (list2 != null) {
            this.f2037b.m4990a().execute(new RunnableC0374a(list2, list, i, runnable));
        } else {
            this.f2040e = list;
            this.f2041f = Collections.unmodifiableList(list);
            this.f2036a.onInserted(0, list.size());
            m4983d(list3, runnable);
        }
    }
}
