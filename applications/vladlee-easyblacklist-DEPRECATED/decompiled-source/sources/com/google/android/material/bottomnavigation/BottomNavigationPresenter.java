package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
import androidx.appcompat.view.menu.SubMenuC0395z;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter.class */
public final class BottomNavigationPresenter implements AbstractC0386s {

    /* renamed from: a */
    private C0371k f17998a;

    /* renamed from: b */
    private BottomNavigationMenuView f17999b;

    /* renamed from: c */
    private boolean f18000c = false;

    /* renamed from: d */
    private int f18001d;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationPresenter$SavedState.class */
    static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C2963c();

        /* renamed from: a */
        int f18002a;

        SavedState() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            this.f18002a = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f18002a);
        }
    }

    /* renamed from: a */
    public final void m1368a() {
        this.f18001d = 1;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1008a(Context context, C0371k kVar) {
        this.f17998a = kVar;
        this.f17999b.mo1063a(this.f17998a);
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1005a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f17999b.m1369f(((SavedState) parcelable).f18002a);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1003a(C0371k kVar, boolean z) {
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo1002a(AbstractC0386s.AbstractC0387a aVar) {
    }

    /* renamed from: a */
    public final void m1367a(BottomNavigationMenuView bottomNavigationMenuView) {
        this.f17999b = bottomNavigationMenuView;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final void mo999a(boolean z) {
        if (!this.f18000c) {
            BottomNavigationMenuView bottomNavigationMenuView = this.f17999b;
            if (z) {
                bottomNavigationMenuView.m1374d();
            } else {
                bottomNavigationMenuView.m1372e();
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: a */
    public final boolean mo1001a(SubMenuC0395z zVar) {
        return false;
    }

    /* renamed from: b */
    public final void m1366b(boolean z) {
        this.f18000c = z;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public final boolean mo998b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: b */
    public final boolean mo995b(C0375m mVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: c */
    public final int mo993c() {
        return this.f18001d;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: c */
    public final boolean mo991c(C0375m mVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s
    /* renamed from: f */
    public final Parcelable mo989f() {
        SavedState savedState = new SavedState();
        savedState.f18002a = this.f17999b.m1370f();
        return savedState;
    }
}
