package com.google.android.gms.common.api.internal;

import android.app.Activity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaa.class */
public final class zaa extends ActivityLifecycleObserver {

    /* renamed from: a */
    private final WeakReference<C1634a> f6427a;

    /* renamed from: com.google.android.gms.common.api.internal.zaa$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaa$a.class */
    static class C1634a extends LifecycleCallback {

        /* renamed from: b */
        private List<Runnable> f6428b = new ArrayList();

        private C1634a(LifecycleFragment lifecycleFragment) {
            super(lifecycleFragment);
            this.f6308a.addCallback("LifecycleObserverOnStop", this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public final void m5880a(Runnable runnable) {
            synchronized (this) {
                this.f6428b.add(runnable);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public static C1634a m5879b(Activity activity) {
            C1634a aVar;
            synchronized (activity) {
                LifecycleFragment fragment = getFragment(activity);
                C1634a aVar2 = (C1634a) fragment.getCallbackOrNull("LifecycleObserverOnStop", C1634a.class);
                aVar = aVar2;
                if (aVar2 == null) {
                    aVar = new C1634a(fragment);
                }
            }
            return aVar;
        }

        @Override // com.google.android.gms.common.api.internal.LifecycleCallback
        public void onStop() {
            List<Runnable> list;
            synchronized (this) {
                list = this.f6428b;
                this.f6428b = new ArrayList();
            }
            for (Runnable runnable : list) {
                runnable.run();
            }
        }
    }

    public zaa(Activity activity) {
        this(C1634a.m5879b(activity));
    }

    private zaa(C1634a aVar) {
        this.f6427a = new WeakReference<>(aVar);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        C1634a aVar = this.f6427a.get();
        if (aVar != null) {
            aVar.m5880a(runnable);
            return this;
        }
        throw new IllegalStateException("The target activity has already been GC'd");
    }
}
