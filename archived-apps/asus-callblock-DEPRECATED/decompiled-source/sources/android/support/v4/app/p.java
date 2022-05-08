package android.support.v4.app;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/p.class */
public abstract class p extends android.support.v4.view.p {

    /* renamed from: a  reason: collision with root package name */
    private final m f92a;

    /* renamed from: b  reason: collision with root package name */
    private q f93b = null;
    private ArrayList<Fragment.SavedState> c = new ArrayList<>();
    private ArrayList<Fragment> d = new ArrayList<>();
    private Fragment e = null;

    public p(m mVar) {
        this.f92a = mVar;
    }

    public abstract Fragment a(int i);

    @Override // android.support.v4.view.p
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (this.f93b == null) {
            this.f93b = this.f92a.a();
        }
        while (this.c.size() <= i) {
            this.c.add(null);
        }
        this.c.set(i, fragment.isAdded() ? this.f92a.a(fragment) : null);
        this.d.set(i, null);
        this.f93b.a(fragment);
    }

    @Override // android.support.v4.view.p
    public void finishUpdate(ViewGroup viewGroup) {
        if (this.f93b != null) {
            this.f93b.b();
            this.f93b = null;
            this.f92a.b();
        }
    }

    @Override // android.support.v4.view.p
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment;
        Fragment.SavedState savedState;
        Fragment fragment2;
        if (this.d.size() <= i || (fragment2 = this.d.get(i)) == null) {
            if (this.f93b == null) {
                this.f93b = this.f92a.a();
            }
            Fragment a2 = a(i);
            if (this.c.size() > i && (savedState = this.c.get(i)) != null) {
                a2.setInitialSavedState(savedState);
            }
            while (this.d.size() <= i) {
                this.d.add(null);
            }
            a2.setMenuVisibility(false);
            a2.setUserVisibleHint(false);
            this.d.set(i, a2);
            this.f93b.a(viewGroup.getId(), a2);
            fragment = a2;
        } else {
            fragment = fragment2;
        }
        return fragment;
    }

    @Override // android.support.v4.view.p
    public boolean isViewFromObject(View view, Object obj) {
        return ((Fragment) obj).getView() == view;
    }

    @Override // android.support.v4.view.p
    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        if (parcelable != null) {
            Bundle bundle = (Bundle) parcelable;
            bundle.setClassLoader(classLoader);
            Parcelable[] parcelableArray = bundle.getParcelableArray("states");
            this.c.clear();
            this.d.clear();
            if (parcelableArray != null) {
                for (Parcelable parcelable2 : parcelableArray) {
                    this.c.add((Fragment.SavedState) parcelable2);
                }
            }
            for (String str : bundle.keySet()) {
                if (str.startsWith("f")) {
                    int parseInt = Integer.parseInt(str.substring(1));
                    Fragment a2 = this.f92a.a(bundle, str);
                    if (a2 != null) {
                        while (this.d.size() <= parseInt) {
                            this.d.add(null);
                        }
                        a2.setMenuVisibility(false);
                        this.d.set(parseInt, a2);
                    } else {
                        Log.w("FragmentStatePagerAdapter", "Bad fragment at key " + str);
                    }
                }
            }
        }
    }

    @Override // android.support.v4.view.p
    public Parcelable saveState() {
        Bundle bundle = null;
        if (this.c.size() > 0) {
            bundle = new Bundle();
            Fragment.SavedState[] savedStateArr = new Fragment.SavedState[this.c.size()];
            this.c.toArray(savedStateArr);
            bundle.putParcelableArray("states", savedStateArr);
        }
        for (int i = 0; i < this.d.size(); i++) {
            Fragment fragment = this.d.get(i);
            bundle = bundle;
            if (fragment != null) {
                bundle = bundle;
                if (fragment.isAdded()) {
                    bundle = bundle;
                    if (bundle == null) {
                        bundle = new Bundle();
                    }
                    this.f92a.a(bundle, "f" + i, fragment);
                }
            }
        }
        return bundle;
    }

    @Override // android.support.v4.view.p
    public void setPrimaryItem(ViewGroup viewGroup, int i, Object obj) {
        Fragment fragment = (Fragment) obj;
        if (fragment != this.e) {
            if (this.e != null) {
                this.e.setMenuVisibility(false);
                this.e.setUserVisibleHint(false);
            }
            if (fragment != null) {
                fragment.setMenuVisibility(true);
                fragment.setUserVisibleHint(true);
            }
            this.e = fragment;
        }
    }

    @Override // android.support.v4.view.p
    public void startUpdate(ViewGroup viewGroup) {
    }
}
