package androidx.lifecycle;

import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.arch.core.internal.SafeIterableMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/MediatorLiveData.class */
public class MediatorLiveData<T> extends MutableLiveData<T> {

    /* renamed from: k */
    private SafeIterableMap<LiveData<?>, Source<?>> f4048k = new SafeIterableMap<>();

    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/MediatorLiveData$Source.class */
    private static class Source<V> implements Observer<V> {

        /* renamed from: a */
        final LiveData<V> f4049a;

        /* renamed from: b */
        final Observer<? super V> f4050b;

        /* renamed from: c */
        int f4051c = -1;

        Source(LiveData<V> liveData, Observer<? super V> observer) {
            this.f4049a = liveData;
            this.f4050b = observer;
        }

        @Override // androidx.lifecycle.Observer
        /* renamed from: a */
        public void mo6485a(@Nullable V v) {
            if (this.f4051c != this.f4049a.m18201f()) {
                this.f4051c = this.f4049a.m18201f();
                this.f4050b.mo6485a(v);
            }
        }

        /* renamed from: b */
        void m18190b() {
            this.f4049a.m18198i(this);
        }

        /* renamed from: c */
        void m18189c() {
            this.f4049a.mo18128m(this);
        }
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    /* renamed from: j */
    protected void mo6383j() {
        Iterator<Map.Entry<LiveData<?>, Source<?>>> it = this.f4048k.iterator();
        while (it.hasNext()) {
            it.next().getValue().m18190b();
        }
    }

    @Override // androidx.lifecycle.LiveData
    @CallSuper
    /* renamed from: k */
    protected void mo6382k() {
        Iterator<Map.Entry<LiveData<?>, Source<?>>> it = this.f4048k.iterator();
        while (it.hasNext()) {
            it.next().getValue().m18189c();
        }
    }

    @MainThread
    /* renamed from: p */
    public <S> void m18192p(@NonNull LiveData<S> liveData, @NonNull Observer<? super S> observer) {
        Source<?> source = new Source<>(liveData, observer);
        Source<?> h = this.f4048k.mo21134h(liveData, source);
        if (h != null && h.f4050b != observer) {
            throw new IllegalArgumentException("This source was already added with the different observer");
        } else if (h == null && m18200g()) {
            source.m18190b();
        }
    }

    @MainThread
    /* renamed from: q */
    public <S> void m18191q(@NonNull LiveData<S> liveData) {
        Source<?> j = this.f4048k.mo21133j(liveData);
        if (j != null) {
            j.m18189c();
        }
    }
}
