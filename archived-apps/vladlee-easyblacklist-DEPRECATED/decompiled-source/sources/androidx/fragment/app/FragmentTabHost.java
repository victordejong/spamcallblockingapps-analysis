package androidx.fragment.app;

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
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost.class */
public class FragmentTabHost extends TabHost implements TabHost.OnTabChangeListener {

    /* renamed from: a */
    private final ArrayList<C0864a> f3646a = new ArrayList<>();

    /* renamed from: b */
    private Context f3647b;

    /* renamed from: c */
    private AbstractC0897m f3648c;

    /* renamed from: d */
    private int f3649d;

    /* renamed from: e */
    private TabHost.OnTabChangeListener f3650e;

    /* renamed from: f */
    private C0864a f3651f;

    /* renamed from: g */
    private boolean f3652g;

    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0866aa();

        /* renamed from: a */
        String f3653a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            super(parcel);
            this.f3653a = parcel.readString();
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.f3653a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f3653a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentTabHost$a */
    /* loaded from: classes-dex2jar.jar:androidx/fragment/app/FragmentTabHost$a.class */
    public static final class C0864a {

        /* renamed from: a */
        final String f3654a;

        /* renamed from: b */
        final Class<?> f3655b;

        /* renamed from: c */
        final Bundle f3656c;

        /* renamed from: d */
        Fragment f3657d;
    }

    @Deprecated
    public FragmentTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{16842995}, 0, 0);
        this.f3649d = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        super.setOnTabChangedListener(this);
    }

    /* renamed from: a */
    private C0864a m7849a(String str) {
        int size = this.f3646a.size();
        for (int i = 0; i < size; i++) {
            C0864a aVar = this.f3646a.get(i);
            if (aVar.f3654a.equals(str)) {
                return aVar;
            }
        }
        return null;
    }

    /* renamed from: a */
    private AbstractC0867ab m7848a(String str, AbstractC0867ab abVar) {
        C0864a a = m7849a(str);
        AbstractC0867ab abVar2 = abVar;
        if (this.f3651f != a) {
            abVar2 = abVar;
            if (abVar == null) {
                abVar2 = this.f3648c.mo7727a();
            }
            C0864a aVar = this.f3651f;
            if (!(aVar == null || aVar.f3657d == null)) {
                abVar2.mo7823b(this.f3651f.f3657d);
            }
            if (a != null) {
                if (a.f3657d == null) {
                    a.f3657d = this.f3648c.mo7665g().mo7618c(this.f3647b.getClassLoader(), a.f3655b.getName());
                    a.f3657d.setArguments(a.f3656c);
                    abVar2.m7832a(this.f3649d, a.f3657d, a.f3654a);
                } else {
                    abVar2.m7821c(a.f3657d);
                }
            }
            this.f3651f = a;
        }
        return abVar2;
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        String currentTabTag = getCurrentTabTag();
        int size = this.f3646a.size();
        AbstractC0867ab abVar = null;
        for (int i = 0; i < size; i++) {
            C0864a aVar = this.f3646a.get(i);
            aVar.f3657d = this.f3648c.mo7699a(aVar.f3654a);
            abVar = abVar;
            if (aVar.f3657d != null) {
                abVar = abVar;
                if (!aVar.f3657d.isDetached()) {
                    if (aVar.f3654a.equals(currentTabTag)) {
                        this.f3651f = aVar;
                        abVar = abVar;
                    } else {
                        abVar = abVar;
                        if (abVar == null) {
                            abVar = this.f3648c.mo7727a();
                        }
                        abVar.mo7823b(aVar.f3657d);
                    }
                }
            }
        }
        this.f3652g = true;
        AbstractC0867ab a = m7848a(currentTabTag, abVar);
        if (a != null) {
            a.mo7825b();
            this.f3648c.mo7692b();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    @Deprecated
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f3652g = false;
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
        setCurrentTabByTag(savedState.f3653a);
    }

    @Override // android.view.View
    @Deprecated
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f3653a = getCurrentTabTag();
        return savedState;
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    @Deprecated
    public void onTabChanged(String str) {
        AbstractC0867ab a;
        if (this.f3652g && (a = m7848a(str, null)) != null) {
            a.mo7825b();
        }
        TabHost.OnTabChangeListener onTabChangeListener = this.f3650e;
        if (onTabChangeListener != null) {
            onTabChangeListener.onTabChanged(str);
        }
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setOnTabChangedListener(TabHost.OnTabChangeListener onTabChangeListener) {
        this.f3650e = onTabChangeListener;
    }

    @Override // android.widget.TabHost
    @Deprecated
    public void setup() {
        throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
    }
}
