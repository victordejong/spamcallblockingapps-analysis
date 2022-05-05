package androidx.legacy.app;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TabHost;
import java.util.ArrayList;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/legacy/app/FragmentTabHost.class */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a */
    private final ArrayList<C0917a> f3852a = new ArrayList<>();

    /* renamed from: b */
    private Context f3853b;

    /* renamed from: c */
    private FragmentManager f3854c;

    /* renamed from: d */
    private int f3855d;

    /* renamed from: e */
    private TabHost.OnTabChangeListener f3856e;

    /* renamed from: f */
    private C0917a f3857f;

    /* renamed from: g */
    private boolean f3858g;

    /* loaded from: classes-dex2jar.jar:androidx/legacy/app/FragmentTabHost$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0918a();

        /* renamed from: a */
        String f3859a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            this.f3859a = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f3859a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f3859a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.legacy.app.FragmentTabHost$a */
    /* loaded from: classes-dex2jar.jar:androidx/legacy/app/FragmentTabHost$a.class */
    public static final class C0917a {

        /* renamed from: a */
        final String f3860a;

        /* renamed from: b */
        final Class<?> f3861b;

        /* renamed from: c */
        final Bundle f3862c;

        /* renamed from: d */
        Fragment f3863d;
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f3855d = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    /* renamed from: a */
    private FragmentTransaction m7608a(String str, FragmentTransaction fragmentTransaction) {
        C0917a aVar = null;
        for (int i = 0; i < this.f3852a.size(); i++) {
            C0917a aVar2 = this.f3852a.get(i);
            if (aVar2.f3860a.equals(str)) {
                aVar = aVar2;
            }
        }
        if (aVar != null) {
            FragmentTransaction fragmentTransaction2 = fragmentTransaction;
            if (this.f3857f != aVar) {
                fragmentTransaction2 = fragmentTransaction;
                if (fragmentTransaction == null) {
                    fragmentTransaction2 = this.f3854c.beginTransaction();
                }
                C0917a aVar3 = this.f3857f;
                if (!(aVar3 == null || aVar3.f3863d == null)) {
                    fragmentTransaction2.detach(this.f3857f.f3863d);
                }
                if (aVar != null) {
                    if (aVar.f3863d == null) {
                        aVar.f3863d = Fragment.instantiate(this.f3853b, aVar.f3861b.getName(), aVar.f3862c);
                        fragmentTransaction2.add(this.f3855d, aVar.f3863d, aVar.f3860a);
                    } else {
                        fragmentTransaction2.attach(aVar.f3863d);
                    }
                }
                this.f3857f = aVar;
            }
            return fragmentTransaction2;
        }
        throw new IllegalStateException("No tab known for tag ".concat(String.valueOf(str)));
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        FragmentTransaction fragmentTransaction = null;
        for (int i = 0; i < this.f3852a.size(); i++) {
            C0917a aVar = this.f3852a.get(i);
            aVar.f3863d = this.f3854c.findFragmentByTag(aVar.f3860a);
            fragmentTransaction = fragmentTransaction;
            if (aVar.f3863d != null) {
                fragmentTransaction = fragmentTransaction;
                if (!aVar.f3863d.isDetached()) {
                    if (aVar.f3860a.equals(currentTabTag)) {
                        this.f3857f = aVar;
                        fragmentTransaction = fragmentTransaction;
                    } else {
                        fragmentTransaction = fragmentTransaction;
                        if (fragmentTransaction == null) {
                            fragmentTransaction = this.f3854c.beginTransaction();
                        }
                        fragmentTransaction.detach(aVar.f3863d);
                    }
                }
            }
        }
        this.f3858g = true;
        FragmentTransaction a = m7608a(currentTabTag, fragmentTransaction);
        if (a != null) {
            a.commit();
            this.f3854c.executePendingTransactions();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3858g = false;
    }

    @Override // android.view.View
    @Deprecated
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCurrentTabByTag(savedState.f3859a);
    }

    @Override // android.view.View
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3859a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(String str) {
        FragmentTransaction a;
        if (this.f3858g && (a = m7608a(str, null)) != null) {
            a.commit();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f3856e;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f3856e = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}
