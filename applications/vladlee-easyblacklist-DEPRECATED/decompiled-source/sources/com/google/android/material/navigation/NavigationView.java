package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuInflater;
import android.view.View;
import androidx.appcompat.C0247a;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.appcompat.view.C0350g;
import androidx.appcompat.widget.C0484bm;
import androidx.core.p037g.C0719ag;
import androidx.core.p037g.C0741t;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3030g;
import com.google.android.material.internal.C3032i;
import com.google.android.material.internal.C3052r;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
/* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView.class */
public class NavigationView extends ScrimInsetsFrameLayout {

    /* renamed from: d */
    private static final int[] f18495d = {16842912};

    /* renamed from: e */
    private static final int[] f18496e = {-16842910};

    /* renamed from: c */
    AbstractC3054a f18497c;

    /* renamed from: f */
    private final C3030g f18498f;

    /* renamed from: g */
    private final C3032i f18499g;

    /* renamed from: h */
    private final int f18500h;

    /* renamed from: i */
    private MenuInflater f18501i;

    /* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C3056b();

        /* renamed from: a */
        public Bundle f18502a;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f18502a = parcel.readBundle(classLoader);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.f18502a);
        }
    }

    /* renamed from: com.google.android.material.navigation.NavigationView$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/navigation/NavigationView$a.class */
    public interface AbstractC3054a {
        /* renamed from: a */
        boolean m950a();
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17445k);
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        boolean z;
        this.f18499g = new C3032i();
        this.f18498f = new C3030g(context);
        C0484bm b = C3052r.m957b(context, attributeSet, C2913a.C2924k.f17704cl, i, C2913a.C2923j.f17525h, new int[0]);
        C0741t.m8351a(this, b.m9099a(C2913a.C2924k.f17705cm));
        if (b.m9079i(C2913a.C2924k.f17708cp)) {
            C0741t.m8359a(this, b.m9086d(C2913a.C2924k.f17708cp, 0));
        }
        C0741t.m8334b(this, b.m9095a(C2913a.C2924k.f17706cn, false));
        this.f18500h = b.m9086d(C2913a.C2924k.f17707co, 0);
        ColorStateList f = b.m9079i(C2913a.C2924k.f17713cu) ? b.m9083f(C2913a.C2924k.f17713cu) : m952a(16842808);
        if (b.m9079i(C2913a.C2924k.f17714cv)) {
            i2 = b.m9082f(C2913a.C2924k.f17714cv, 0);
            z = true;
        } else {
            z = false;
            i2 = 0;
        }
        ColorStateList f2 = b.m9079i(C2913a.C2924k.f17715cw) ? b.m9083f(C2913a.C2924k.f17715cw) : null;
        ColorStateList colorStateList = f2;
        if (!z) {
            colorStateList = f2;
            if (f2 == null) {
                colorStateList = m952a(16842806);
            }
        }
        Drawable a = b.m9099a(C2913a.C2924k.f17710cr);
        if (b.m9079i(C2913a.C2924k.f17711cs)) {
            this.f18499g.m992c(b.m9086d(C2913a.C2924k.f17711cs, 0));
        }
        int d = b.m9086d(C2913a.C2924k.f17712ct, 0);
        this.f18498f.mo9539a(new C3055a(this));
        this.f18499g.m1010a();
        this.f18499g.mo1008a(context, this.f18498f);
        this.f18499g.m1007a(f);
        if (z) {
            this.f18499g.m997b(i2);
        }
        this.f18499g.m996b(colorStateList);
        this.f18499g.m1006a(a);
        this.f18499g.m990d(d);
        this.f18498f.m9614a(this.f18499g);
        addView((View) this.f18499g.m1004a(this));
        if (b.m9079i(C2913a.C2924k.f17716cx)) {
            int f3 = b.m9082f(C2913a.C2924k.f17716cx, 0);
            this.f18499g.m994b(true);
            if (this.f18501i == null) {
                this.f18501i = new C0350g(getContext());
            }
            this.f18501i.inflate(f3, this.f18498f);
            this.f18499g.m994b(false);
            this.f18499g.mo999a(false);
        }
        if (b.m9079i(C2913a.C2924k.f17709cq)) {
            this.f18499g.m1009a(b.m9082f(C2913a.C2924k.f17709cq, 0));
        }
        b.m9100a();
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: a */
    private ColorStateList m952a(int i) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i, typedValue, true)) {
            return null;
        }
        ColorStateList a = C0258a.m9952a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0247a.C0248a.f583x, typedValue, true)) {
            return null;
        }
        int i2 = typedValue.data;
        int defaultColor = a.getDefaultColor();
        return new ColorStateList(new int[]{f18496e, f18495d, EMPTY_STATE_SET}, new int[]{a.getColorForState(f18496e, defaultColor), i2, defaultColor});
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    /* renamed from: a */
    public final void mo951a(C0719ag agVar) {
        this.f18499g.m1000a(agVar);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int mode = View.MeasureSpec.getMode(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                i3 = this.f18500h;
            }
            super.onMeasure(i, i2);
        }
        i3 = Math.min(View.MeasureSpec.getSize(i), this.f18500h);
        i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
        super.onMeasure(i, i2);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m8047a());
        this.f18498f.m9606b(savedState.f18502a);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f18502a = new Bundle();
        this.f18498f.m9619a(savedState.f18502a);
        return savedState;
    }
}
