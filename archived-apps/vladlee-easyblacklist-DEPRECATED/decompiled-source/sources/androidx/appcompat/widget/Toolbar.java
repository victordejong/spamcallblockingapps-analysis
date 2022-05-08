package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.view.AbstractC0345c;
import androidx.appcompat.view.C0350g;
import androidx.appcompat.view.menu.AbstractC0386s;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.view.menu.C0375m;
import androidx.appcompat.view.menu.SubMenuC0395z;
import androidx.appcompat.widget.ActionMenuView;
import androidx.core.p037g.C0723c;
import androidx.core.p037g.C0727f;
import androidx.core.p037g.C0741t;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    private ColorStateList f2112A;

    /* renamed from: B */
    private ColorStateList f2113B;

    /* renamed from: C */
    private boolean f2114C;

    /* renamed from: D */
    private boolean f2115D;

    /* renamed from: E */
    private final ArrayList<View> f2116E;

    /* renamed from: F */
    private final ArrayList<View> f2117F;

    /* renamed from: G */
    private final int[] f2118G;

    /* renamed from: H */
    private final ActionMenuView.AbstractC0406d f2119H;

    /* renamed from: I */
    private C0489br f2120I;

    /* renamed from: J */
    private ActionMenuPresenter f2121J;

    /* renamed from: K */
    private C0424a f2122K;

    /* renamed from: L */
    private AbstractC0386s.AbstractC0387a f2123L;

    /* renamed from: M */
    private C0371k.AbstractC0372a f2124M;

    /* renamed from: N */
    private boolean f2125N;

    /* renamed from: O */
    private final Runnable f2126O;

    /* renamed from: a */
    ImageButton f2127a;

    /* renamed from: b */
    View f2128b;

    /* renamed from: c */
    int f2129c;

    /* renamed from: d */
    AbstractC0425b f2130d;

    /* renamed from: e */
    private ActionMenuView f2131e;

    /* renamed from: f */
    private TextView f2132f;

    /* renamed from: g */
    private TextView f2133g;

    /* renamed from: h */
    private ImageButton f2134h;

    /* renamed from: i */
    private ImageView f2135i;

    /* renamed from: j */
    private Drawable f2136j;

    /* renamed from: k */
    private CharSequence f2137k;

    /* renamed from: l */
    private Context f2138l;

    /* renamed from: m */
    private int f2139m;

    /* renamed from: n */
    private int f2140n;

    /* renamed from: o */
    private int f2141o;

    /* renamed from: p */
    private int f2142p;

    /* renamed from: q */
    private int f2143q;

    /* renamed from: r */
    private int f2144r;

    /* renamed from: s */
    private int f2145s;

    /* renamed from: t */
    private int f2146t;

    /* renamed from: u */
    private C0459ar f2147u;

    /* renamed from: v */
    private int f2148v;

    /* renamed from: w */
    private int f2149w;

    /* renamed from: x */
    private int f2150x;

    /* renamed from: y */
    private CharSequence f2151y;

    /* renamed from: z */
    private CharSequence f2152z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$LayoutParams.class */
    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: b */
        int f2153b;

        public LayoutParams() {
            this.f2153b = 0;
            this.f1018a = 8388627;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f2153b = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2153b = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f2153b = 0;
            this.leftMargin = marginLayoutParams.leftMargin;
            this.topMargin = marginLayoutParams.topMargin;
            this.rightMargin = marginLayoutParams.rightMargin;
            this.bottomMargin = marginLayoutParams.bottomMargin;
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f2153b = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f2153b = 0;
            this.f2153b = layoutParams.f2153b;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0488bq();

        /* renamed from: a */
        int f2154a;

        /* renamed from: b */
        boolean f2155b;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2154a = parcel.readInt();
            this.f2155b = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2154a);
            parcel.writeInt(this.f2155b ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$a.class */
    public final class C0424a implements AbstractC0386s {

        /* renamed from: a */
        C0371k f2156a;

        /* renamed from: b */
        C0375m f2157b;

        C0424a() {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: a */
        public final void mo1008a(Context context, C0371k kVar) {
            C0375m mVar;
            C0371k kVar2 = this.f2156a;
            if (!(kVar2 == null || (mVar = this.f2157b) == null)) {
                kVar2.mo9535b(mVar);
            }
            this.f2156a = kVar;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: a */
        public final void mo1005a(Parcelable parcelable) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: a */
        public final void mo1003a(C0371k kVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: a */
        public final void mo1002a(AbstractC0386s.AbstractC0387a aVar) {
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: a */
        public final void mo999a(boolean z) {
            if (this.f2157b != null) {
                C0371k kVar = this.f2156a;
                boolean z2 = false;
                if (kVar != null) {
                    int size = kVar.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f2156a.getItem(i) == this.f2157b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!z2) {
                    mo991c(this.f2157b);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: a */
        public final boolean mo1001a(SubMenuC0395z zVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: b */
        public final boolean mo998b() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: b */
        public final boolean mo995b(C0375m mVar) {
            Toolbar.this.m9258r();
            ViewParent parent = Toolbar.this.f2127a.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f2127a);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f2127a);
            }
            Toolbar.this.f2128b = mVar.getActionView();
            this.f2157b = mVar;
            ViewParent parent2 = Toolbar.this.f2128b.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f2128b);
                }
                LayoutParams s = Toolbar.m9257s();
                s.f1018a = 8388611 | (Toolbar.this.f2129c & 112);
                s.f2153b = 2;
                Toolbar.this.f2128b.setLayoutParams(s);
                Toolbar toolbar4 = Toolbar.this;
                toolbar4.addView(toolbar4.f2128b);
            }
            Toolbar.this.m9255u();
            Toolbar.this.requestLayout();
            mVar.m9574e(true);
            if (!(Toolbar.this.f2128b instanceof AbstractC0345c)) {
                return true;
            }
            ((AbstractC0345c) Toolbar.this.f2128b).mo9360a();
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: c */
        public final int mo993c() {
            return 0;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: c */
        public final boolean mo991c(C0375m mVar) {
            if (Toolbar.this.f2128b instanceof AbstractC0345c) {
                ((AbstractC0345c) Toolbar.this.f2128b).mo9350b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f2128b);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f2127a);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f2128b = null;
            toolbar3.m9254v();
            this.f2157b = null;
            Toolbar.this.requestLayout();
            mVar.m9574e(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.AbstractC0386s
        /* renamed from: f */
        public final Parcelable mo989f() {
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public interface AbstractC0425b {
        /* renamed from: a */
        boolean mo9249a(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f559Q);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2150x = 8388627;
        this.f2116E = new ArrayList<>();
        this.f2117F = new ArrayList<>();
        this.f2118G = new int[2];
        this.f2119H = new C0485bn(this);
        this.f2126O = new RunnableC0486bo(this);
        C0484bm a = C0484bm.m9092a(getContext(), attributeSet, C0247a.C0257j.f976dy, i, 0);
        this.f2140n = a.m9082f(C0247a.C0257j.f979ea, 0);
        this.f2141o = a.m9082f(C0247a.C0257j.f943dR, 0);
        this.f2150x = a.m9090b(C0247a.C0257j.f977dz, this.f2150x);
        this.f2129c = a.m9090b(C0247a.C0257j.f926dA, 48);
        int c = a.m9088c(C0247a.C0257j.f946dU, 0);
        int c2 = a.m9079i(C0247a.C0257j.f951dZ) ? a.m9088c(C0247a.C0257j.f951dZ, c) : c;
        this.f2146t = c2;
        this.f2145s = c2;
        this.f2144r = c2;
        this.f2143q = c2;
        int c3 = a.m9088c(C0247a.C0257j.f949dX, -1);
        if (c3 >= 0) {
            this.f2143q = c3;
        }
        int c4 = a.m9088c(C0247a.C0257j.f948dW, -1);
        if (c4 >= 0) {
            this.f2144r = c4;
        }
        int c5 = a.m9088c(C0247a.C0257j.f950dY, -1);
        if (c5 >= 0) {
            this.f2145s = c5;
        }
        int c6 = a.m9088c(C0247a.C0257j.f947dV, -1);
        if (c6 >= 0) {
            this.f2146t = c6;
        }
        this.f2142p = a.m9086d(C0247a.C0257j.f937dL, -1);
        int c7 = a.m9088c(C0247a.C0257j.f933dH, Integer.MIN_VALUE);
        int c8 = a.m9088c(C0247a.C0257j.f929dD, Integer.MIN_VALUE);
        int d = a.m9086d(C0247a.C0257j.f931dF, 0);
        int d2 = a.m9086d(C0247a.C0257j.f932dG, 0);
        m9303E();
        this.f2147u.m9125b(d, d2);
        if (!(c7 == Integer.MIN_VALUE && c8 == Integer.MIN_VALUE)) {
            this.f2147u.m9128a(c7, c8);
        }
        this.f2148v = a.m9088c(C0247a.C0257j.f934dI, Integer.MIN_VALUE);
        this.f2149w = a.m9088c(C0247a.C0257j.f930dE, Integer.MIN_VALUE);
        this.f2136j = a.m9099a(C0247a.C0257j.f928dC);
        this.f2137k = a.m9089c(C0247a.C0257j.f927dB);
        CharSequence c9 = a.m9089c(C0247a.C0257j.f945dT);
        if (!TextUtils.isEmpty(c9)) {
            mo1423a(c9);
        }
        CharSequence c10 = a.m9089c(C0247a.C0257j.f942dQ);
        if (!TextUtils.isEmpty(c10)) {
            mo1421b(c10);
        }
        this.f2138l = getContext();
        m9302a(a.m9082f(C0247a.C0257j.f941dP, 0));
        Drawable a2 = a.m9099a(C0247a.C0257j.f940dO);
        if (a2 != null) {
            m9282b(a2);
        }
        CharSequence c11 = a.m9089c(C0247a.C0257j.f939dN);
        if (!TextUtils.isEmpty(c11)) {
            m9276c(c11);
        }
        Drawable a3 = a.m9099a(C0247a.C0257j.f935dJ);
        if (a3 != null) {
            m9299a(a3);
        }
        CharSequence c12 = a.m9089c(C0247a.C0257j.f936dK);
        if (!TextUtils.isEmpty(c12)) {
            if (!TextUtils.isEmpty(c12)) {
                m9253w();
            }
            ImageView imageView = this.f2135i;
            if (imageView != null) {
                imageView.setContentDescription(c12);
            }
        }
        if (a.m9079i(C0247a.C0257j.f980eb)) {
            ColorStateList f = a.m9083f(C0247a.C0257j.f980eb);
            this.f2112A = f;
            TextView textView = this.f2132f;
            if (textView != null) {
                textView.setTextColor(f);
            }
        }
        if (a.m9079i(C0247a.C0257j.f944dS)) {
            ColorStateList f2 = a.m9083f(C0247a.C0257j.f944dS);
            this.f2113B = f2;
            TextView textView2 = this.f2133g;
            if (textView2 != null) {
                textView2.setTextColor(f2);
            }
        }
        if (a.m9079i(C0247a.C0257j.f938dM)) {
            new C0350g(getContext()).inflate(a.m9082f(C0247a.C0257j.f938dM, 0), m9259q());
        }
        a.m9100a();
    }

    /* renamed from: A */
    private int m9307A() {
        C0459ar arVar = this.f2147u;
        if (arVar != null) {
            return arVar.m9126b();
        }
        return 0;
    }

    /* renamed from: B */
    private int m9306B() {
        return m9260p() != null ? Math.max(m9250z(), Math.max(this.f2148v, 0)) : m9250z();
    }

    /* renamed from: C */
    private int m9305C() {
        C0371k d;
        ActionMenuView actionMenuView = this.f2131e;
        return actionMenuView != null && (d = actionMenuView.m9465d()) != null && d.hasVisibleItems() ? Math.max(m9307A(), Math.max(this.f2149w, 0)) : m9307A();
    }

    /* renamed from: D */
    private void m9304D() {
        if (this.f2134h == null) {
            this.f2134h = new AppCompatImageButton(getContext(), null, C0247a.C0248a.f558P);
            LayoutParams layoutParams = new LayoutParams();
            layoutParams.f1018a = 8388611 | (this.f2129c & 112);
            this.f2134h.setLayoutParams(layoutParams);
        }
    }

    /* renamed from: E */
    private void m9303E() {
        if (this.f2147u == null) {
            this.f2147u = new C0459ar();
        }
    }

    /* renamed from: a */
    private int m9296a(View view, int i) {
        int i2;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int c = m9278c(layoutParams.f1018a);
        if (c == 48) {
            return getPaddingTop() - i3;
        }
        if (c == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - layoutParams.bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        if (i4 < layoutParams.topMargin) {
            i2 = layoutParams.topMargin;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            i2 = i4;
            if (i5 < layoutParams.bottomMargin) {
                i2 = Math.max(0, i4 - (layoutParams.bottomMargin - i5));
            }
        }
        return paddingTop + i2;
    }

    /* renamed from: a */
    private int m9294a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: a */
    private int m9293a(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int a = m9296a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a, max + measuredWidth, view.getMeasuredHeight() + a);
        return max + measuredWidth + layoutParams.rightMargin;
    }

    /* renamed from: a */
    private static LayoutParams m9291a(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ActionBar.LayoutParams ? new LayoutParams((ActionBar.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* renamed from: a */
    private void m9295a(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + 0, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        int i5 = childMeasureSpec2;
        if (mode != 1073741824) {
            i5 = childMeasureSpec2;
            if (i4 >= 0) {
                int i6 = i4;
                if (mode != 0) {
                    i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i4);
                }
                i5 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
            }
        }
        view.measure(childMeasureSpec, i5);
    }

    /* renamed from: a */
    private void m9292a(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams layoutParams2 = layoutParams == null ? new LayoutParams() : !checkLayoutParams(layoutParams) ? m9291a(layoutParams) : (LayoutParams) layoutParams;
        layoutParams2.f2153b = 1;
        if (!z || this.f2128b == null) {
            addView(view, layoutParams2);
            return;
        }
        view.setLayoutParams(layoutParams2);
        this.f2117F.add(view);
    }

    /* renamed from: a */
    private void m9287a(List<View> list, int i) {
        boolean z = C0741t.m8325g(this) == 1;
        int childCount = getChildCount();
        int a = C0723c.m8415a(i, C0741t.m8325g(this));
        list.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f2153b == 0 && m9297a(childAt) && m9274d(layoutParams.f1018a) == a) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f2153b == 0 && m9297a(childAt2) && m9274d(layoutParams2.f1018a) == a) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: a */
    private boolean m9297a(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    private static int m9281b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return C0727f.m8406a(marginLayoutParams) + C0727f.m8404b(marginLayoutParams);
    }

    /* renamed from: b */
    private int m9280b(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = layoutParams.rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int a = m9296a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a, max, view.getMeasuredHeight() + a);
        return max - (measuredWidth + layoutParams.leftMargin);
    }

    /* renamed from: c */
    private int m9278c(int i) {
        int i2 = i & 112;
        return (i2 == 16 || i2 == 48 || i2 == 80) ? i2 : this.f2150x & 112;
    }

    /* renamed from: c */
    private static int m9277c(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: d */
    private int m9274d(int i) {
        int g = C0741t.m8325g(this);
        int a = C0723c.m8415a(i, g) & 7;
        return (a == 1 || a == 3 || a == 5) ? a : g == 1 ? 5 : 3;
    }

    /* renamed from: d */
    private boolean m9273d(View view) {
        return view.getParent() == this || this.f2117F.contains(view);
    }

    /* renamed from: s */
    protected static LayoutParams m9257s() {
        return new LayoutParams();
    }

    /* renamed from: w */
    private void m9253w() {
        if (this.f2135i == null) {
            this.f2135i = new AppCompatImageView(getContext());
        }
    }

    /* renamed from: x */
    private void m9252x() {
        m9251y();
        if (this.f2131e.m9465d() == null) {
            C0371k kVar = (C0371k) this.f2131e.m9466c();
            if (this.f2122K == null) {
                this.f2122K = new C0424a();
            }
            this.f2131e.m9458j();
            kVar.m9613a(this.f2122K, this.f2138l);
        }
    }

    /* renamed from: y */
    private void m9251y() {
        if (this.f2131e == null) {
            this.f2131e = new ActionMenuView(getContext());
            this.f2131e.m9475a(this.f2139m);
            ActionMenuView actionMenuView = this.f2131e;
            actionMenuView.f1839b = this.f2119H;
            actionMenuView.m9471a(this.f2123L, this.f2124M);
            LayoutParams layoutParams = new LayoutParams();
            layoutParams.f1018a = 8388613 | (this.f2129c & 112);
            this.f2131e.setLayoutParams(layoutParams);
            m9292a((View) this.f2131e, false);
        }
    }

    /* renamed from: z */
    private int m9250z() {
        C0459ar arVar = this.f2147u;
        if (arVar != null) {
            return arVar.m9129a();
        }
        return 0;
    }

    /* renamed from: a */
    public final void m9302a(int i) {
        if (this.f2139m != i) {
            this.f2139m = i;
            if (i == 0) {
                this.f2138l = getContext();
            } else {
                this.f2138l = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    /* renamed from: a */
    public final void m9301a(int i, int i2) {
        m9303E();
        this.f2147u.m9128a(i, i2);
    }

    /* renamed from: a */
    public final void m9300a(Context context, int i) {
        this.f2140n = i;
        TextView textView = this.f2132f;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* renamed from: a */
    public final void m9299a(Drawable drawable) {
        if (drawable != null) {
            m9253w();
            if (!m9273d(this.f2135i)) {
                m9292a((View) this.f2135i, true);
            }
        } else {
            ImageView imageView = this.f2135i;
            if (imageView != null && m9273d(imageView)) {
                removeView(this.f2135i);
                this.f2117F.remove(this.f2135i);
            }
        }
        ImageView imageView2 = this.f2135i;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    /* renamed from: a */
    public final void m9298a(View.OnClickListener onClickListener) {
        m9304D();
        this.f2134h.setOnClickListener(onClickListener);
    }

    /* renamed from: a */
    public final void m9290a(C0371k kVar, ActionMenuPresenter actionMenuPresenter) {
        if (kVar != null || this.f2131e != null) {
            m9251y();
            C0371k d = this.f2131e.m9465d();
            if (d != kVar) {
                if (d != null) {
                    d.m9605b(this.f2121J);
                    d.m9605b(this.f2122K);
                }
                if (this.f2122K == null) {
                    this.f2122K = new C0424a();
                }
                actionMenuPresenter.m9484g();
                if (kVar != null) {
                    kVar.m9613a(actionMenuPresenter, this.f2138l);
                    kVar.m9613a(this.f2122K, this.f2138l);
                } else {
                    actionMenuPresenter.mo1008a(this.f2138l, (C0371k) null);
                    this.f2122K.mo1008a(this.f2138l, (C0371k) null);
                    actionMenuPresenter.mo999a(true);
                    this.f2122K.mo999a(true);
                }
                this.f2131e.m9475a(this.f2139m);
                this.f2131e.m9470a(actionMenuPresenter);
                this.f2121J = actionMenuPresenter;
            }
        }
    }

    /* renamed from: a */
    public final void m9289a(AbstractC0386s.AbstractC0387a aVar, C0371k.AbstractC0372a aVar2) {
        this.f2123L = aVar;
        this.f2124M = aVar2;
        ActionMenuView actionMenuView = this.f2131e;
        if (actionMenuView != null) {
            actionMenuView.m9471a(aVar, aVar2);
        }
    }

    /* renamed from: a */
    public final void m9288a(AbstractC0425b bVar) {
        this.f2130d = bVar;
    }

    /* renamed from: a */
    public void mo1423a(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f2132f == null) {
                Context context = getContext();
                this.f2132f = new AppCompatTextView(context);
                this.f2132f.setSingleLine();
                this.f2132f.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f2140n;
                if (i != 0) {
                    this.f2132f.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f2112A;
                if (colorStateList != null) {
                    this.f2132f.setTextColor(colorStateList);
                }
            }
            if (!m9273d(this.f2132f)) {
                m9292a((View) this.f2132f, true);
            }
        } else {
            TextView textView = this.f2132f;
            if (textView != null && m9273d(textView)) {
                removeView(this.f2132f);
                this.f2117F.remove(this.f2132f);
            }
        }
        TextView textView2 = this.f2132f;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f2151y = charSequence;
    }

    /* renamed from: a */
    public final void m9286a(boolean z) {
        this.f2125N = z;
        requestLayout();
    }

    /* renamed from: b */
    public final int m9285b() {
        return this.f2145s;
    }

    /* renamed from: b */
    public final void m9284b(int i) {
        m9276c(i != 0 ? getContext().getText(i) : null);
    }

    /* renamed from: b */
    public final void m9283b(Context context, int i) {
        this.f2141o = i;
        TextView textView = this.f2133g;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* renamed from: b */
    public final void m9282b(Drawable drawable) {
        if (drawable != null) {
            m9304D();
            if (!m9273d(this.f2134h)) {
                m9292a((View) this.f2134h, true);
            }
        } else {
            ImageButton imageButton = this.f2134h;
            if (imageButton != null && m9273d(imageButton)) {
                removeView(this.f2134h);
                this.f2117F.remove(this.f2134h);
            }
        }
        ImageButton imageButton2 = this.f2134h;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    /* renamed from: b */
    public void mo1421b(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f2133g == null) {
                Context context = getContext();
                this.f2133g = new AppCompatTextView(context);
                this.f2133g.setSingleLine();
                this.f2133g.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f2141o;
                if (i != 0) {
                    this.f2133g.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f2113B;
                if (colorStateList != null) {
                    this.f2133g.setTextColor(colorStateList);
                }
            }
            if (!m9273d(this.f2133g)) {
                m9292a((View) this.f2133g, true);
            }
        } else {
            TextView textView = this.f2133g;
            if (textView != null && m9273d(textView)) {
                removeView(this.f2133g);
                this.f2117F.remove(this.f2133g);
            }
        }
        TextView textView2 = this.f2133g;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f2152z = charSequence;
    }

    /* renamed from: c */
    public final int m9279c() {
        return this.f2144r;
    }

    /* renamed from: c */
    public final void m9276c(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m9304D();
        }
        ImageButton imageButton = this.f2134h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    /* renamed from: d */
    public final int m9275d() {
        return this.f2146t;
    }

    /* renamed from: e */
    public final boolean m9272e() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f2131e) != null && actionMenuView.m9476a();
    }

    /* renamed from: f */
    public final boolean m9271f() {
        ActionMenuView actionMenuView = this.f2131e;
        return actionMenuView != null && actionMenuView.m9461g();
    }

    /* renamed from: g */
    public final boolean m9270g() {
        ActionMenuView actionMenuView = this.f2131e;
        return actionMenuView != null && actionMenuView.m9460h();
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m9291a(layoutParams);
    }

    /* renamed from: h */
    public final boolean m9269h() {
        ActionMenuView actionMenuView = this.f2131e;
        return actionMenuView != null && actionMenuView.m9463e();
    }

    /* renamed from: i */
    public final boolean m9268i() {
        ActionMenuView actionMenuView = this.f2131e;
        return actionMenuView != null && actionMenuView.m9462f();
    }

    /* renamed from: j */
    public final void m9267j() {
        ActionMenuView actionMenuView = this.f2131e;
        if (actionMenuView != null) {
            actionMenuView.m9459i();
        }
    }

    /* renamed from: k */
    public final boolean m9266k() {
        C0424a aVar = this.f2122K;
        return (aVar == null || aVar.f2157b == null) ? false : true;
    }

    /* renamed from: k_ */
    public final int m9265k_() {
        return this.f2143q;
    }

    /* renamed from: l */
    public final void m9264l() {
        C0424a aVar = this.f2122K;
        C0375m mVar = aVar == null ? null : aVar.f2157b;
        if (mVar != null) {
            mVar.collapseActionView();
        }
    }

    /* renamed from: m */
    public final CharSequence m9263m() {
        return this.f2151y;
    }

    /* renamed from: n */
    public final CharSequence m9262n() {
        return this.f2152z;
    }

    /* renamed from: o */
    public final CharSequence m9261o() {
        ImageButton imageButton = this.f2134h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f2126O);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f2115D = false;
        }
        if (!this.f2115D) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f2115D = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f2115D = false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:111:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0571 A[LOOP:0: B:128:0x056b->B:130:0x0571, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:134:0x05a6 A[LOOP:1: B:132:0x05a0->B:134:0x05a6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x05f3 A[LOOP:2: B:136:0x05ec->B:138:0x05f3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0679  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x069f A[LOOP:3: B:146:0x0699->B:148:0x069f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0384  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1730
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x040b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r10, int r11) {
        /*
            Method dump skipped, instructions count: 1045
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onMeasure(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m8047a());
        ActionMenuView actionMenuView = this.f2131e;
        C0371k d = actionMenuView != null ? actionMenuView.m9465d() : null;
        if (!(savedState.f2154a == 0 || this.f2122K == null || d == null || (findItem = d.findItem(savedState.f2154a)) == null)) {
            findItem.expandActionView();
        }
        if (savedState.f2155b) {
            removeCallbacks(this.f2126O);
            post(this.f2126O);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m9303E();
        C0459ar arVar = this.f2147u;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        arVar.m9127a(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        C0424a aVar = this.f2122K;
        if (!(aVar == null || aVar.f2157b == null)) {
            savedState.f2154a = this.f2122K.f2157b.getItemId();
        }
        savedState.f2155b = m9271f();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f2114C = false;
        }
        if (!this.f2114C) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f2114C = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f2114C = false;
        return true;
    }

    /* renamed from: p */
    public final Drawable m9260p() {
        ImageButton imageButton = this.f2134h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    /* renamed from: q */
    public final Menu m9259q() {
        m9252x();
        return this.f2131e.m9466c();
    }

    /* renamed from: r */
    final void m9258r() {
        if (this.f2127a == null) {
            this.f2127a = new AppCompatImageButton(getContext(), null, C0247a.C0248a.f558P);
            this.f2127a.setImageDrawable(this.f2136j);
            this.f2127a.setContentDescription(this.f2137k);
            LayoutParams layoutParams = new LayoutParams();
            layoutParams.f1018a = 8388611 | (this.f2129c & 112);
            layoutParams.f2153b = 2;
            this.f2127a.setLayoutParams(layoutParams);
            this.f2127a.setOnClickListener(new View$OnClickListenerC0487bp(this));
        }
    }

    /* renamed from: t */
    public final AbstractC0436ag m9256t() {
        if (this.f2120I == null) {
            this.f2120I = new C0489br(this, true);
        }
        return this.f2120I;
    }

    /* renamed from: u */
    final void m9255u() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (!(((LayoutParams) childAt.getLayoutParams()).f2153b == 2 || childAt == this.f2131e)) {
                removeViewAt(childCount);
                this.f2117F.add(childAt);
            }
        }
    }

    /* renamed from: v */
    final void m9254v() {
        for (int size = this.f2117F.size() - 1; size >= 0; size--) {
            addView(this.f2117F.get(size));
        }
        this.f2117F.clear();
    }
}
