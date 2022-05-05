package androidx.fragment.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.AbstractC0927f;
import androidx.viewpager.widget.AbstractC1289a;
import java.util.ArrayList;
/* renamed from: androidx.fragment.app.z */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/z.class */
public abstract class AbstractC0916z extends AbstractC1289a {

    /* renamed from: a */
    private final AbstractC0897m f3846a;

    /* renamed from: b */
    private final int f3847b;

    /* renamed from: c */
    private AbstractC0867ab f3848c;

    /* renamed from: d */
    private ArrayList<Fragment.SavedState> f3849d;

    /* renamed from: e */
    private ArrayList<Fragment> f3850e;

    /* renamed from: f */
    private Fragment f3851f;

    @Deprecated
    public AbstractC0916z(AbstractC0897m mVar) {
        this(mVar, (byte) 0);
    }

    private AbstractC0916z(AbstractC0897m mVar, byte b) {
        this.f3848c = null;
        this.f3849d = new ArrayList<>();
        this.f3850e = new ArrayList<>();
        this.f3851f = null;
        this.f3846a = mVar;
        this.f3847b = 0;
    }

    /* renamed from: a */
    public abstract Fragment mo43a(int i);

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: a */
    public Object mo41a(ViewGroup viewGroup, int i) {
        Fragment.SavedState savedState;
        Fragment fragment;
        if (this.f3850e.size() > i && (fragment = this.f3850e.get(i)) != null) {
            return fragment;
        }
        if (this.f3848c == null) {
            this.f3848c = this.f3846a.mo7727a();
        }
        Fragment a = mo43a(i);
        if (this.f3849d.size() > i && (savedState = this.f3849d.get(i)) != null) {
            a.setInitialSavedState(savedState);
        }
        while (this.f3850e.size() <= i) {
            this.f3850e.add(null);
        }
        a.setMenuVisibility(false);
        if (this.f3847b == 0) {
            a.setUserVisibleHint(false);
        }
        this.f3850e.set(i, a);
        this.f3848c.m7833a(viewGroup.getId(), a);
        if (this.f3847b == 1) {
            this.f3848c.mo7829a(a, AbstractC0927f.EnumC0929b.STARTED);
        }
        return a;
    }

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: a */
    public final void mo6383a() {
        AbstractC0867ab abVar = this.f3848c;
        if (abVar != null) {
            abVar.mo7819e();
            this.f3848c = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: a */
    public void mo42a(int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f3848c == null) {
            this.f3848c = this.f3846a.mo7727a();
        }
        while (this.f3849d.size() <= i) {
            this.f3849d.add(null);
        }
        this.f3849d.set(i, fragment.isAdded() ? this.f3846a.mo7713a(fragment) : null);
        this.f3850e.set(i, null);
        this.f3848c.mo7830a(fragment);
        if (fragment == this.f3851f) {
            this.f3851f = null;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: a */
    public final void mo6381a(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.f3849d.clear();
            this.f3850e.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.f3849d.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment a = this.f3846a.mo7720a(bundle, str);
                    if (a != null) {
                        while (this.f3850e.size() <= parseInt) {
                            this.f3850e.add(null);
                        }
                        a.setMenuVisibility(false);
                        this.f3850e.set(parseInt, a);
                    } else {
                        Log.w("FragmentStatePagerAdapt", "Bad fragment at key ".concat(String.valueOf(str)));
                    }
                }
            }
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: a */
    public final void mo6379a(ViewGroup viewGroup) {
        if (viewGroup.getId() == -1) {
            throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: a */
    public final void mo6378a(Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f3851f;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                if (this.f3847b == 1) {
                    if (this.f3848c == null) {
                        this.f3848c = this.f3846a.mo7727a();
                    }
                    this.f3848c.mo7829a(this.f3851f, AbstractC0927f.EnumC0929b.STARTED);
                } else {
                    this.f3851f.setUserVisibleHint(false);
                }
            }
            fragment.setMenuVisibility(true);
            if (this.f3847b == 1) {
                if (this.f3848c == null) {
                    this.f3848c = this.f3846a.mo7727a();
                }
                this.f3848c.mo7829a(fragment, AbstractC0927f.EnumC0929b.RESUMED);
            } else {
                fragment.setUserVisibleHint(true);
            }
            this.f3851f = fragment;
        }
    }

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: a */
    public final boolean mo6380a(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: b */
    public Parcelable mo40b() {
        Bundle bundle;
        if (this.f3849d.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.f3849d.size()];
            this.f3849d.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        } else {
            bundle = null;
        }
        for (int i = 0; i < this.f3850e.size(); i++) {
            Fragment fragment = this.f3850e.get(i);
            bundle = bundle;
            if (fragment != null) {
                bundle = bundle;
                if (fragment.isAdded()) {
                    bundle = bundle;
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    this.f3846a.mo7719a(bundle, "f".concat(String.valueOf(i)), fragment);
                }
            }
        }
        return bundle;
    }
}
