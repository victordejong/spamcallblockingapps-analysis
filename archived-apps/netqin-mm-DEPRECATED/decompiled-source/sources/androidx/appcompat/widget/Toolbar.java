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
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.ActionMenuView;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.List;
import p012b.p016b.C0574a;
import p012b.p016b.C0583j;
import p012b.p016b.p018l.p019a.C0601a;
import p012b.p016b.p024p.AbstractC0624c;
import p012b.p016b.p024p.C0629g;
import p012b.p016b.p024p.p025j.AbstractC0662m;
import p012b.p016b.p024p.p025j.C0647g;
import p012b.p016b.p024p.p025j.C0651i;
import p012b.p016b.p024p.p025j.SubMenuC0671r;
import p012b.p016b.p026q.AbstractC0715o;
import p012b.p016b.p026q.C0691f0;
import p012b.p016b.p026q.C0693g0;
import p012b.p016b.p026q.C0708l0;
import p012b.p016b.p026q.C0736x;
import p012b.p042i.p054p.C0967d;
import p012b.p042i.p054p.C0988g;
import p012b.p042i.p054p.C1002u;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    public ColorStateList f788A;

    /* renamed from: B */
    public boolean f789B;

    /* renamed from: C */
    public boolean f790C;

    /* renamed from: D */
    public final ArrayList<View> f791D;

    /* renamed from: E */
    public final ArrayList<View> f792E;

    /* renamed from: F */
    public final int[] f793F;

    /* renamed from: G */
    public AbstractC0174e f794G;

    /* renamed from: H */
    public final ActionMenuView.AbstractC0125d f795H;

    /* renamed from: I */
    public C0693g0 f796I;

    /* renamed from: J */
    public ActionMenuPresenter f797J;

    /* renamed from: K */
    public C0173d f798K;

    /* renamed from: L */
    public AbstractC0662m.AbstractC0663a f799L;

    /* renamed from: M */
    public C0647g.AbstractC0648a f800M;

    /* renamed from: N */
    public boolean f801N;

    /* renamed from: O */
    public final Runnable f802O;

    /* renamed from: a */
    public ActionMenuView f803a;

    /* renamed from: b */
    public TextView f804b;

    /* renamed from: c */
    public TextView f805c;

    /* renamed from: d */
    public ImageButton f806d;

    /* renamed from: e */
    public ImageView f807e;

    /* renamed from: f */
    public Drawable f808f;

    /* renamed from: g */
    public CharSequence f809g;

    /* renamed from: h */
    public ImageButton f810h;

    /* renamed from: i */
    public View f811i;

    /* renamed from: j */
    public Context f812j;

    /* renamed from: k */
    public int f813k;

    /* renamed from: l */
    public int f814l;

    /* renamed from: m */
    public int f815m;

    /* renamed from: n */
    public int f816n;

    /* renamed from: o */
    public int f817o;

    /* renamed from: p */
    public int f818p;

    /* renamed from: q */
    public int f819q;

    /* renamed from: r */
    public int f820r;

    /* renamed from: s */
    public int f821s;

    /* renamed from: t */
    public C0736x f822t;

    /* renamed from: u */
    public int f823u;

    /* renamed from: v */
    public int f824v;

    /* renamed from: w */
    public int f825w;

    /* renamed from: x */
    public CharSequence f826x;

    /* renamed from: y */
    public CharSequence f827y;

    /* renamed from: z */
    public ColorStateList f828z;

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$LayoutParams.class */
    public static class LayoutParams extends ActionBar.LayoutParams {

        /* renamed from: b */
        public int f829b;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f829b = 0;
            this.f156a = 8388627;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f829b = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f829b = 0;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f829b = 0;
            m38839a(marginLayoutParams);
        }

        public LayoutParams(ActionBar.LayoutParams layoutParams) {
            super(layoutParams);
            this.f829b = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ActionBar.LayoutParams) layoutParams);
            this.f829b = 0;
            this.f829b = layoutParams.f829b;
        }

        /* renamed from: a */
        public void m38839a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState.class */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new C0169a();

        /* renamed from: c */
        public int f830c;

        /* renamed from: d */
        public boolean f831d;

        /* renamed from: androidx.appcompat.widget.Toolbar$SavedState$a */
        /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$SavedState$a.class */
        public class C0169a implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f830c = parcel.readInt();
            this.f831d = parcel.readInt() != 0;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f830c);
            parcel.writeInt(this.f831d ? 1 : 0);
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$a.class */
    public class C0170a implements ActionMenuView.AbstractC0125d {
        public C0170a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.AbstractC0125d
        public boolean onMenuItemClick(MenuItem menuItem) {
            AbstractC0174e eVar = Toolbar.this.f794G;
            if (eVar != null) {
                return eVar.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public class RunnableC0171b implements Runnable {
        public RunnableC0171b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.m38840r();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$c.class */
    public class View$OnClickListenerC0172c implements View.OnClickListener {
        public View$OnClickListenerC0172c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.m38858c();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$d */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$d.class */
    public class C0173d implements AbstractC0662m {

        /* renamed from: a */
        public C0647g f835a;

        /* renamed from: b */
        public C0651i f836b;

        public C0173d() {
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m
        /* renamed from: a */
        public void mo36525a(Context context, C0647g gVar) {
            C0651i iVar;
            C0647g gVar2 = this.f835a;
            if (!(gVar2 == null || (iVar = this.f836b) == null)) {
                gVar2.mo36499a(iVar);
            }
            this.f835a = gVar;
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m
        /* renamed from: a */
        public void mo36512a(C0647g gVar, boolean z) {
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m
        /* renamed from: a */
        public void mo36511a(AbstractC0662m.AbstractC0663a aVar) {
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m
        /* renamed from: a */
        public void mo36509a(boolean z) {
            if (this.f836b != null) {
                C0647g gVar = this.f835a;
                boolean z2 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i = 0;
                    while (true) {
                        z2 = false;
                        if (i >= size) {
                            break;
                        } else if (this.f835a.getItem(i) == this.f836b) {
                            z2 = true;
                            break;
                        } else {
                            i++;
                        }
                    }
                }
                if (!z2) {
                    mo36524a(this.f835a, this.f836b);
                }
            }
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m
        /* renamed from: a */
        public boolean mo36524a(C0647g gVar, C0651i iVar) {
            View view = Toolbar.this.f811i;
            if (view instanceof AbstractC0624c) {
                ((AbstractC0624c) view).mo36547b();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.f811i);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.f810h);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.f811i = null;
            toolbar3.m38876a();
            this.f836b = null;
            Toolbar.this.requestLayout();
            iVar.m36567a(false);
            return true;
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m
        /* renamed from: a */
        public boolean mo36510a(SubMenuC0671r rVar) {
            return false;
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m
        /* renamed from: b */
        public boolean mo36508b() {
            return false;
        }

        @Override // p012b.p016b.p024p.p025j.AbstractC0662m
        /* renamed from: b */
        public boolean mo36523b(C0647g gVar, C0651i iVar) {
            Toolbar.this.m38853e();
            ViewParent parent = Toolbar.this.f810h.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.f810h);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.f810h);
            }
            Toolbar.this.f811i = iVar.getActionView();
            this.f836b = iVar;
            ViewParent parent2 = Toolbar.this.f811i.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.f811i);
                }
                LayoutParams generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.f156a = 8388611 | (toolbar4.f816n & 112);
                generateDefaultLayoutParams.f829b = 2;
                toolbar4.f811i.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.f811i);
            }
            Toolbar.this.m38842p();
            Toolbar.this.requestLayout();
            iVar.m36567a(true);
            View view = Toolbar.this.f811i;
            if (!(view instanceof AbstractC0624c)) {
                return true;
            }
            ((AbstractC0624c) view).mo36548a();
            return true;
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$e */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$e.class */
    public interface AbstractC0174e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context) {
        this(context, null);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0574a.toolbarStyle);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f825w = 8388627;
        this.f791D = new ArrayList<>();
        this.f792E = new ArrayList<>();
        this.f793F = new int[2];
        this.f795H = new C0170a();
        this.f802O = new RunnableC0171b();
        C0691f0 a = C0691f0.m36414a(getContext(), attributeSet, C0583j.Toolbar, i, 0);
        C1002u.m35244a(this, context, C0583j.Toolbar, attributeSet, a.m36422a(), i, 0);
        this.f814l = a.m36401g(C0583j.Toolbar_titleTextAppearance, 0);
        this.f815m = a.m36401g(C0583j.Toolbar_subtitleTextAppearance, 0);
        this.f825w = a.m36405e(C0583j.Toolbar_android_gravity, this.f825w);
        this.f816n = a.m36405e(C0583j.Toolbar_buttonGravity, 48);
        int b = a.m36411b(C0583j.Toolbar_titleMargin, 0);
        int b2 = a.m36402g(C0583j.Toolbar_titleMargins) ? a.m36411b(C0583j.Toolbar_titleMargins, b) : b;
        this.f821s = b2;
        this.f820r = b2;
        this.f819q = b2;
        this.f818p = b2;
        int b3 = a.m36411b(C0583j.Toolbar_titleMarginStart, -1);
        if (b3 >= 0) {
            this.f818p = b3;
        }
        int b4 = a.m36411b(C0583j.Toolbar_titleMarginEnd, -1);
        if (b4 >= 0) {
            this.f819q = b4;
        }
        int b5 = a.m36411b(C0583j.Toolbar_titleMarginTop, -1);
        if (b5 >= 0) {
            this.f820r = b5;
        }
        int b6 = a.m36411b(C0583j.Toolbar_titleMarginBottom, -1);
        if (b6 >= 0) {
            this.f821s = b6;
        }
        this.f817o = a.m36409c(C0583j.Toolbar_maxButtonHeight, -1);
        int b7 = a.m36411b(C0583j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int b8 = a.m36411b(C0583j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int c = a.m36409c(C0583j.Toolbar_contentInsetLeft, 0);
        int c2 = a.m36409c(C0583j.Toolbar_contentInsetRight, 0);
        m38852f();
        this.f822t.m36181a(c, c2);
        if (!(b7 == Integer.MIN_VALUE && b8 == Integer.MIN_VALUE)) {
            this.f822t.m36178b(b7, b8);
        }
        this.f823u = a.m36411b(C0583j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.f824v = a.m36411b(C0583j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f808f = a.m36412b(C0583j.Toolbar_collapseIcon);
        this.f809g = a.m36406e(C0583j.Toolbar_collapseContentDescription);
        CharSequence e = a.m36406e(C0583j.Toolbar_title);
        if (!TextUtils.isEmpty(e)) {
            setTitle(e);
        }
        CharSequence e2 = a.m36406e(C0583j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(e2)) {
            setSubtitle(e2);
        }
        this.f812j = getContext();
        setPopupTheme(a.m36401g(C0583j.Toolbar_popupTheme, 0));
        Drawable b9 = a.m36412b(C0583j.Toolbar_navigationIcon);
        if (b9 != null) {
            setNavigationIcon(b9);
        }
        CharSequence e3 = a.m36406e(C0583j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(e3)) {
            setNavigationContentDescription(e3);
        }
        Drawable b10 = a.m36412b(C0583j.Toolbar_logo);
        if (b10 != null) {
            setLogo(b10);
        }
        CharSequence e4 = a.m36406e(C0583j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(e4)) {
            setLogoDescription(e4);
        }
        if (a.m36402g(C0583j.Toolbar_titleTextColor)) {
            setTitleTextColor(a.m36421a(C0583j.Toolbar_titleTextColor));
        }
        if (a.m36402g(C0583j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(a.m36421a(C0583j.Toolbar_subtitleTextColor));
        }
        if (a.m36402g(C0583j.Toolbar_menu)) {
            m38857c(a.m36401g(C0583j.Toolbar_menu, 0));
        }
        a.m36413b();
    }

    private MenuInflater getMenuInflater() {
        return new C0629g(getContext());
    }

    /* renamed from: a */
    public final int m38875a(int i) {
        int n = C1002u.m35208n(this);
        int a = C0967d.m35388a(i, n) & 7;
        if (a != 1) {
            int i2 = 3;
            if (!(a == 3 || a == 5)) {
                if (n == 1) {
                    i2 = 5;
                }
                return i2;
            }
        }
        return a;
    }

    /* renamed from: a */
    public final int m38872a(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return C0988g.m35297b(marginLayoutParams) + C0988g.m35298a(marginLayoutParams);
    }

    /* renamed from: a */
    public final int m38871a(View view, int i) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int b = m38862b(layoutParams.f156a);
        if (b == 48) {
            return getPaddingTop() - i2;
        }
        if (b == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i3 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i4 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
        if (i3 >= i4) {
            int i5 = (((height - paddingBottom) - measuredHeight) - i3) - paddingTop;
            int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            i4 = i3;
            if (i5 < i6) {
                i4 = Math.max(0, i3 - (i6 - i5));
            }
        }
        return paddingTop + i4;
    }

    /* renamed from: a */
    public final int m38869a(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: a */
    public final int m38868a(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int a = m38871a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, a, max + measuredWidth, view.getMeasuredHeight() + a);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    /* renamed from: a */
    public final int m38864a(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - i;
            int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - i2;
            int max = Math.max(0, i5);
            int max2 = Math.max(0, i6);
            i = Math.max(0, -i5);
            i2 = Math.max(0, -i6);
            i3 += max + view.getMeasuredWidth() + max2;
        }
        return i3;
    }

    /* renamed from: a */
    public void m38876a() {
        for (int size = this.f792E.size() - 1; size >= 0; size--) {
            addView(this.f792E.get(size));
        }
        this.f792E.clear();
    }

    /* renamed from: a */
    public void m38874a(int i, int i2) {
        m38852f();
        this.f822t.m36178b(i, i2);
    }

    /* renamed from: a */
    public void m38873a(Context context, int i) {
        this.f815m = i;
        TextView textView = this.f805c;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* renamed from: a */
    public final void m38870a(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        int i6 = childMeasureSpec2;
        if (mode != 1073741824) {
            i6 = childMeasureSpec2;
            if (i5 >= 0) {
                int i7 = i5;
                if (mode != 0) {
                    i7 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
                }
                i6 = View.MeasureSpec.makeMeasureSpec(i7, 1073741824);
            }
        }
        view.measure(childMeasureSpec, i6);
    }

    /* renamed from: a */
    public final void m38867a(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        LayoutParams generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (LayoutParams) layoutParams;
        generateDefaultLayoutParams.f829b = 1;
        if (!z || this.f811i == null) {
            addView(view, generateDefaultLayoutParams);
            return;
        }
        view.setLayoutParams(generateDefaultLayoutParams);
        this.f792E.add(view);
    }

    /* renamed from: a */
    public void m38866a(C0647g gVar, ActionMenuPresenter actionMenuPresenter) {
        if (gVar != null || this.f803a != null) {
            m38849i();
            C0647g i = this.f803a.m39035i();
            if (i != gVar) {
                if (i != null) {
                    i.m36600b(this.f797J);
                    i.m36600b(this.f798K);
                }
                if (this.f798K == null) {
                    this.f798K = new C0173d();
                }
                actionMenuPresenter.m39058c(true);
                if (gVar != null) {
                    gVar.m36609a(actionMenuPresenter, this.f812j);
                    gVar.m36609a(this.f798K, this.f812j);
                } else {
                    actionMenuPresenter.mo36525a(this.f812j, (C0647g) null);
                    this.f798K.mo36525a(this.f812j, (C0647g) null);
                    actionMenuPresenter.mo36509a(true);
                    this.f798K.mo36509a(true);
                }
                this.f803a.setPopupTheme(this.f813k);
                this.f803a.setPresenter(actionMenuPresenter);
                this.f797J = actionMenuPresenter;
            }
        }
    }

    /* renamed from: a */
    public final void m38865a(List<View> list, int i) {
        boolean z = C1002u.m35208n(this) == 1;
        int childCount = getChildCount();
        int a = C0967d.m35388a(i, C1002u.m35208n(this));
        list.clear();
        if (z) {
            for (int i2 = childCount - 1; i2 >= 0; i2--) {
                View childAt = getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.f829b == 0 && m38854d(childAt) && m38875a(layoutParams.f156a) == a) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt2 = getChildAt(i3);
            LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
            if (layoutParams2.f829b == 0 && m38854d(childAt2) && m38875a(layoutParams2.f156a) == a) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: b */
    public final int m38862b(int i) {
        int i2 = i & 112;
        int i3 = i2;
        if (i2 != 16) {
            i3 = i2;
            if (i2 != 48) {
                i3 = i2;
                if (i2 != 80) {
                    i3 = this.f825w & 112;
                }
            }
        }
        return i3;
    }

    /* renamed from: b */
    public final int m38860b(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: b */
    public final int m38859b(View view, int i, int[] iArr, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int a = m38871a(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, a, max, view.getMeasuredHeight() + a);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    /* renamed from: b */
    public void m38861b(Context context, int i) {
        this.f814l = i;
        TextView textView = this.f804b;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* renamed from: b */
    public boolean m38863b() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f803a) != null && actionMenuView.m39036h();
    }

    /* renamed from: c */
    public void m38858c() {
        C0173d dVar = this.f798K;
        C0651i iVar = dVar == null ? null : dVar.f836b;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    /* renamed from: c */
    public void m38857c(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    /* renamed from: c */
    public final boolean m38856c(View view) {
        return view.getParent() == this || this.f792E.contains(view);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    /* renamed from: d */
    public void m38855d() {
        ActionMenuView actionMenuView = this.f803a;
        if (actionMenuView != null) {
            actionMenuView.m39043c();
        }
    }

    /* renamed from: d */
    public final boolean m38854d(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: e */
    public void m38853e() {
        if (this.f810h == null) {
            AppCompatImageButton appCompatImageButton = new AppCompatImageButton(getContext(), null, C0574a.toolbarNavigationButtonStyle);
            this.f810h = appCompatImageButton;
            appCompatImageButton.setImageDrawable(this.f808f);
            this.f810h.setContentDescription(this.f809g);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f156a = 8388611 | (this.f816n & 112);
            generateDefaultLayoutParams.f829b = 2;
            this.f810h.setLayoutParams(generateDefaultLayoutParams);
            this.f810h.setOnClickListener(new View$OnClickListenerC0172c());
        }
    }

    /* renamed from: f */
    public final void m38852f() {
        if (this.f822t == null) {
            this.f822t = new C0736x();
        }
    }

    /* renamed from: g */
    public final void m38851g() {
        if (this.f807e == null) {
            this.f807e = new AppCompatImageView(getContext());
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams ? new LayoutParams((LayoutParams) layoutParams) : layoutParams instanceof ActionBar.LayoutParams ? new LayoutParams((ActionBar.LayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f810h;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f810h;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public int getContentInsetEnd() {
        C0736x xVar = this.f822t;
        return xVar != null ? xVar.m36182a() : 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f824v;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetLeft() {
        C0736x xVar = this.f822t;
        return xVar != null ? xVar.m36179b() : 0;
    }

    public int getContentInsetRight() {
        C0736x xVar = this.f822t;
        return xVar != null ? xVar.m36177c() : 0;
    }

    public int getContentInsetStart() {
        C0736x xVar = this.f822t;
        return xVar != null ? xVar.m36176d() : 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f823u;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        C0647g i;
        ActionMenuView actionMenuView = this.f803a;
        return actionMenuView != null && (i = actionMenuView.m39035i()) != null && i.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.f824v, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return C1002u.m35208n(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return C1002u.m35208n(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f823u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f807e;
        return imageView != null ? imageView.getDrawable() : null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f807e;
        return imageView != null ? imageView.getContentDescription() : null;
    }

    public Menu getMenu() {
        m38850h();
        return this.f803a.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f806d;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f806d;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public ActionMenuPresenter getOuterActionMenuPresenter() {
        return this.f797J;
    }

    public Drawable getOverflowIcon() {
        m38850h();
        return this.f803a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f812j;
    }

    public int getPopupTheme() {
        return this.f813k;
    }

    public CharSequence getSubtitle() {
        return this.f827y;
    }

    public final TextView getSubtitleTextView() {
        return this.f805c;
    }

    public CharSequence getTitle() {
        return this.f826x;
    }

    public int getTitleMarginBottom() {
        return this.f821s;
    }

    public int getTitleMarginEnd() {
        return this.f819q;
    }

    public int getTitleMarginStart() {
        return this.f818p;
    }

    public int getTitleMarginTop() {
        return this.f820r;
    }

    public final TextView getTitleTextView() {
        return this.f804b;
    }

    public AbstractC0715o getWrapper() {
        if (this.f796I == null) {
            this.f796I = new C0693g0(this, true);
        }
        return this.f796I;
    }

    /* renamed from: h */
    public final void m38850h() {
        m38849i();
        if (this.f803a.m39035i() == null) {
            C0647g gVar = (C0647g) this.f803a.getMenu();
            if (this.f798K == null) {
                this.f798K = new C0173d();
            }
            this.f803a.setExpandedActionViewsExclusive(true);
            gVar.m36609a(this.f798K, this.f812j);
        }
    }

    /* renamed from: i */
    public final void m38849i() {
        if (this.f803a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f803a = actionMenuView;
            actionMenuView.setPopupTheme(this.f813k);
            this.f803a.setOnMenuItemClickListener(this.f795H);
            this.f803a.m39045a(this.f799L, this.f800M);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f156a = 8388613 | (this.f816n & 112);
            this.f803a.setLayoutParams(generateDefaultLayoutParams);
            m38867a((View) this.f803a, false);
        }
    }

    /* renamed from: j */
    public final void m38848j() {
        if (this.f806d == null) {
            this.f806d = new AppCompatImageButton(getContext(), null, C0574a.toolbarNavigationButtonStyle);
            LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f156a = 8388611 | (this.f816n & 112);
            this.f806d.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    /* renamed from: k */
    public boolean m38847k() {
        C0173d dVar = this.f798K;
        return (dVar == null || dVar.f836b == null) ? false : true;
    }

    /* renamed from: l */
    public boolean m38846l() {
        ActionMenuView actionMenuView = this.f803a;
        return actionMenuView != null && actionMenuView.m39040e();
    }

    /* renamed from: m */
    public boolean m38845m() {
        ActionMenuView actionMenuView = this.f803a;
        return actionMenuView != null && actionMenuView.m39038f();
    }

    /* renamed from: n */
    public boolean m38844n() {
        ActionMenuView actionMenuView = this.f803a;
        return actionMenuView != null && actionMenuView.m39037g();
    }

    /* renamed from: o */
    public final void m38843o() {
        removeCallbacks(this.f802O);
        post(this.f802O);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f802O);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f790C = false;
        }
        if (!this.f790C) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f790C = true;
            }
        }
        if (actionMasked != 10 && actionMasked != 3) {
            return true;
        }
        this.f790C = false;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0553 A[LOOP:0: B:120:0x054d->B:122:0x0553, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0588 A[LOOP:1: B:124:0x0582->B:126:0x0588, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0603 A[LOOP:2: B:134:0x05fd->B:136:0x0603, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0364  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1574
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        char c;
        char c2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr = this.f793F;
        int resolveSizeAndState = 0;
        if (C0708l0.m36319a(this)) {
            c2 = 1;
            c = 0;
        } else {
            c2 = 0;
            c = 1;
        }
        if (m38854d(this.f806d)) {
            m38870a(this.f806d, i, 0, i2, 0, this.f817o);
            i5 = this.f806d.getMeasuredWidth() + m38872a(this.f806d);
            i4 = Math.max(0, this.f806d.getMeasuredHeight() + m38860b(this.f806d));
            i3 = View.combineMeasuredStates(0, this.f806d.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
            i3 = 0;
        }
        int i9 = i4;
        int i10 = i3;
        if (m38854d(this.f810h)) {
            m38870a(this.f810h, i, 0, i2, 0, this.f817o);
            i5 = this.f810h.getMeasuredWidth() + m38872a(this.f810h);
            i9 = Math.max(i4, this.f810h.getMeasuredHeight() + m38860b(this.f810h));
            i10 = View.combineMeasuredStates(i3, this.f810h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i5);
        iArr[c2] = Math.max(0, currentContentInsetStart - i5);
        if (m38854d(this.f803a)) {
            m38870a(this.f803a, i, max, i2, 0, this.f817o);
            i6 = this.f803a.getMeasuredWidth() + m38872a(this.f803a);
            i9 = Math.max(i9, this.f803a.getMeasuredHeight() + m38860b(this.f803a));
            i10 = View.combineMeasuredStates(i10, this.f803a.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[c] = Math.max(0, currentContentInsetEnd - i6);
        int i11 = i9;
        int i12 = i10;
        int i13 = max2;
        if (m38854d(this.f811i)) {
            i13 = max2 + m38869a(this.f811i, i, max2, i2, 0, iArr);
            i11 = Math.max(i9, this.f811i.getMeasuredHeight() + m38860b(this.f811i));
            i12 = View.combineMeasuredStates(i10, this.f811i.getMeasuredState());
        }
        int i14 = i11;
        int i15 = i12;
        int i16 = i13;
        if (m38854d(this.f807e)) {
            i16 = i13 + m38869a(this.f807e, i, i13, i2, 0, iArr);
            i14 = Math.max(i11, this.f807e.getMeasuredHeight() + m38860b(this.f807e));
            i15 = View.combineMeasuredStates(i12, this.f807e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt = getChildAt(i17);
            i14 = i14;
            i15 = i15;
            i16 = i16;
            if (((LayoutParams) childAt.getLayoutParams()).f829b == 0) {
                if (!m38854d(childAt)) {
                    i14 = i14;
                    i15 = i15;
                    i16 = i16;
                } else {
                    i16 += m38869a(childAt, i, i16, i2, 0, iArr);
                    i14 = Math.max(i14, childAt.getMeasuredHeight() + m38860b(childAt));
                    i15 = View.combineMeasuredStates(i15, childAt.getMeasuredState());
                }
            }
        }
        int i18 = this.f820r + this.f821s;
        int i19 = this.f818p + this.f819q;
        if (m38854d(this.f804b)) {
            m38869a(this.f804b, i, i16 + i19, i2, i18, iArr);
            int measuredWidth = this.f804b.getMeasuredWidth();
            int a = m38872a(this.f804b);
            int measuredHeight = this.f804b.getMeasuredHeight();
            int b = m38860b(this.f804b);
            i15 = View.combineMeasuredStates(i15, this.f804b.getMeasuredState());
            i7 = measuredHeight + b;
            i8 = measuredWidth + a;
        } else {
            i8 = 0;
            i7 = 0;
        }
        if (m38854d(this.f805c)) {
            i8 = Math.max(i8, m38869a(this.f805c, i, i16 + i19, i2, i7 + i18, iArr));
            i7 += this.f805c.getMeasuredHeight() + m38860b(this.f805c);
            i15 = View.combineMeasuredStates(i15, this.f805c.getMeasuredState());
        }
        int max3 = Math.max(i14, i7);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(i16 + i8 + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i15);
        resolveSizeAndState = View.resolveSizeAndState(Math.max(max3 + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, i15 << 16);
        if (m38841q()) {
        }
        setMeasuredDimension(resolveSizeAndState2, resolveSizeAndState);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.m38516a());
        ActionMenuView actionMenuView = this.f803a;
        C0647g i = actionMenuView != null ? actionMenuView.m39035i() : null;
        int i2 = savedState.f830c;
        if (!(i2 == 0 || this.f798K == null || i == null || (findItem = i.findItem(i2)) == null)) {
            findItem.expandActionView();
        }
        if (savedState.f831d) {
            m38843o();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m38852f();
        C0736x xVar = this.f822t;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        xVar.m36180a(z);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C0651i iVar;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        C0173d dVar = this.f798K;
        if (!(dVar == null || (iVar = dVar.f836b) == null)) {
            savedState.f830c = iVar.getItemId();
        }
        savedState.f831d = m38844n();
        return savedState;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f789B = false;
        }
        if (!this.f789B) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f789B = true;
            }
        }
        if (actionMasked != 1 && actionMasked != 3) {
            return true;
        }
        this.f789B = false;
        return true;
    }

    /* renamed from: p */
    public void m38842p() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (!(((LayoutParams) childAt.getLayoutParams()).f829b == 2 || childAt == this.f803a)) {
                removeViewAt(childCount);
                this.f792E.add(childAt);
            }
        }
    }

    /* renamed from: q */
    public final boolean m38841q() {
        if (!this.f801N) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m38854d(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: r */
    public boolean m38840r() {
        ActionMenuView actionMenuView = this.f803a;
        return actionMenuView != null && actionMenuView.m39034j();
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m38853e();
        }
        ImageButton imageButton = this.f810h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(C0601a.m36777c(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m38853e();
            this.f810h.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f810h;
        if (imageButton != null) {
            imageButton.setImageDrawable(this.f808f);
        }
    }

    public void setCollapsible(boolean z) {
        this.f801N = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f824v) {
            this.f824v = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f823u) {
            this.f823u = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i) {
        setLogo(C0601a.m36777c(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m38851g();
            if (!m38856c(this.f807e)) {
                m38867a((View) this.f807e, true);
            }
        } else {
            ImageView imageView = this.f807e;
            if (imageView != null && m38856c(imageView)) {
                removeView(this.f807e);
                this.f792E.remove(this.f807e);
            }
        }
        ImageView imageView2 = this.f807e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m38851g();
        }
        ImageView imageView = this.f807e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m38848j();
        }
        ImageButton imageButton = this.f806d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(C0601a.m36777c(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m38848j();
            if (!m38856c(this.f806d)) {
                m38867a((View) this.f806d, true);
            }
        } else {
            ImageButton imageButton = this.f806d;
            if (imageButton != null && m38856c(imageButton)) {
                removeView(this.f806d);
                this.f792E.remove(this.f806d);
            }
        }
        ImageButton imageButton2 = this.f806d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m38848j();
        this.f806d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(AbstractC0174e eVar) {
        this.f794G = eVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        m38850h();
        this.f803a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f813k != i) {
            this.f813k = i;
            if (i == 0) {
                this.f812j = getContext();
            } else {
                this.f812j = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f805c == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f805c = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f805c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f815m;
                if (i != 0) {
                    this.f805c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f788A;
                if (colorStateList != null) {
                    this.f805c.setTextColor(colorStateList);
                }
            }
            if (!m38856c(this.f805c)) {
                m38867a((View) this.f805c, true);
            }
        } else {
            TextView textView = this.f805c;
            if (textView != null && m38856c(textView)) {
                removeView(this.f805c);
                this.f792E.remove(this.f805c);
            }
        }
        TextView textView2 = this.f805c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f827y = charSequence;
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f788A = colorStateList;
        TextView textView = this.f805c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f804b == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView = new AppCompatTextView(context);
                this.f804b = appCompatTextView;
                appCompatTextView.setSingleLine();
                this.f804b.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f814l;
                if (i != 0) {
                    this.f804b.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f828z;
                if (colorStateList != null) {
                    this.f804b.setTextColor(colorStateList);
                }
            }
            if (!m38856c(this.f804b)) {
                m38867a((View) this.f804b, true);
            }
        } else {
            TextView textView = this.f804b;
            if (textView != null && m38856c(textView)) {
                removeView(this.f804b);
                this.f792E.remove(this.f804b);
            }
        }
        TextView textView2 = this.f804b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f826x = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.f821s = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f819q = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f818p = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f820r = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f828z = colorStateList;
        TextView textView = this.f804b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }
}
