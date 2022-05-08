package android.arch.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.arch.lifecycle.Lifecycle;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.FragmentManager;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:android/arch/lifecycle/LifecycleDispatcher.class */
public class LifecycleDispatcher {
    private static final String REPORT_FRAGMENT_TAG = "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag";
    private static AtomicBoolean sInitialized = new AtomicBoolean(false);

    /* loaded from: classes-dex2jar.jar:android/arch/lifecycle/LifecycleDispatcher$DestructionReportFragment.class */
    public static class DestructionReportFragment extends Fragment {
        protected void dispatch(Lifecycle.Event event) {
            LifecycleDispatcher.dispatchIfLifecycleOwner(getParentFragment(), event);
        }

        @Override // android.support.p001v4.app.Fragment
        public void onDestroy() {
            super.onDestroy();
            dispatch(Lifecycle.Event.ON_DESTROY);
        }

        @Override // android.support.p001v4.app.Fragment
        public void onPause() {
            super.onPause();
            dispatch(Lifecycle.Event.ON_PAUSE);
        }

        @Override // android.support.p001v4.app.Fragment
        public void onStop() {
            super.onStop();
            dispatch(Lifecycle.Event.ON_STOP);
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:android/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback.class */
    static class DispatcherActivityCallback extends EmptyActivityLifecycleCallbacks {
        private final FragmentCallback mFragmentCallback = new FragmentCallback();

        DispatcherActivityCallback() {
        }

        @Override // android.arch.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof FragmentActivity) {
                ((FragmentActivity) activity).getSupportFragmentManager().registerFragmentLifecycleCallbacks(this.mFragmentCallback, true);
            }
            ReportFragment.injectIfNeededIn(activity);
        }

        @Override // android.arch.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            if (activity instanceof FragmentActivity) {
                LifecycleDispatcher.markState((FragmentActivity) activity, Lifecycle.State.CREATED);
            }
        }

        @Override // android.arch.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (activity instanceof FragmentActivity) {
                LifecycleDispatcher.markState((FragmentActivity) activity, Lifecycle.State.CREATED);
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:android/arch/lifecycle/LifecycleDispatcher$FragmentCallback.class */
    static class FragmentCallback extends FragmentManager.FragmentLifecycleCallbacks {
        FragmentCallback() {
        }

        @Override // android.support.p001v4.app.FragmentManager.FragmentLifecycleCallbacks
        public void onFragmentCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
            LifecycleDispatcher.dispatchIfLifecycleOwner(fragment, Lifecycle.Event.ON_CREATE);
            if ((fragment instanceof LifecycleRegistryOwner) && fragment.getChildFragmentManager().findFragmentByTag(LifecycleDispatcher.REPORT_FRAGMENT_TAG) == null) {
                fragment.getChildFragmentManager().beginTransaction().add(new DestructionReportFragment(), LifecycleDispatcher.REPORT_FRAGMENT_TAG).commit();
            }
        }

        @Override // android.support.p001v4.app.FragmentManager.FragmentLifecycleCallbacks
        public void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
            LifecycleDispatcher.dispatchIfLifecycleOwner(fragment, Lifecycle.Event.ON_RESUME);
        }

        @Override // android.support.p001v4.app.FragmentManager.FragmentLifecycleCallbacks
        public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
            LifecycleDispatcher.dispatchIfLifecycleOwner(fragment, Lifecycle.Event.ON_START);
        }
    }

    LifecycleDispatcher() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void dispatchIfLifecycleOwner(Fragment fragment, Lifecycle.Event event) {
        if (fragment instanceof LifecycleRegistryOwner) {
            ((LifecycleRegistryOwner) fragment).getLifecycle().handleLifecycleEvent(event);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Context context) {
        if (!sInitialized.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new DispatcherActivityCallback());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void markState(FragmentActivity fragmentActivity, Lifecycle.State state) {
        markStateIn(fragmentActivity, state);
        markState(fragmentActivity.getSupportFragmentManager(), state);
    }

    private static void markState(FragmentManager fragmentManager, Lifecycle.State state) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null) {
                    markStateIn(fragment, state);
                    if (fragment.isAdded()) {
                        markState(fragment.getChildFragmentManager(), state);
                    }
                }
            }
        }
    }

    private static void markStateIn(Object obj, Lifecycle.State state) {
        if (obj instanceof LifecycleRegistryOwner) {
            ((LifecycleRegistryOwner) obj).getLifecycle().markState(state);
        }
    }
}
