package androidx.recyclerview.widget;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AsyncListDiffer.class */
public class AsyncListDiffer<T> {

    /* renamed from: a */
    private final ListUpdateCallback f4400a;

    /* renamed from: b */
    final AsyncDifferConfig<T> f4401b;

    /* renamed from: c */
    Executor f4402c;

    /* renamed from: d */
    private final List<ListListener<T>> f4403d;
    @NonNull

    /* renamed from: e */
    private List<T> f4404e;

    /* renamed from: f */
    int f4405f;

    /* renamed from: androidx.recyclerview.widget.AsyncListDiffer$1 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AsyncListDiffer$1.class */
    class RunnableC04491 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ List f4406f;

        /* renamed from: g */
        final /* synthetic */ List f4407g;

        /* renamed from: h */
        final /* synthetic */ int f4408h;

        /* renamed from: i */
        final /* synthetic */ Runnable f4409i;

        /* renamed from: j */
        final /* synthetic */ AsyncListDiffer f4410j;

        @Override // java.lang.Runnable
        public void run() {
            final DiffUtil.DiffResult a = DiffUtil.m17805a(new DiffUtil.Callback() { // from class: androidx.recyclerview.widget.AsyncListDiffer.1.1
                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                /* renamed from: a */
                public boolean mo17801a(int i, int i2) {
                    Object obj = RunnableC04491.this.f4406f.get(i);
                    Object obj2 = RunnableC04491.this.f4407g.get(i2);
                    if (obj != null && obj2 != null) {
                        return RunnableC04491.this.f4410j.f4401b.m17866a().m17787a(obj, obj2);
                    }
                    if (obj == null && obj2 == null) {
                        return true;
                    }
                    throw new AssertionError();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                /* renamed from: b */
                public boolean mo17800b(int i, int i2) {
                    Object obj = RunnableC04491.this.f4406f.get(i);
                    Object obj2 = RunnableC04491.this.f4407g.get(i2);
                    if (obj != null && obj2 != null) {
                        return RunnableC04491.this.f4410j.f4401b.m17866a().m17786b(obj, obj2);
                    }
                    return obj == null && obj2 == null;
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                @Nullable
                /* renamed from: c */
                public Object mo17799c(int i, int i2) {
                    Object obj = RunnableC04491.this.f4406f.get(i);
                    Object obj2 = RunnableC04491.this.f4407g.get(i2);
                    if (obj != null && obj2 != null) {
                        return RunnableC04491.this.f4410j.f4401b.m17866a().m17785c(obj, obj2);
                    }
                    throw new AssertionError();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                /* renamed from: d */
                public int mo17798d() {
                    return RunnableC04491.this.f4407g.size();
                }

                @Override // androidx.recyclerview.widget.DiffUtil.Callback
                /* renamed from: e */
                public int mo17797e() {
                    return RunnableC04491.this.f4406f.size();
                }
            });
            this.f4410j.f4402c.execute(new Runnable() { // from class: androidx.recyclerview.widget.AsyncListDiffer.1.2
                @Override // java.lang.Runnable
                public void run() {
                    RunnableC04491 r0 = RunnableC04491.this;
                    AsyncListDiffer asyncListDiffer = r0.f4410j;
                    if (asyncListDiffer.f4405f == r0.f4408h) {
                        asyncListDiffer.m17864b(r0.f4407g, a, r0.f4409i);
                    }
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AsyncListDiffer$ListListener.class */
    public interface ListListener<T> {
        /* renamed from: a */
        void mo17567a(@NonNull List<T> list, @NonNull List<T> list2);
    }

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/AsyncListDiffer$MainThreadExecutor.class */
    private static class MainThreadExecutor implements Executor {

        /* renamed from: f */
        final Handler f4414f = new Handler(Looper.getMainLooper());

        MainThreadExecutor() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(@NonNull Runnable runnable) {
            this.f4414f.post(runnable);
        }
    }

    static {
        new MainThreadExecutor();
    }

    /* renamed from: c */
    private void m17863c(@NonNull List<T> list, @Nullable Runnable runnable) {
        for (ListListener<T> listListener : this.f4403d) {
            listListener.mo17567a(list, this.f4404e);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    @NonNull
    /* renamed from: a */
    public List<T> m17865a() {
        return this.f4404e;
    }

    /* renamed from: b */
    void m17864b(@NonNull List<T> list, @NonNull DiffUtil.DiffResult diffResult, @Nullable Runnable runnable) {
        List<T> list2 = this.f4404e;
        this.f4404e = Collections.unmodifiableList(list);
        diffResult.m17793d(this.f4400a);
        m17863c(list2, runnable);
    }
}
