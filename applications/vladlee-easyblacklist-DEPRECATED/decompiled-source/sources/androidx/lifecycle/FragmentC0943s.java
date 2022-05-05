package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0927f;
/* renamed from: androidx.lifecycle.s */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/s.class */
public final class FragmentC0943s extends Fragment {

    /* renamed from: a */
    private AbstractC0944a f3919a;

    /* renamed from: androidx.lifecycle.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/s$a.class */
    interface AbstractC0944a {
    }

    /* renamed from: a */
    public static void m7556a(Activity activity) {
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0943s(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* renamed from: a */
    private void m7555a(AbstractC0927f.EnumC0928a aVar) {
        Activity activity = getActivity();
        if (activity instanceof AbstractC0936l) {
            ((AbstractC0936l) activity).m7567a().m7583a(aVar);
        } else if (activity instanceof AbstractC0932i) {
            AbstractC0927f lifecycle = ((AbstractC0932i) activity).getLifecycle();
            if (lifecycle instanceof C0933j) {
                ((C0933j) lifecycle).m7583a(aVar);
            }
        }
    }

    @Override // android.app.Fragment
    public final void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m7555a(AbstractC0927f.EnumC0928a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        m7555a(AbstractC0927f.EnumC0928a.ON_DESTROY);
        this.f3919a = null;
    }

    @Override // android.app.Fragment
    public final void onPause() {
        super.onPause();
        m7555a(AbstractC0927f.EnumC0928a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public final void onResume() {
        super.onResume();
        m7555a(AbstractC0927f.EnumC0928a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        m7555a(AbstractC0927f.EnumC0928a.ON_START);
    }

    @Override // android.app.Fragment
    public final void onStop() {
        super.onStop();
        m7555a(AbstractC0927f.EnumC0928a.ON_STOP);
    }
}
