package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost.class */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: f */
    private final ArrayList<TabInfo> f3822f = new ArrayList<>();

    /* renamed from: g */
    private FrameLayout f3823g;

    /* renamed from: h */
    private Context f3824h;

    /* renamed from: i */
    private FragmentManager f3825i;

    /* renamed from: j */
    private int f3826j;

    /* renamed from: k */
    private TabHost.OnTabChangeListener f3827k;

    /* renamed from: l */
    private TabInfo f3828l;

    /* renamed from: m */
    private boolean f3829m;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$DummyTabFactory.class */
    static class DummyTabFactory implements TabHost.TabContentFactory {

        /* renamed from: a */
        private final Context f3830a;

        @Override // android.widget.TabHost.TabContentFactory
        public View createTabContent(String str) {
            View view = new View(this.f3830a);
            view.setMinimumWidth(0);
            view.setMinimumHeight(0);
            return view;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState.class */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: androidx.fragment.app.FragmentTabHost.SavedState.1
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: f */
        String f3831f;

        SavedState(Parcel parcel) {
            super(parcel);
            this.f3831f = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @NonNull
        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f3831f + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f3831f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$TabInfo.class */
    public static final class TabInfo {
        @NonNull

        /* renamed from: a */
        final String f3832a;
        @NonNull

        /* renamed from: b */
        final Class<?> f3833b;
        @Nullable

        /* renamed from: c */
        final Bundle f3834c;

        /* renamed from: d */
        Fragment f3835d;
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context) {
        super(context, null);
        m18349e(context, null);
    }

    @Deprecated
    public FragmentTabHost(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        m18349e(context, attributeSet);
    }

    @Nullable
    /* renamed from: a */
    private FragmentTransaction m18353a(@Nullable String str, @Nullable FragmentTransaction fragmentTransaction) {
        Fragment fragment;
        TabInfo d = m18350d(str);
        FragmentTransaction fragmentTransaction2 = fragmentTransaction;
        if (this.f3828l != d) {
            fragmentTransaction2 = fragmentTransaction;
            if (fragmentTransaction == null) {
                fragmentTransaction2 = this.f3825i.beginTransaction();
            }
            TabInfo tabInfo = this.f3828l;
            if (!(tabInfo == null || (fragment = tabInfo.f3835d) == null)) {
                fragmentTransaction2.mo18335m(fragment);
            }
            if (d != null) {
                Fragment fragment2 = d.f3835d;
                if (fragment2 == null) {
                    Fragment a = this.f3825i.getFragmentFactory().mo18434a(this.f3824h.getClassLoader(), d.f3833b.getName());
                    d.f3835d = a;
                    a.setArguments(d.f3834c);
                    fragmentTransaction2.m18345c(this.f3826j, d.f3835d, d.f3832a);
                } else {
                    fragmentTransaction2.m18340h(fragment2);
                }
            }
            this.f3828l = d;
        }
        return fragmentTransaction2;
    }

    /* renamed from: b */
    private void m18352b() {
        if (this.f3823g == null) {
            FrameLayout frameLayout = (FrameLayout) findViewById(this.f3826j);
            this.f3823g = frameLayout;
            if (frameLayout == null) {
                throw new IllegalStateException("No tab content FrameLayout found for id " + this.f3826j);
            }
        }
    }

    /* renamed from: c */
    private void m18351c(Context context) {
        if (findViewById(16908307) == null) {
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            addView(linearLayout, new FrameLayout.LayoutParams(-1, -1));
            TabWidget tabWidget = new TabWidget(context);
            tabWidget.setId(16908307);
            tabWidget.setOrientation(0);
            linearLayout.addView(tabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0f));
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setId(16908305);
            linearLayout.addView(frameLayout, new LinearLayout.LayoutParams(0, 0, 0.0f));
            FrameLayout frameLayout2 = new FrameLayout(context);
            this.f3823g = frameLayout2;
            frameLayout2.setId(this.f3826j);
            linearLayout.addView(frameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0f));
        }
    }

    @Nullable
    /* renamed from: d */
    private TabInfo m18350d(String str) {
        int size = this.f3822f.size();
        for (int i = 0; i < size; i++) {
            TabInfo tabInfo = this.f3822f.get(i);
            if (tabInfo.f3832a.equals(str)) {
                return tabInfo;
            }
        }
        return null;
    }

    /* renamed from: e */
    private void m18349e(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f3826j = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f3822f.size();
        FragmentTransaction fragmentTransaction = null;
        for (int i = 0; i < size; i++) {
            TabInfo tabInfo = this.f3822f.get(i);
            Fragment findFragmentByTag = this.f3825i.findFragmentByTag(tabInfo.f3832a);
            tabInfo.f3835d = findFragmentByTag;
            fragmentTransaction = fragmentTransaction;
            if (findFragmentByTag != null) {
                fragmentTransaction = fragmentTransaction;
                if (!findFragmentByTag.isDetached()) {
                    if (tabInfo.f3832a.equals(currentTabTag)) {
                        this.f3828l = tabInfo;
                        fragmentTransaction = fragmentTransaction;
                    } else {
                        fragmentTransaction = fragmentTransaction;
                        if (fragmentTransaction == null) {
                            fragmentTransaction = this.f3825i.beginTransaction();
                        }
                        fragmentTransaction.mo18335m(tabInfo.f3835d);
                    }
                }
            }
        }
        this.f3829m = true;
        FragmentTransaction a = m18353a(currentTabTag, fragmentTransaction);
        if (a != null) {
            a.mo18339i();
            this.f3825i.executePendingTransactions();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3829m = false;
    }

    @Override // android.view.View
    @Deprecated
    protected void onRestoreInstanceState(@SuppressLint({"UnknownNullness"}) Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f3831f);
    }

    @Override // android.view.View
    @NonNull
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3831f = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(@Nullable String str) {
        FragmentTransaction a;
        if (this.f3829m && (a = m18353a(str, null)) != null) {
            a.mo18339i();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f3827k;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(@Nullable TabHost.OnTabChangeListener onTabChangeListener) {
        this.f3827k = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager) {
        m18351c(context);
        super.setup();
        this.f3824h = context;
        this.f3825i = fragmentManager;
        m18352b();
    }

    @Deprecated
    public void setup(@NonNull Context context, @NonNull FragmentManager fragmentManager, int i) {
        m18351c(context);
        super.setup();
        this.f3824h = context;
        this.f3825i = fragmentManager;
        this.f3826j = i;
        m18352b();
        this.f3823g.setId(i);
        if (getId() == -1) {
            setId(16908306);
        }
    }
}
