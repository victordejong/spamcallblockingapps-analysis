package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MenuInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.C0350g;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.widget.C0484bm;
import androidx.core.content.C0646b;
import androidx.core.p037g.C0741t;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3052r;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView.class */
public class BottomNavigationView extends FrameLayout {

    /* renamed from: a */
    private final C0371k f18003a;

    /* renamed from: b */
    private final BottomNavigationMenuView f18004b;

    /* renamed from: c */
    private final BottomNavigationPresenter f18005c;

    /* renamed from: d */
    private MenuInflater f18006d;

    /* renamed from: e */
    private AbstractC2960b f18007e;

    /* renamed from: f */
    private AbstractC2959a f18008f;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$SavedState.class */
    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C2965e();

        /* renamed from: a */
        Bundle f18009a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f18009a = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f18009a);
        }
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$a.class */
    public interface AbstractC2959a {
    }

    /* renamed from: com.google.android.material.bottomnavigation.BottomNavigationView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationView$b.class */
    public interface AbstractC2960b {
        /* renamed from: a */
        boolean m1362a();
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17436b);
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        BottomNavigationMenuView bottomNavigationMenuView;
        ColorStateList colorStateList;
        this.f18005c = new BottomNavigationPresenter();
        this.f18003a = new C2961a(context);
        this.f18004b = new BottomNavigationMenuView(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.f18004b.setLayoutParams(layoutParams);
        this.f18005c.m1367a(this.f18004b);
        this.f18005c.m1368a();
        this.f18004b.m1382a(this.f18005c);
        this.f18003a.m9614a(this.f18005c);
        this.f18005c.mo1008a(getContext(), this.f18003a);
        C0484bm b = C3052r.m957b(context, attributeSet, C2913a.C2924k.f17537D, i, C2913a.C2923j.f17522e, C2913a.C2924k.f17544K, C2913a.C2924k.f17543J);
        if (b.m9079i(C2913a.C2924k.f17542I)) {
            bottomNavigationMenuView = this.f18004b;
            colorStateList = b.m9083f(C2913a.C2924k.f17542I);
        } else {
            bottomNavigationMenuView = this.f18004b;
            colorStateList = bottomNavigationMenuView.m1376c();
        }
        bottomNavigationMenuView.m1384a(colorStateList);
        this.f18004b.m1386a(b.m9086d(C2913a.C2924k.f17541H, getResources().getDimensionPixelSize(C2913a.C2917d.f17469d)));
        if (b.m9079i(C2913a.C2924k.f17544K)) {
            this.f18004b.m1379b(b.m9082f(C2913a.C2924k.f17544K, 0));
        }
        if (b.m9079i(C2913a.C2924k.f17543J)) {
            this.f18004b.m1375c(b.m9082f(C2913a.C2924k.f17543J, 0));
        }
        if (b.m9079i(C2913a.C2924k.f17545L)) {
            this.f18004b.m1378b(b.m9083f(C2913a.C2924k.f17545L));
        }
        if (b.m9079i(C2913a.C2924k.f17538E)) {
            C0741t.m8359a(this, b.m9086d(C2913a.C2924k.f17538E, 0));
        }
        int b2 = b.m9090b(C2913a.C2924k.f17546M, -1);
        if (this.f18004b.m1387a() != b2) {
            this.f18004b.m1371e(b2);
            this.f18005c.mo999a(false);
        }
        boolean a = b.m9095a(C2913a.C2924k.f17540G, true);
        if (this.f18004b.m1380b() != a) {
            this.f18004b.m1381a(a);
            this.f18005c.mo999a(false);
        }
        this.f18004b.m1373d(b.m9082f(C2913a.C2924k.f17539F, 0));
        if (b.m9079i(C2913a.C2924k.f17547N)) {
            int f = b.m9082f(C2913a.C2924k.f17547N, 0);
            this.f18005c.m1366b(true);
            if (this.f18006d == null) {
                this.f18006d = new C0350g(getContext());
            }
            this.f18006d.inflate(f, this.f18003a);
            this.f18005c.m1366b(false);
            this.f18005c.mo999a(true);
        }
        b.m9100a();
        addView(this.f18004b, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            View view = new View(context);
            view.setBackgroundColor(C0646b.m8612c(context, C2913a.C2916c.f17454a));
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(C2913a.C2917d.f17473h)));
            addView(view);
        }
        this.f18003a.mo9539a(new C2964d(this));
    }

    /* renamed from: a */
    public final int m1365a() {
        return this.f18004b.m1370f();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m8047a());
        this.f18003a.m9606b(savedState.f18009a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f18009a = new Bundle();
        this.f18003a.m9619a(savedState.f18009a);
        return savedState;
    }
}
