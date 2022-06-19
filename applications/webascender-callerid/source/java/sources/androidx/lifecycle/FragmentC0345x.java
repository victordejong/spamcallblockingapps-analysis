package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0329h;
/* renamed from: androidx.lifecycle.x */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/x.class */
public class FragmentC0345x extends Fragment {

    /* renamed from: f */
    private AbstractC0346a f1720f;

    /* renamed from: androidx.lifecycle.x$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/x$a.class */
    public interface AbstractC0346a {
        /* renamed from: f */
        void m5412f();

        /* renamed from: j */
        void m5411j();

        /* renamed from: k */
        void m5410k();
    }

    /* renamed from: androidx.lifecycle.x$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/x$b.class */
    static class C0347b implements Application.ActivityLifecycleCallbacks {
        C0347b() {
        }

        static void registerIn(Activity activity) {
            activity.registerActivityLifecycleCallbacks(new C0347b());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            FragmentC0345x.m5420a(activity, AbstractC0329h.EnumC0331b.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            FragmentC0345x.m5420a(activity, AbstractC0329h.EnumC0331b.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            FragmentC0345x.m5420a(activity, AbstractC0329h.EnumC0331b.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            FragmentC0345x.m5420a(activity, AbstractC0329h.EnumC0331b.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            FragmentC0345x.m5420a(activity, AbstractC0329h.EnumC0331b.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            FragmentC0345x.m5420a(activity, AbstractC0329h.EnumC0331b.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* renamed from: a */
    static void m5420a(Activity activity, AbstractC0329h.EnumC0331b enumC0331b) {
        if (activity instanceof p) {
            ((p) activity).getLifecycle().h(enumC0331b);
        } else if (!(activity instanceof AbstractC0340n)) {
        } else {
            o lifecycle = ((AbstractC0340n) activity).getLifecycle();
            if (!(lifecycle instanceof o)) {
                return;
            }
            lifecycle.h(enumC0331b);
        }
    }

    /* renamed from: b */
    private void m5419b(AbstractC0329h.EnumC0331b enumC0331b) {
        if (Build.VERSION.SDK_INT < 29) {
            m5420a(getActivity(), enumC0331b);
        }
    }

    /* renamed from: c */
    private void m5418c(AbstractC0346a abstractC0346a) {
        if (abstractC0346a != null) {
            abstractC0346a.m5410k();
        }
    }

    /* renamed from: d */
    private void m5417d(AbstractC0346a abstractC0346a) {
        if (abstractC0346a != null) {
            abstractC0346a.m5412f();
        }
    }

    /* renamed from: e */
    private void m5416e(AbstractC0346a abstractC0346a) {
        if (abstractC0346a != null) {
            abstractC0346a.m5411j();
        }
    }

    /* renamed from: f */
    static FragmentC0345x m5415f(Activity activity) {
        return (FragmentC0345x) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    /* renamed from: g */
    public static void m5414g(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            C0347b.registerIn(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0345x(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: h */
    void m5413h(AbstractC0346a abstractC0346a) {
        this.f1720f = abstractC0346a;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m5418c(this.f1720f);
        m5419b(AbstractC0329h.EnumC0331b.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m5419b(AbstractC0329h.EnumC0331b.ON_DESTROY);
        this.f1720f = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m5419b(AbstractC0329h.EnumC0331b.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m5417d(this.f1720f);
        m5419b(AbstractC0329h.EnumC0331b.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        m5416e(this.f1720f);
        m5419b(AbstractC0329h.EnumC0331b.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m5419b(AbstractC0329h.EnumC0331b.ON_STOP);
    }
}
