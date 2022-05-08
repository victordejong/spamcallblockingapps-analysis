package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0247a;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
import androidx.core.p036f.C0683e;
import androidx.core.p037g.C0741t;
import androidx.p040d.p041a.p042a.C0806b;
import androidx.transition.AutoTransition;
import androidx.transition.C1217ba;
import androidx.transition.TransitionSet;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3050p;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationMenuView.class */
public class BottomNavigationMenuView extends ViewGroup implements AbstractC0388t {

    /* renamed from: a */
    private static final int[] f17972a = {16842912};

    /* renamed from: b */
    private static final int[] f17973b = {-16842910};

    /* renamed from: c */
    private final TransitionSet f17974c;

    /* renamed from: d */
    private final int f17975d;

    /* renamed from: e */
    private final int f17976e;

    /* renamed from: f */
    private final int f17977f;

    /* renamed from: g */
    private final int f17978g;

    /* renamed from: h */
    private final int f17979h;

    /* renamed from: i */
    private final View.OnClickListener f17980i;

    /* renamed from: j */
    private final C0683e.AbstractC0684a<BottomNavigationItemView> f17981j;

    /* renamed from: k */
    private boolean f17982k;

    /* renamed from: l */
    private int f17983l;

    /* renamed from: m */
    private BottomNavigationItemView[] f17984m;

    /* renamed from: n */
    private int f17985n;

    /* renamed from: o */
    private int f17986o;

    /* renamed from: p */
    private ColorStateList f17987p;

    /* renamed from: q */
    private int f17988q;

    /* renamed from: r */
    private ColorStateList f17989r;

    /* renamed from: s */
    private final ColorStateList f17990s;

    /* renamed from: t */
    private int f17991t;

    /* renamed from: u */
    private int f17992u;

    /* renamed from: v */
    private Drawable f17993v;

    /* renamed from: w */
    private int f17994w;

    /* renamed from: x */
    private int[] f17995x;

    /* renamed from: y */
    private BottomNavigationPresenter f17996y;

    /* renamed from: z */
    private C0371k f17997z;

    public BottomNavigationMenuView(Context context) {
        this(context, null);
    }

    public BottomNavigationMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f17981j = new C0683e.C0686c(5);
        this.f17985n = 0;
        this.f17986o = 0;
        Resources resources = getResources();
        this.f17975d = resources.getDimensionPixelSize(C2913a.C2917d.f17470e);
        this.f17976e = resources.getDimensionPixelSize(C2913a.C2917d.f17471f);
        this.f17977f = resources.getDimensionPixelSize(C2913a.C2917d.f17466a);
        this.f17978g = resources.getDimensionPixelSize(C2913a.C2917d.f17467b);
        this.f17979h = resources.getDimensionPixelSize(C2913a.C2917d.f17468c);
        this.f17990s = m1376c();
        this.f17974c = new AutoTransition();
        this.f17974c.m6592a(0);
        this.f17974c.mo6591a(115L);
        this.f17974c.mo6590a(new C0806b());
        this.f17974c.m6585a(new C3050p());
        this.f17980i = new View$OnClickListenerC2962b(this);
        this.f17995x = new int[5];
    }

    /* renamed from: a */
    private static boolean m1385a(int i, int i2) {
        return i == -1 ? i2 > 3 : i == 0;
    }

    /* renamed from: a */
    public final int m1387a() {
        return this.f17983l;
    }

    /* renamed from: a */
    public final void m1386a(int i) {
        this.f17988q = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f17984m;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m1391c(i);
            }
        }
    }

    /* renamed from: a */
    public final void m1384a(ColorStateList colorStateList) {
        this.f17987p = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f17984m;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m1399a(colorStateList);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t
    /* renamed from: a */
    public final void mo1063a(C0371k kVar) {
        this.f17997z = kVar;
    }

    /* renamed from: a */
    public final void m1382a(BottomNavigationPresenter bottomNavigationPresenter) {
        this.f17996y = bottomNavigationPresenter;
    }

    /* renamed from: a */
    public final void m1381a(boolean z) {
        this.f17982k = z;
    }

    /* renamed from: b */
    public final void m1379b(int i) {
        this.f17991t = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f17984m;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m1390d(i);
                ColorStateList colorStateList = this.f17989r;
                if (colorStateList != null) {
                    bottomNavigationItemView.m1393b(colorStateList);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m1378b(ColorStateList colorStateList) {
        this.f17989r = colorStateList;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f17984m;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m1393b(colorStateList);
            }
        }
    }

    /* renamed from: b */
    public final boolean m1380b() {
        return this.f17982k;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [int[], int[][]] */
    /* renamed from: c */
    public final ColorStateList m1376c() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(16842808, typedValue, true)) {
            return null;
        }
        ColorStateList a = C0258a.m9952a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(C0247a.C0248a.f583x, typedValue, true)) {
            return null;
        }
        int i = typedValue.data;
        int defaultColor = a.getDefaultColor();
        return new ColorStateList(new int[]{f17973b, f17972a, EMPTY_STATE_SET}, new int[]{a.getColorForState(f17973b, defaultColor), i, defaultColor});
    }

    /* renamed from: c */
    public final void m1375c(int i) {
        this.f17992u = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f17984m;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m1389e(i);
                ColorStateList colorStateList = this.f17989r;
                if (colorStateList != null) {
                    bottomNavigationItemView.m1393b(colorStateList);
                }
            }
        }
    }

    /* renamed from: d */
    public final void m1374d() {
        removeAllViews();
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f17984m;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                if (bottomNavigationItemView != null) {
                    this.f17981j.mo8551a(bottomNavigationItemView);
                }
            }
        }
        if (this.f17997z.size() == 0) {
            this.f17985n = 0;
            this.f17986o = 0;
            this.f17984m = null;
            return;
        }
        this.f17984m = new BottomNavigationItemView[this.f17997z.size()];
        boolean a = m1385a(this.f17983l, this.f17997z.m9595l().size());
        for (int i = 0; i < this.f17997z.size(); i++) {
            this.f17996y.m1366b(true);
            this.f17997z.getItem(i).setCheckable(true);
            this.f17996y.m1366b(false);
            BottomNavigationItemView a2 = this.f17981j.mo8552a();
            BottomNavigationItemView bottomNavigationItemView2 = a2;
            if (a2 == null) {
                bottomNavigationItemView2 = new BottomNavigationItemView(getContext());
            }
            this.f17984m[i] = bottomNavigationItemView2;
            bottomNavigationItemView2.m1399a(this.f17987p);
            bottomNavigationItemView2.m1391c(this.f17988q);
            bottomNavigationItemView2.m1393b(this.f17990s);
            bottomNavigationItemView2.m1390d(this.f17991t);
            bottomNavigationItemView2.m1389e(this.f17992u);
            bottomNavigationItemView2.m1393b(this.f17989r);
            Drawable drawable = this.f17993v;
            if (drawable != null) {
                C0741t.m8351a(bottomNavigationItemView2, drawable);
            } else {
                bottomNavigationItemView2.m1388f(this.f17994w);
            }
            bottomNavigationItemView2.m1395a(a);
            bottomNavigationItemView2.m1394b(this.f17983l);
            bottomNavigationItemView2.mo1069a((C0375m) this.f17997z.getItem(i));
            bottomNavigationItemView2.m1400a(i);
            bottomNavigationItemView2.setOnClickListener(this.f17980i);
            addView(bottomNavigationItemView2);
        }
        this.f17986o = Math.min(this.f17997z.size() - 1, this.f17986o);
        this.f17997z.getItem(this.f17986o).setChecked(true);
    }

    /* renamed from: d */
    public final void m1373d(int i) {
        this.f17994w = i;
        BottomNavigationItemView[] bottomNavigationItemViewArr = this.f17984m;
        if (bottomNavigationItemViewArr != null) {
            for (BottomNavigationItemView bottomNavigationItemView : bottomNavigationItemViewArr) {
                bottomNavigationItemView.m1388f(i);
            }
        }
    }

    /* renamed from: e */
    public final void m1372e() {
        C0371k kVar = this.f17997z;
        if (!(kVar == null || this.f17984m == null)) {
            int size = kVar.size();
            if (size != this.f17984m.length) {
                m1374d();
                return;
            }
            int i = this.f17985n;
            for (int i2 = 0; i2 < size; i2++) {
                MenuItem item = this.f17997z.getItem(i2);
                if (item.isChecked()) {
                    this.f17985n = item.getItemId();
                    this.f17986o = i2;
                }
            }
            if (i != this.f17985n) {
                C1217ba.m6539a(this, this.f17974c);
            }
            boolean a = m1385a(this.f17983l, this.f17997z.m9595l().size());
            for (int i3 = 0; i3 < size; i3++) {
                this.f17996y.m1366b(true);
                this.f17984m[i3].m1394b(this.f17983l);
                this.f17984m[i3].m1395a(a);
                this.f17984m[i3].mo1069a((C0375m) this.f17997z.getItem(i3));
                this.f17996y.m1366b(false);
            }
        }
    }

    /* renamed from: e */
    public final void m1371e(int i) {
        this.f17983l = i;
    }

    /* renamed from: f */
    public final int m1370f() {
        return this.f17985n;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m1369f(int i) {
        int size = this.f17997z.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = this.f17997z.getItem(i2);
            if (i == item.getItemId()) {
                this.f17985n = i;
                this.f17986o = i2;
                item.setChecked(true);
                return;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int i5 = i4 - i2;
        int i6 = 0;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            i6 = i6;
            if (childAt.getVisibility() != 8) {
                if (C0741t.m8325g(this) == 1) {
                    int i8 = (i3 - i) - i6;
                    childAt.layout(i8 - childAt.getMeasuredWidth(), 0, i8, i5);
                } else {
                    childAt.layout(i6, 0, childAt.getMeasuredWidth() + i6, i5);
                }
                i6 += childAt.getMeasuredWidth();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = this.f17997z.m9595l().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f17979h, 1073741824);
        if (!m1385a(this.f17983l, size2) || !this.f17982k) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.f17977f);
            int i3 = size - (size2 * min);
            for (int i4 = 0; i4 < childCount; i4++) {
                if (getChildAt(i4).getVisibility() != 8) {
                    int[] iArr = this.f17995x;
                    iArr[i4] = min;
                    i3 = i3;
                    if (i3 > 0) {
                        iArr[i4] = iArr[i4] + 1;
                        i3--;
                    }
                } else {
                    this.f17995x[i4] = 0;
                    i3 = i3;
                }
            }
        } else {
            View childAt = getChildAt(this.f17986o);
            int i5 = this.f17978g;
            int i6 = i5;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f17977f, Integer.MIN_VALUE), makeMeasureSpec);
                i6 = Math.max(i5, childAt.getMeasuredWidth());
            }
            int i7 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.f17976e * i7), Math.min(i6, this.f17977f));
            int i8 = size - min2;
            int min3 = Math.min(i8 / (i7 == 0 ? 1 : i7), this.f17975d);
            int i9 = i8 - (i7 * min3);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    this.f17995x[i10] = i10 == this.f17986o ? min2 : min3;
                    i9 = i9;
                    if (i9 > 0) {
                        int[] iArr2 = this.f17995x;
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.f17995x[i10] = 0;
                    i9 = i9;
                }
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            i11 = i11;
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.f17995x[i12], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, 1073741824), 0), View.resolveSizeAndState(this.f17979h, makeMeasureSpec, 0));
    }
}
