package androidx.preference;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import androidx.fragment.app.AbstractC0897m;
import androidx.fragment.app.DialogInterface$OnCancelListenerC0887c;
import androidx.fragment.app.Fragment;
import androidx.preference.C1001ac;
import androidx.preference.C1042y;
import androidx.preference.DialogPreference;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.preference.o */
/* loaded from: classes-dex2jar.jar:androidx/preference/o.class */
public abstract class AbstractC1027o extends Fragment implements DialogPreference.AbstractC0986a, C1042y.AbstractC1043a, C1042y.AbstractC1044b, C1042y.AbstractC1045c {

    /* renamed from: a */
    RecyclerView f4352a;

    /* renamed from: c */
    private C1042y f4354c;

    /* renamed from: d */
    private boolean f4355d;

    /* renamed from: e */
    private boolean f4356e;

    /* renamed from: g */
    private Runnable f4358g;

    /* renamed from: b */
    private final C1028a f4353b = new C1028a();

    /* renamed from: f */
    private int f4357f = C1001ac.C1006e.f4160c;

    /* renamed from: h */
    private Handler f4359h = new HandlerC1032p(this);

    /* renamed from: i */
    private final Runnable f4360i = new RunnableC1033q(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.preference.o$a */
    /* loaded from: classes-dex2jar.jar:androidx/preference/o$a.class */
    public final class C1028a extends RecyclerView.AbstractC1065h {

        /* renamed from: b */
        private Drawable f4362b;

        /* renamed from: c */
        private int f4363c;

        /* renamed from: d */
        private boolean f4364d = true;

        C1028a() {
        }

        /* renamed from: a */
        private boolean m7381a(View view, RecyclerView recyclerView) {
            RecyclerView.AbstractC1082t b = recyclerView.m7232b(view);
            if (!((b instanceof C1000ab) && ((C1000ab) b).m7404b())) {
                return false;
            }
            boolean z = this.f4364d;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild < recyclerView.getChildCount() - 1) {
                RecyclerView.AbstractC1082t b2 = recyclerView.m7232b(recyclerView.getChildAt(indexOfChild + 1));
                z = (b2 instanceof C1000ab) && ((C1000ab) b2).m7407a();
            }
            return z;
        }

        /* renamed from: a */
        public final void m7383a(int i) {
            this.f4363c = i;
            AbstractC1027o.this.f4352a.m7204i();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1065h
        /* renamed from: a */
        public final void mo6740a(Canvas canvas, RecyclerView recyclerView) {
            if (this.f4362b != null) {
                int childCount = recyclerView.getChildCount();
                int width = recyclerView.getWidth();
                for (int i = 0; i < childCount; i++) {
                    View childAt = recyclerView.getChildAt(i);
                    if (m7381a(childAt, recyclerView)) {
                        int y = ((int) childAt.getY()) + childAt.getHeight();
                        this.f4362b.setBounds(0, y, width, this.f4363c + y);
                        this.f4362b.draw(canvas);
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1065h
        /* renamed from: a */
        public final void mo7153a(Rect rect, View view, RecyclerView recyclerView) {
            if (m7381a(view, recyclerView)) {
                rect.bottom = this.f4363c;
            }
        }

        /* renamed from: a */
        public final void m7382a(Drawable drawable) {
            this.f4363c = drawable != null ? drawable.getIntrinsicHeight() : 0;
            this.f4362b = drawable;
            AbstractC1027o.this.f4352a.m7204i();
        }

        /* renamed from: a */
        public final void m7380a(boolean z) {
            this.f4364d = z;
        }
    }

    /* renamed from: androidx.preference.o$b */
    /* loaded from: classes-dex2jar.jar:androidx/preference/o$b.class */
    public interface AbstractC1029b {
        /* renamed from: a */
        boolean m7379a();
    }

    /* renamed from: androidx.preference.o$c */
    /* loaded from: classes-dex2jar.jar:androidx/preference/o$c.class */
    public interface AbstractC1030c {
        /* renamed from: a */
        boolean m7378a();
    }

    /* renamed from: androidx.preference.o$d */
    /* loaded from: classes-dex2jar.jar:androidx/preference/o$d.class */
    public interface AbstractC1031d {
        /* renamed from: a */
        boolean mo291a(PreferenceScreen preferenceScreen);
    }

    /* renamed from: b */
    private void m7390b(PreferenceScreen preferenceScreen) {
        if (this.f4354c.m7361a(preferenceScreen) && preferenceScreen != null) {
            this.f4355d = true;
            if (this.f4356e && !this.f4359h.hasMessages(1)) {
                this.f4359h.obtainMessage(1).sendToTarget();
            }
        }
    }

    /* renamed from: c */
    private static RecyclerView.AbstractC1056a m7388c(PreferenceScreen preferenceScreen) {
        return new C1036t(preferenceScreen);
    }

    /* renamed from: z */
    private void m7384z() {
        if (this.f4354c == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
    }

    @Override // androidx.preference.DialogPreference.AbstractC0986a
    /* renamed from: a */
    public final <T extends Preference> T mo7391a(CharSequence charSequence) {
        C1042y yVar = this.f4354c;
        if (yVar == null) {
            return null;
        }
        return (T) yVar.m7357a(charSequence);
    }

    /* renamed from: a */
    public final void m7392a(Drawable drawable) {
        this.f4353b.m7382a(drawable);
    }

    @Override // androidx.preference.C1042y.AbstractC1044b
    /* renamed from: a */
    public final void mo7346a(PreferenceScreen preferenceScreen) {
        if (getActivity() instanceof AbstractC1031d) {
            ((AbstractC1031d) getActivity()).mo291a(preferenceScreen);
        }
    }

    @Override // androidx.preference.C1042y.AbstractC1045c
    /* renamed from: a */
    public final boolean mo7345a(Preference preference) {
        if (preference.m7453q() == null) {
            return false;
        }
        if (getActivity() instanceof AbstractC1030c ? ((AbstractC1030c) getActivity()).m7378a() : false) {
            return true;
        }
        Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
        AbstractC0897m f = requireActivity().m7852f();
        Bundle r = preference.m7452r();
        Fragment c = f.mo7665g().mo7618c(requireActivity().getClassLoader(), preference.m7453q());
        c.setArguments(r);
        c.setTargetFragment(this, 0);
        f.mo7727a().m7824b(((View) getView().getParent()).getId(), c).m7826a((String) null).mo7825b();
        return true;
    }

    @Override // androidx.preference.C1042y.AbstractC1043a
    /* renamed from: b */
    public final void mo7347b(Preference preference) {
        DialogInterface$OnCancelListenerC0887c cVar;
        if (!(getActivity() instanceof AbstractC1029b ? ((AbstractC1029b) getActivity()).m7379a() : false) && getFragmentManager().mo7699a("androidx.preference.PreferenceFragment.DIALOG") == null) {
            if (preference instanceof EditTextPreference) {
                cVar = C1015c.m7402b(preference.m7446y());
            } else if (preference instanceof ListPreference) {
                cVar = C1018f.m7399b(preference.m7446y());
            } else if (preference instanceof MultiSelectListPreference) {
                cVar = C1021i.m7398b(preference.m7446y());
            } else {
                throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + preference.getClass().getSimpleName() + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
            }
            cVar.setTargetFragment(this, 0);
            cVar.show(getFragmentManager(), "androidx.preference.PreferenceFragment.DIALOG");
        }
    }

    /* renamed from: b */
    public abstract void mo54b(String str);

    /* renamed from: c */
    public final void m7389c(int i) {
        this.f4353b.m7383a(i);
    }

    /* renamed from: c */
    public final void m7387c(String str) {
        m7384z();
        PreferenceScreen a = this.f4354c.m7363a(getContext(), 2131820545, null);
        Preference preference = a;
        if (str != null) {
            preference = a.m7434b((CharSequence) str);
            if (!(preference instanceof PreferenceScreen)) {
                throw new IllegalArgumentException("Preference object with key " + str + " is not a PreferenceScreen");
            }
        }
        m7390b((PreferenceScreen) preference);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        TypedValue typedValue = new TypedValue();
        getActivity().getTheme().resolveAttribute(C1001ac.C1002a.f4146j, typedValue, true);
        int i = typedValue.resourceId;
        int i2 = i;
        if (i == 0) {
            i2 = C1001ac.C1008g.f4167a;
        }
        getActivity().getTheme().applyStyle(i2, false);
        this.f4354c = new C1042y(getContext());
        this.f4354c.m7359a((C1042y.AbstractC1044b) this);
        mo54b(getArguments() != null ? getArguments().getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x008d, code lost:
        if (r7 != null) goto L_0x00be;
     */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View onCreateView(android.view.LayoutInflater r7, android.view.ViewGroup r8, android.os.Bundle r9) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.AbstractC1027o.onCreateView(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle):android.view.View");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        this.f4359h.removeCallbacks(this.f4360i);
        this.f4359h.removeMessages(1);
        if (this.f4355d) {
            this.f4352a.m7254a((RecyclerView.AbstractC1056a) null);
            PreferenceScreen d = this.f4354c.m7353d();
            if (d != null) {
                d.mo7440H();
            }
        }
        this.f4352a = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        PreferenceScreen d = this.f4354c.m7353d();
        if (d != null) {
            Bundle bundle2 = new Bundle();
            d.mo7439a(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f4354c.m7358a((C1042y.AbstractC1045c) this);
        this.f4354c.m7360a((C1042y.AbstractC1043a) this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.f4354c.m7358a((C1042y.AbstractC1045c) null);
        this.f4354c.m7360a((C1042y.AbstractC1043a) null);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Bundle bundle2;
        PreferenceScreen d;
        super.onViewCreated(view, bundle);
        if (!(bundle == null || (bundle2 = bundle.getBundle("android:preferences")) == null || (d = this.f4354c.m7353d()) == null)) {
            d.mo7436b(bundle2);
        }
        if (this.f4355d) {
            m7385y();
            Runnable runnable = this.f4358g;
            if (runnable != null) {
                runnable.run();
                this.f4358g = null;
            }
        }
        this.f4356e = true;
    }

    /* renamed from: x */
    public final void m7386x() {
        m7384z();
        m7390b(this.f4354c.m7363a(getContext(), 2131820546, this.f4354c.m7353d()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public final void m7385y() {
        PreferenceScreen d = this.f4354c.m7353d();
        if (d != null) {
            this.f4352a.m7254a(m7388c(d));
            d.mo7441G();
        }
    }
}
