package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.AbstractC0265f0;
import androidx.lifecycle.AbstractC0328g0;
import androidx.lifecycle.AbstractC0329h;
import f.h.l.t;
import f.m.b;
/* renamed from: androidx.fragment.app.v */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/v.class */
public class C0296v {

    /* renamed from: a */
    private final C0279m f1594a;

    /* renamed from: b */
    private final C0299x f1595b;

    /* renamed from: c */
    private final Fragment f1596c;

    /* renamed from: d */
    private boolean f1597d = false;

    /* renamed from: e */
    private int f1598e = -1;

    /* renamed from: androidx.fragment.app.v$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/v$a.class */
    public class View$OnAttachStateChangeListenerC0297a implements View.OnAttachStateChangeListener {

        /* renamed from: f */
        final /* synthetic */ View f1599f;

        View$OnAttachStateChangeListenerC0297a(C0296v c0296v, View view) {
            this.f1599f = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            this.f1599f.removeOnAttachStateChangeListener(this);
            t.h0(this.f1599f);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: androidx.fragment.app.v$b */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/v$b.class */
    public static /* synthetic */ class C0298b {

        /* renamed from: a */
        static final /* synthetic */ int[] f1600a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[AbstractC0329h.EnumC0332c.values().length];
            f1600a = iArr;
            try {
                iArr[AbstractC0329h.EnumC0332c.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1600a[AbstractC0329h.EnumC0332c.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1600a[AbstractC0329h.EnumC0332c.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1600a[AbstractC0329h.EnumC0332c.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public C0296v(C0279m c0279m, C0299x c0299x, Fragment fragment) {
        this.f1594a = c0279m;
        this.f1595b = c0299x;
        this.f1596c = fragment;
    }

    public C0296v(C0279m c0279m, C0299x c0299x, Fragment fragment, C0294u c0294u) {
        this.f1594a = c0279m;
        this.f1595b = c0299x;
        this.f1596c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        Bundle bundle = c0294u.f1593r;
        if (bundle != null) {
            fragment.mSavedFragmentState = bundle;
        } else {
            fragment.mSavedFragmentState = new Bundle();
        }
    }

    public C0296v(C0279m c0279m, C0299x c0299x, ClassLoader classLoader, C0277j c0277j, C0294u c0294u) {
        this.f1594a = c0279m;
        this.f1595b = c0299x;
        Fragment m5753a = c0277j.m5753a(classLoader, c0294u.f1581f);
        this.f1596c = m5753a;
        Bundle bundle = c0294u.f1590o;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        m5753a.setArguments(c0294u.f1590o);
        m5753a.mWho = c0294u.f1582g;
        m5753a.mFromLayout = c0294u.f1583h;
        m5753a.mRestored = true;
        m5753a.mFragmentId = c0294u.f1584i;
        m5753a.mContainerId = c0294u.f1585j;
        m5753a.mTag = c0294u.f1586k;
        m5753a.mRetainInstance = c0294u.f1587l;
        m5753a.mRemoving = c0294u.f1588m;
        m5753a.mDetached = c0294u.f1589n;
        m5753a.mHidden = c0294u.f1591p;
        m5753a.mMaxState = AbstractC0329h.EnumC0332c.values()[c0294u.f1592q];
        Bundle bundle2 = c0294u.f1593r;
        if (bundle2 != null) {
            m5753a.mSavedFragmentState = bundle2;
        } else {
            m5753a.mSavedFragmentState = new Bundle();
        }
        if (AbstractC0281n.m5720H0(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + m5753a);
        }
    }

    /* renamed from: l */
    private boolean m5576l(View view) {
        if (view == this.f1596c.mView) {
            return true;
        }
        ViewParent parent = view.getParent();
        while (true) {
            ViewParent viewParent = parent;
            if (viewParent == null) {
                return false;
            }
            if (viewParent == this.f1596c.mView) {
                return true;
            }
            parent = viewParent.getParent();
        }
    }

    /* renamed from: q */
    private Bundle m5571q() {
        Bundle bundle = new Bundle();
        this.f1596c.performSaveInstanceState(bundle);
        this.f1594a.m5740j(this.f1596c, bundle, false);
        Bundle bundle2 = bundle;
        if (bundle.isEmpty()) {
            bundle2 = null;
        }
        if (this.f1596c.mView != null) {
            m5568t();
        }
        Bundle bundle3 = bundle2;
        if (this.f1596c.mSavedViewState != null) {
            bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            bundle3.putSparseParcelableArray("android:view_state", this.f1596c.mSavedViewState);
        }
        Bundle bundle4 = bundle3;
        if (this.f1596c.mSavedViewRegistryState != null) {
            bundle4 = bundle3;
            if (bundle3 == null) {
                bundle4 = new Bundle();
            }
            bundle4.putBundle("android:view_registry_state", this.f1596c.mSavedViewRegistryState);
        }
        Bundle bundle5 = bundle4;
        if (!this.f1596c.mUserVisibleHint) {
            bundle5 = bundle4;
            if (bundle4 == null) {
                bundle5 = new Bundle();
            }
            bundle5.putBoolean("android:user_visible_hint", this.f1596c.mUserVisibleHint);
        }
        return bundle5;
    }

    /* renamed from: a */
    public void m5587a() {
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.f1596c);
        }
        Fragment fragment = this.f1596c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        C0279m c0279m = this.f1594a;
        Fragment fragment2 = this.f1596c;
        c0279m.m5749a(fragment2, fragment2.mSavedFragmentState, false);
    }

    /* renamed from: b */
    void m5586b() {
        int m5555j = this.f1595b.m5555j(this.f1596c);
        Fragment fragment = this.f1596c;
        fragment.mContainer.addView(fragment.mView, m5555j);
    }

    /* renamed from: c */
    public void m5585c() {
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.f1596c);
        }
        Fragment fragment = this.f1596c;
        Fragment fragment2 = fragment.mTarget;
        C0296v c0296v = null;
        if (fragment2 != null) {
            c0296v = this.f1595b.m5552m(fragment2.mWho);
            if (c0296v == null) {
                throw new IllegalStateException("Fragment " + this.f1596c + " declared target fragment " + this.f1596c.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment3 = this.f1596c;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
        } else {
            String str = fragment.mTargetWho;
            if (str != null) {
                c0296v = this.f1595b.m5552m(str);
                if (c0296v == null) {
                    throw new IllegalStateException("Fragment " + this.f1596c + " declared target fragment " + this.f1596c.mTargetWho + " that does not belong to this FragmentManager!");
                }
            }
        }
        if (c0296v != null && (AbstractC0281n.f1526P || c0296v.m5577k().mState < 1)) {
            c0296v.m5575m();
        }
        Fragment fragment4 = this.f1596c;
        fragment4.mHost = fragment4.mFragmentManager.m5617w0();
        Fragment fragment5 = this.f1596c;
        fragment5.mParentFragment = fragment5.mFragmentManager.m5611z0();
        this.f1594a.m5743g(this.f1596c, false);
        this.f1596c.performAttach();
        this.f1594a.m5748b(this.f1596c, false);
    }

    /* renamed from: d */
    public int m5584d() {
        int i;
        Fragment fragment = this.f1596c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int i2 = this.f1598e;
        int i3 = C0298b.f1600a[fragment.mMaxState.ordinal()];
        int i4 = i2;
        if (i3 != 1) {
            i4 = i3 != 2 ? i3 != 3 ? i3 != 4 ? Math.min(i2, -1) : Math.min(i2, 0) : Math.min(i2, 1) : Math.min(i2, 5);
        }
        Fragment fragment2 = this.f1596c;
        int i5 = i4;
        if (fragment2.mFromLayout) {
            if (fragment2.mInLayout) {
                int max = Math.max(this.f1598e, 2);
                View view = this.f1596c.mView;
                i5 = max;
                if (view != null) {
                    i5 = max;
                    if (view.getParent() == null) {
                        i5 = Math.min(max, 2);
                    }
                }
            } else {
                i5 = this.f1598e < 4 ? Math.min(i4, fragment2.mState) : Math.min(i4, 1);
            }
        }
        int i6 = i5;
        if (!this.f1596c.mAdded) {
            i6 = Math.min(i5, 1);
        }
        AbstractC0265f0.C0269e.EnumC0270b enumC0270b = null;
        if (AbstractC0281n.f1526P) {
            Fragment fragment3 = this.f1596c;
            ViewGroup viewGroup = fragment3.mContainer;
            enumC0270b = null;
            if (viewGroup != null) {
                enumC0270b = AbstractC0265f0.m5799n(viewGroup, fragment3.getParentFragmentManager()).m5801l(this);
            }
        }
        if (enumC0270b == AbstractC0265f0.C0269e.EnumC0270b.ADDING) {
            i = Math.min(i6, 6);
        } else if (enumC0270b == AbstractC0265f0.C0269e.EnumC0270b.REMOVING) {
            i = Math.max(i6, 3);
        } else {
            Fragment fragment4 = this.f1596c;
            i = i6;
            if (fragment4.mRemoving) {
                i = fragment4.isInBackStack() ? Math.min(i6, 1) : Math.min(i6, -1);
            }
        }
        Fragment fragment5 = this.f1596c;
        int i7 = i;
        if (fragment5.mDeferStart) {
            i7 = i;
            if (fragment5.mState < 5) {
                i7 = Math.min(i, 4);
            }
        }
        if (AbstractC0281n.m5720H0(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i7 + " for " + this.f1596c);
        }
        return i7;
    }

    /* renamed from: e */
    public void m5583e() {
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.f1596c);
        }
        Fragment fragment = this.f1596c;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.f1596c.mState = 1;
            return;
        }
        this.f1594a.m5742h(fragment, fragment.mSavedFragmentState, false);
        Fragment fragment2 = this.f1596c;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        C0279m c0279m = this.f1594a;
        Fragment fragment3 = this.f1596c;
        c0279m.m5747c(fragment3, fragment3.mSavedFragmentState, false);
    }

    /* renamed from: f */
    public void m5582f() {
        String str;
        if (this.f1596c.mFromLayout) {
            return;
        }
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f1596c);
        }
        Fragment fragment = this.f1596c;
        LayoutInflater performGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        ViewGroup viewGroup = null;
        Fragment fragment2 = this.f1596c;
        ViewGroup viewGroup2 = fragment2.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i = fragment2.mContainerId;
            if (i != 0) {
                if (i == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + this.f1596c + " for a container view with no id");
                }
                ViewGroup viewGroup3 = (ViewGroup) fragment2.mFragmentManager.m5634q0().m5781c(this.f1596c.mContainerId);
                viewGroup = viewGroup3;
                if (viewGroup3 == null) {
                    Fragment fragment3 = this.f1596c;
                    if (!fragment3.mRestored) {
                        try {
                            str = fragment3.getResources().getResourceName(this.f1596c.mContainerId);
                        } catch (Resources.NotFoundException e) {
                            str = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.f1596c.mContainerId) + " (" + str + ") for fragment " + this.f1596c);
                    }
                    viewGroup = viewGroup3;
                }
            }
        }
        Fragment fragment4 = this.f1596c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(performGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        View view = this.f1596c.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            Fragment fragment5 = this.f1596c;
            fragment5.mView.setTag(b.a, fragment5);
            if (viewGroup != null) {
                m5586b();
            }
            Fragment fragment6 = this.f1596c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (t.P(this.f1596c.mView)) {
                t.h0(this.f1596c.mView);
            } else {
                View view2 = this.f1596c.mView;
                view2.addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC0297a(this, view2));
            }
            this.f1596c.performViewCreated();
            C0279m c0279m = this.f1594a;
            Fragment fragment7 = this.f1596c;
            c0279m.m5737m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f1596c.mView.getVisibility();
            float alpha = this.f1596c.mView.getAlpha();
            if (AbstractC0281n.f1526P) {
                this.f1596c.setPostOnViewCreatedAlpha(alpha);
                Fragment fragment8 = this.f1596c;
                if (fragment8.mContainer != null && visibility == 0) {
                    View findFocus = fragment8.mView.findFocus();
                    if (findFocus != null) {
                        this.f1596c.setFocusedView(findFocus);
                        if (AbstractC0281n.m5720H0(2)) {
                            Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + this.f1596c);
                        }
                    }
                    this.f1596c.mView.setAlpha(0.0f);
                }
            } else {
                Fragment fragment9 = this.f1596c;
                boolean z = false;
                if (visibility == 0) {
                    z = false;
                    if (fragment9.mContainer != null) {
                        z = true;
                    }
                }
                fragment9.mIsNewlyAdded = z;
            }
        }
        this.f1596c.mState = 2;
    }

    /* renamed from: g */
    public void m5581g() {
        Fragment m5559f;
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.f1596c);
        }
        Fragment fragment = this.f1596c;
        boolean z = true;
        boolean z2 = fragment.mRemoving && !fragment.isInBackStack();
        if (!(z2 || this.f1595b.m5550o().p(this.f1596c))) {
            String str = this.f1596c.mTargetWho;
            if (str != null && (m5559f = this.f1595b.m5559f(str)) != null && m5559f.mRetainInstance) {
                this.f1596c.mTarget = m5559f;
            }
            this.f1596c.mState = 0;
            return;
        }
        k kVar = this.f1596c.mHost;
        if (kVar instanceof AbstractC0328g0) {
            z = this.f1595b.m5550o().m();
        } else if (kVar.f() instanceof Activity) {
            z = true ^ ((Activity) kVar.f()).isChangingConfigurations();
        }
        if (z2 || z) {
            this.f1595b.m5550o().g(this.f1596c);
        }
        this.f1596c.performDestroy();
        this.f1594a.m5746d(this.f1596c, false);
        for (C0296v c0296v : this.f1595b.m5554k()) {
            if (c0296v != null) {
                Fragment m5577k = c0296v.m5577k();
                if (this.f1596c.mWho.equals(m5577k.mTargetWho)) {
                    m5577k.mTarget = this.f1596c;
                    m5577k.mTargetWho = null;
                }
            }
        }
        Fragment fragment2 = this.f1596c;
        String str2 = fragment2.mTargetWho;
        if (str2 != null) {
            fragment2.mTarget = this.f1595b.m5559f(str2);
        }
        this.f1595b.m5548q(this);
    }

    /* renamed from: h */
    public void m5580h() {
        View view;
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.f1596c);
        }
        Fragment fragment = this.f1596c;
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f1596c.performDestroyView();
        this.f1594a.m5736n(this.f1596c, false);
        Fragment fragment2 = this.f1596c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.n((Object) null);
        this.f1596c.mInLayout = false;
    }

    /* renamed from: i */
    public void m5579i() {
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.f1596c);
        }
        this.f1596c.performDetach();
        this.f1594a.m5745e(this.f1596c, false);
        Fragment fragment = this.f1596c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        boolean z = false;
        if (fragment.mRemoving) {
            z = false;
            if (!fragment.isInBackStack()) {
                z = true;
            }
        }
        if (z || this.f1595b.m5550o().p(this.f1596c)) {
            if (AbstractC0281n.m5720H0(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + this.f1596c);
            }
            this.f1596c.initState();
        }
    }

    /* renamed from: j */
    public void m5578j() {
        Fragment fragment = this.f1596c;
        if (!fragment.mFromLayout || !fragment.mInLayout || fragment.mPerformedCreateView) {
            return;
        }
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.f1596c);
        }
        Fragment fragment2 = this.f1596c;
        fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), (ViewGroup) null, this.f1596c.mSavedFragmentState);
        View view = this.f1596c.mView;
        if (view == null) {
            return;
        }
        view.setSaveFromParentEnabled(false);
        Fragment fragment3 = this.f1596c;
        fragment3.mView.setTag(b.a, fragment3);
        Fragment fragment4 = this.f1596c;
        if (fragment4.mHidden) {
            fragment4.mView.setVisibility(8);
        }
        this.f1596c.performViewCreated();
        C0279m c0279m = this.f1594a;
        Fragment fragment5 = this.f1596c;
        c0279m.m5737m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
        this.f1596c.mState = 2;
    }

    /* renamed from: k */
    public Fragment m5577k() {
        return this.f1596c;
    }

    /* renamed from: m */
    public void m5575m() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        if (this.f1597d) {
            if (!AbstractC0281n.m5720H0(2)) {
                return;
            }
            Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + m5577k());
            return;
        }
        try {
            this.f1597d = true;
            while (true) {
                int m5584d = m5584d();
                Fragment fragment = this.f1596c;
                int i = fragment.mState;
                if (m5584d == i) {
                    if (AbstractC0281n.f1526P && fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            AbstractC0265f0 m5799n = AbstractC0265f0.m5799n(viewGroup, fragment.getParentFragmentManager());
                            if (this.f1596c.mHidden) {
                                m5799n.m5810c(this);
                            } else {
                                m5799n.m5808e(this);
                            }
                        }
                        Fragment fragment2 = this.f1596c;
                        fragment2.mHiddenChanged = false;
                        fragment2.onHiddenChanged(fragment2.mHidden);
                    }
                    return;
                } else if (m5584d > i) {
                    switch (i + 1) {
                        case 0:
                            m5585c();
                            continue;
                        case 1:
                            m5583e();
                            continue;
                        case 2:
                            m5578j();
                            m5582f();
                            continue;
                        case 3:
                            m5587a();
                            continue;
                        case 4:
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                AbstractC0265f0.m5799n(viewGroup2, fragment.getParentFragmentManager()).m5811b(AbstractC0265f0.C0269e.EnumC0271c.from(this.f1596c.mView.getVisibility()), this);
                            }
                            this.f1596c.mState = 4;
                            continue;
                        case 5:
                            m5566v();
                            continue;
                        case 6:
                            fragment.mState = 6;
                            continue;
                        case 7:
                            m5572p();
                            continue;
                    }
                } else {
                    switch (i - 1) {
                        case -1:
                            m5579i();
                            continue;
                        case 0:
                            m5581g();
                            continue;
                        case 1:
                            m5580h();
                            this.f1596c.mState = 1;
                            continue;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            continue;
                        case 3:
                            if (AbstractC0281n.m5720H0(3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.f1596c);
                            }
                            Fragment fragment3 = this.f1596c;
                            if (fragment3.mView != null && fragment3.mSavedViewState == null) {
                                m5568t();
                            }
                            Fragment fragment4 = this.f1596c;
                            if (fragment4.mView != null && (viewGroup3 = fragment4.mContainer) != null) {
                                AbstractC0265f0.m5799n(viewGroup3, fragment4.getParentFragmentManager()).m5809d(this);
                            }
                            this.f1596c.mState = 3;
                            continue;
                        case 4:
                            m5565w();
                            continue;
                        case 5:
                            fragment.mState = 5;
                            continue;
                        case 6:
                            m5574n();
                            continue;
                    }
                }
            }
        } finally {
            this.f1597d = false;
        }
    }

    /* renamed from: n */
    public void m5574n() {
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.f1596c);
        }
        this.f1596c.performPause();
        this.f1594a.m5744f(this.f1596c, false);
    }

    /* renamed from: o */
    public void m5573o(ClassLoader classLoader) {
        Bundle bundle = this.f1596c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        Fragment fragment = this.f1596c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        Fragment fragment2 = this.f1596c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        Fragment fragment3 = this.f1596c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        Fragment fragment4 = this.f1596c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        Fragment fragment5 = this.f1596c;
        Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f1596c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        Fragment fragment6 = this.f1596c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    /* renamed from: p */
    public void m5572p() {
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.f1596c);
        }
        View focusedView = this.f1596c.getFocusedView();
        if (focusedView != null && m5576l(focusedView)) {
            boolean requestFocus = focusedView.requestFocus();
            if (AbstractC0281n.m5720H0(2)) {
                StringBuilder sb = new StringBuilder();
                sb.append("requestFocus: Restoring focused view ");
                sb.append(focusedView);
                sb.append(" ");
                sb.append(requestFocus ? "succeeded" : "failed");
                sb.append(" on Fragment ");
                sb.append(this.f1596c);
                sb.append(" resulting in focused view ");
                sb.append(this.f1596c.mView.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        this.f1596c.setFocusedView((View) null);
        this.f1596c.performResume();
        this.f1594a.m5741i(this.f1596c, false);
        Fragment fragment = this.f1596c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    /* renamed from: r */
    public Fragment$g m5570r() {
        Fragment$g fragment$g = null;
        if (this.f1596c.mState > -1) {
            Bundle m5571q = m5571q();
            fragment$g = null;
            if (m5571q != null) {
                fragment$g = new Fragment$g(m5571q);
            }
        }
        return fragment$g;
    }

    /* renamed from: s */
    public C0294u m5569s() {
        C0294u c0294u = new C0294u(this.f1596c);
        Fragment fragment = this.f1596c;
        if (fragment.mState <= -1 || c0294u.f1593r != null) {
            c0294u.f1593r = fragment.mSavedFragmentState;
        } else {
            Bundle m5571q = m5571q();
            c0294u.f1593r = m5571q;
            if (this.f1596c.mTargetWho != null) {
                if (m5571q == null) {
                    c0294u.f1593r = new Bundle();
                }
                c0294u.f1593r.putString("android:target_state", this.f1596c.mTargetWho);
                int i = this.f1596c.mTargetRequestCode;
                if (i != 0) {
                    c0294u.f1593r.putInt("android:target_req_state", i);
                }
            }
        }
        return c0294u;
    }

    /* renamed from: t */
    public void m5568t() {
        if (this.f1596c.mView == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.f1596c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f1596c.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.f1596c.mViewLifecycleOwner.e(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f1596c.mSavedViewRegistryState = bundle;
    }

    /* renamed from: u */
    public void m5567u(int i) {
        this.f1598e = i;
    }

    /* renamed from: v */
    public void m5566v() {
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.f1596c);
        }
        this.f1596c.performStart();
        this.f1594a.m5739k(this.f1596c, false);
    }

    /* renamed from: w */
    public void m5565w() {
        if (AbstractC0281n.m5720H0(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.f1596c);
        }
        this.f1596c.performStop();
        this.f1594a.m5738l(this.f1596c, false);
    }
}
