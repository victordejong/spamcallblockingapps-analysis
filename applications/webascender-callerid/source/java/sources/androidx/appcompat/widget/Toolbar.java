package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
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
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.AbstractC0063a;
import androidx.appcompat.view.menu.AbstractC0080m;
import androidx.appcompat.view.menu.g$a;
import androidx.appcompat.view.menu.i;
import f.a.a;
import f.a.j;
import f.a.o.g;
import f.h.l.d;
import f.h.l.t;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar.class */
public class Toolbar extends ViewGroup {

    /* renamed from: A */
    private int f397A;

    /* renamed from: B */
    private int f398B;

    /* renamed from: C */
    private CharSequence f399C;

    /* renamed from: D */
    private CharSequence f400D;

    /* renamed from: E */
    private ColorStateList f401E;

    /* renamed from: F */
    private ColorStateList f402F;

    /* renamed from: G */
    private boolean f403G;

    /* renamed from: H */
    private boolean f404H;

    /* renamed from: I */
    private final ArrayList<View> f405I;

    /* renamed from: J */
    private final ArrayList<View> f406J;

    /* renamed from: K */
    private final int[] f407K;

    /* renamed from: L */
    AbstractC0089f f408L;

    /* renamed from: M */
    private final ActionMenuView$e f409M;

    /* renamed from: N */
    private w0 f410N;

    /* renamed from: O */
    private c f411O;

    /* renamed from: P */
    private d f412P;

    /* renamed from: Q */
    private AbstractC0080m.AbstractC0081a f413Q;

    /* renamed from: R */
    private g$a f414R;

    /* renamed from: S */
    private boolean f415S;

    /* renamed from: T */
    private final Runnable f416T;

    /* renamed from: f */
    private ActionMenuView f417f;

    /* renamed from: g */
    private TextView f418g;

    /* renamed from: h */
    private TextView f419h;

    /* renamed from: i */
    private ImageButton f420i;

    /* renamed from: j */
    private ImageView f421j;

    /* renamed from: k */
    private Drawable f422k;

    /* renamed from: l */
    private CharSequence f423l;

    /* renamed from: m */
    ImageButton f424m;

    /* renamed from: n */
    View f425n;

    /* renamed from: o */
    private Context f426o;

    /* renamed from: p */
    private int f427p;

    /* renamed from: q */
    private int f428q;

    /* renamed from: r */
    private int f429r;

    /* renamed from: s */
    int f430s;

    /* renamed from: t */
    private int f431t;

    /* renamed from: u */
    private int f432u;

    /* renamed from: v */
    private int f433v;

    /* renamed from: w */
    private int f434w;

    /* renamed from: x */
    private int f435x;

    /* renamed from: y */
    private C0120n0 f436y;

    /* renamed from: z */
    private int f437z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.widget.Toolbar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$b.class */
    public class RunnableC0087b implements Runnable {
        RunnableC0087b() {
            Toolbar.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.m6690O();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$c */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$c.class */
    public class View$OnClickListenerC0088c implements View.OnClickListener {
        View$OnClickListenerC0088c() {
            Toolbar.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.m6685e();
        }
    }

    /* renamed from: androidx.appcompat.widget.Toolbar$f */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/Toolbar$f.class */
    public interface AbstractC0089f {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.N);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f398B = 8388627;
        this.f405I = new ArrayList<>();
        this.f406J = new ArrayList<>();
        this.f407K = new int[2];
        this.f409M = new a(this);
        this.f416T = new RunnableC0087b();
        Context context2 = getContext();
        int[] iArr = j.W2;
        C0135v0 m6445v = C0135v0.m6445v(context2, attributeSet, iArr, i, 0);
        t.i0(this, context, iArr, attributeSet, m6445v.m6449r(), i, 0);
        this.f428q = m6445v.m6453n(j.y3, 0);
        this.f429r = m6445v.m6453n(j.p3, 0);
        this.f398B = m6445v.m6455l(j.X2, this.f398B);
        this.f430s = m6445v.m6455l(j.Y2, 48);
        int m6462e = m6445v.m6462e(j.s3, 0);
        int i2 = j.x3;
        int m6462e2 = m6445v.m6448s(i2) ? m6445v.m6462e(i2, m6462e) : m6462e;
        this.f435x = m6462e2;
        this.f434w = m6462e2;
        this.f433v = m6462e2;
        this.f432u = m6462e2;
        int m6462e3 = m6445v.m6462e(j.v3, -1);
        if (m6462e3 >= 0) {
            this.f432u = m6462e3;
        }
        int m6462e4 = m6445v.m6462e(j.u3, -1);
        if (m6462e4 >= 0) {
            this.f433v = m6462e4;
        }
        int m6462e5 = m6445v.m6462e(j.w3, -1);
        if (m6462e5 >= 0) {
            this.f434w = m6462e5;
        }
        int m6462e6 = m6445v.m6462e(j.t3, -1);
        if (m6462e6 >= 0) {
            this.f435x = m6462e6;
        }
        this.f431t = m6445v.m6461f(j.j3, -1);
        int m6462e7 = m6445v.m6462e(j.f3, Integer.MIN_VALUE);
        int m6462e8 = m6445v.m6462e(j.b3, Integer.MIN_VALUE);
        int m6461f = m6445v.m6461f(j.d3, 0);
        int m6461f2 = m6445v.m6461f(j.e3, 0);
        m6682h();
        this.f436y.m6508e(m6461f, m6461f2);
        if (m6462e7 != Integer.MIN_VALUE || m6462e8 != Integer.MIN_VALUE) {
            this.f436y.m6506g(m6462e7, m6462e8);
        }
        this.f437z = m6445v.m6462e(j.g3, Integer.MIN_VALUE);
        this.f397A = m6445v.m6462e(j.c3, Integer.MIN_VALUE);
        this.f422k = m6445v.m6460g(j.a3);
        this.f423l = m6445v.m6451p(j.Z2);
        CharSequence m6451p = m6445v.m6451p(j.r3);
        if (!TextUtils.isEmpty(m6451p)) {
            setTitle(m6451p);
        }
        CharSequence m6451p2 = m6445v.m6451p(j.o3);
        if (!TextUtils.isEmpty(m6451p2)) {
            setSubtitle(m6451p2);
        }
        this.f426o = getContext();
        setPopupTheme(m6445v.m6453n(j.n3, 0));
        Drawable m6460g = m6445v.m6460g(j.m3);
        if (m6460g != null) {
            setNavigationIcon(m6460g);
        }
        CharSequence m6451p3 = m6445v.m6451p(j.l3);
        if (!TextUtils.isEmpty(m6451p3)) {
            setNavigationContentDescription(m6451p3);
        }
        Drawable m6460g2 = m6445v.m6460g(j.h3);
        if (m6460g2 != null) {
            setLogo(m6460g2);
        }
        CharSequence m6451p4 = m6445v.m6451p(j.i3);
        if (!TextUtils.isEmpty(m6451p4)) {
            setLogoDescription(m6451p4);
        }
        int i3 = j.z3;
        if (m6445v.m6448s(i3)) {
            setTitleTextColor(m6445v.m6464c(i3));
        }
        int i4 = j.q3;
        if (m6445v.m6448s(i4)) {
            setSubtitleTextColor(m6445v.m6464c(i4));
        }
        int i5 = j.k3;
        if (m6445v.m6448s(i5)) {
            m6666x(m6445v.m6453n(i5, 0));
        }
        m6445v.m6444w();
    }

    /* renamed from: B */
    private int m6703B(View view, int i, int[] iArr, int i2) {
        e layoutParams = view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin - iArr[0];
        int max = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int m6673q = m6673q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, m6673q, max + measuredWidth, view.getMeasuredHeight() + m6673q);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
    }

    /* renamed from: C */
    private int m6702C(View view, int i, int[] iArr, int i2) {
        e layoutParams = view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin - iArr[1];
        int max = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int m6673q = m6673q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, m6673q, max, view.getMeasuredHeight() + m6673q);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin);
    }

    /* renamed from: D */
    private int m6701D(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + max + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    /* renamed from: E */
    private void m6700E(View view, int i, int i2, int i3, int i4, int i5) {
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

    /* renamed from: F */
    private void m6699F() {
        removeCallbacks(this.f416T);
        post(this.f416T);
    }

    /* renamed from: M */
    private boolean m6692M() {
        if (!this.f415S) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (m6691N(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: N */
    private boolean m6691N(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    /* renamed from: b */
    private void m6688b(List<View> list, int i) {
        boolean z = t.B(this) == 1;
        int childCount = getChildCount();
        int b = d.b(i, t.B(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                e layoutParams = childAt.getLayoutParams();
                if (layoutParams.b == 0 && m6691N(childAt) && m6674p(layoutParams.f208a) == b) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            e layoutParams2 = childAt2.getLayoutParams();
            if (layoutParams2.b == 0 && m6691N(childAt2) && m6674p(layoutParams2.f208a) == b) {
                list.add(childAt2);
            }
        }
    }

    /* renamed from: c */
    private void m6687c(View view, boolean z) {
        e layoutParams = view.getLayoutParams();
        e generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : layoutParams;
        generateDefaultLayoutParams.b = 1;
        if (!z || this.f425n == null) {
            addView(view, (ViewGroup.LayoutParams) generateDefaultLayoutParams);
            return;
        }
        view.setLayoutParams(generateDefaultLayoutParams);
        this.f406J.add(view);
    }

    private MenuInflater getMenuInflater() {
        return new g(getContext());
    }

    /* renamed from: h */
    private void m6682h() {
        if (this.f436y == null) {
            this.f436y = new C0120n0();
        }
    }

    /* renamed from: i */
    private void m6681i() {
        if (this.f421j == null) {
            this.f421j = new n(getContext());
        }
    }

    /* renamed from: j */
    private void m6680j() {
        m6679k();
        if (this.f417f.q() == null) {
            androidx.appcompat.view.menu.g menu = this.f417f.getMenu();
            if (this.f412P == null) {
                this.f412P = new d(this);
            }
            this.f417f.setExpandedActionViewsExclusive(true);
            menu.c(this.f412P, this.f426o);
        }
    }

    /* renamed from: k */
    private void m6679k() {
        if (this.f417f == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f417f = actionMenuView;
            actionMenuView.setPopupTheme(this.f427p);
            this.f417f.setOnMenuItemClickListener(this.f409M);
            this.f417f.r(this.f413Q, this.f414R);
            e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f208a = 8388613 | (this.f430s & 112);
            this.f417f.setLayoutParams(generateDefaultLayoutParams);
            m6687c(this.f417f, false);
        }
    }

    /* renamed from: l */
    private void m6678l() {
        if (this.f420i == null) {
            this.f420i = new l(getContext(), (AttributeSet) null, a.M);
            e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f208a = 8388611 | (this.f430s & 112);
            this.f420i.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    /* renamed from: p */
    private int m6674p(int i) {
        int B = t.B(this);
        int b = d.b(i, B) & 7;
        if (b != 1) {
            int i2 = 3;
            if (b != 3 && b != 5) {
                if (B == 1) {
                    i2 = 5;
                }
                return i2;
            }
        }
        return b;
    }

    /* renamed from: q */
    private int m6673q(View view, int i) {
        e layoutParams = view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int m6672r = m6672r(layoutParams.f208a);
        if (m6672r != 48) {
            if (m6672r == 80) {
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
        return getPaddingTop() - i2;
    }

    /* renamed from: r */
    private int m6672r(int i) {
        int i2 = i & 112;
        int i3 = i2;
        if (i2 != 16) {
            i3 = i2;
            if (i2 != 48) {
                i3 = i2;
                if (i2 != 80) {
                    i3 = this.f398B & 112;
                }
            }
        }
        return i3;
    }

    /* renamed from: s */
    private int m6671s(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return f.h.l.g.b(marginLayoutParams) + f.h.l.g.a(marginLayoutParams);
    }

    /* renamed from: t */
    private int m6670t(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    /* renamed from: u */
    private int m6669u(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            View view = list.get(i4);
            e layoutParams = view.getLayoutParams();
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

    /* renamed from: y */
    private boolean m6665y(View view) {
        return view.getParent() == this || this.f406J.contains(view);
    }

    /* renamed from: A */
    public boolean m6704A() {
        ActionMenuView actionMenuView = this.f417f;
        return actionMenuView != null && actionMenuView.m();
    }

    /* renamed from: G */
    void m6698G() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((e) childAt.getLayoutParams()).b != 2 && childAt != this.f417f) {
                removeViewAt(childCount);
                this.f406J.add(childAt);
            }
        }
    }

    /* renamed from: H */
    public void m6697H(int i, int i2) {
        m6682h();
        this.f436y.m6506g(i, i2);
    }

    /* renamed from: I */
    public void m6696I(androidx.appcompat.view.menu.g gVar, c cVar) {
        if (gVar == null && this.f417f == null) {
            return;
        }
        m6679k();
        androidx.appcompat.view.menu.g q = this.f417f.q();
        if (q == gVar) {
            return;
        }
        if (q != null) {
            q.O(this.f411O);
            q.O(this.f412P);
        }
        if (this.f412P == null) {
            this.f412P = new d(this);
        }
        cVar.G(true);
        if (gVar != null) {
            gVar.c(cVar, this.f426o);
            gVar.c(this.f412P, this.f426o);
        } else {
            cVar.i(this.f426o, (androidx.appcompat.view.menu.g) null);
            this.f412P.i(this.f426o, (androidx.appcompat.view.menu.g) null);
            cVar.d(true);
            this.f412P.d(true);
        }
        this.f417f.setPopupTheme(this.f427p);
        this.f417f.setPresenter(cVar);
        this.f411O = cVar;
    }

    /* renamed from: J */
    public void m6695J(AbstractC0080m.AbstractC0081a abstractC0081a, g$a g_a) {
        this.f413Q = abstractC0081a;
        this.f414R = g_a;
        ActionMenuView actionMenuView = this.f417f;
        if (actionMenuView != null) {
            actionMenuView.r(abstractC0081a, g_a);
        }
    }

    /* renamed from: K */
    public void m6694K(Context context, int i) {
        this.f429r = i;
        TextView textView = this.f419h;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* renamed from: L */
    public void m6693L(Context context, int i) {
        this.f428q = i;
        TextView textView = this.f418g;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* renamed from: O */
    public boolean m6690O() {
        ActionMenuView actionMenuView = this.f417f;
        return actionMenuView != null && actionMenuView.s();
    }

    /* renamed from: a */
    void m6689a() {
        for (int size = this.f406J.size() - 1; size >= 0; size--) {
            addView(this.f406J.get(size));
        }
        this.f406J.clear();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof e);
    }

    /* renamed from: d */
    public boolean m6686d() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f417f) != null && actionMenuView.n();
    }

    /* renamed from: e */
    public void m6685e() {
        d dVar = this.f412P;
        i iVar = dVar == null ? null : dVar.g;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    /* renamed from: f */
    public void m6684f() {
        ActionMenuView actionMenuView = this.f417f;
        if (actionMenuView != null) {
            actionMenuView.e();
        }
    }

    /* renamed from: g */
    void m6683g() {
        if (this.f424m == null) {
            l lVar = new l(getContext(), (AttributeSet) null, a.M);
            this.f424m = lVar;
            lVar.setImageDrawable(this.f422k);
            this.f424m.setContentDescription(this.f423l);
            e generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.f208a = 8388611 | (this.f430s & 112);
            generateDefaultLayoutParams.b = 2;
            this.f424m.setLayoutParams(generateDefaultLayoutParams);
            this.f424m.setOnClickListener(new View$OnClickListenerC0088c());
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.f424m;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.f424m;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    public int getContentInsetEnd() {
        C0120n0 c0120n0 = this.f436y;
        return c0120n0 != null ? c0120n0.m6512a() : 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.f397A;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetEnd();
        }
        return i;
    }

    public int getContentInsetLeft() {
        C0120n0 c0120n0 = this.f436y;
        return c0120n0 != null ? c0120n0.m6511b() : 0;
    }

    public int getContentInsetRight() {
        C0120n0 c0120n0 = this.f436y;
        return c0120n0 != null ? c0120n0.m6510c() : 0;
    }

    public int getContentInsetStart() {
        C0120n0 c0120n0 = this.f436y;
        return c0120n0 != null ? c0120n0.m6509d() : 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.f437z;
        if (i == Integer.MIN_VALUE) {
            i = getContentInsetStart();
        }
        return i;
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.g q;
        ActionMenuView actionMenuView = this.f417f;
        return actionMenuView != null && (q = actionMenuView.q()) != null && q.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.f397A, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return t.B(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return t.B(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f437z, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f421j;
        return imageView != null ? imageView.getDrawable() : null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f421j;
        return imageView != null ? imageView.getContentDescription() : null;
    }

    public Menu getMenu() {
        m6680j();
        return this.f417f.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.f420i;
        return imageButton != null ? imageButton.getContentDescription() : null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.f420i;
        return imageButton != null ? imageButton.getDrawable() : null;
    }

    c getOuterActionMenuPresenter() {
        return this.f411O;
    }

    public Drawable getOverflowIcon() {
        m6680j();
        return this.f417f.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.f426o;
    }

    public int getPopupTheme() {
        return this.f427p;
    }

    public CharSequence getSubtitle() {
        return this.f400D;
    }

    final TextView getSubtitleTextView() {
        return this.f419h;
    }

    public CharSequence getTitle() {
        return this.f399C;
    }

    public int getTitleMarginBottom() {
        return this.f435x;
    }

    public int getTitleMarginEnd() {
        return this.f433v;
    }

    public int getTitleMarginStart() {
        return this.f432u;
    }

    public int getTitleMarginTop() {
        return this.f434w;
    }

    final TextView getTitleTextView() {
        return this.f418g;
    }

    public AbstractC0097c0 getWrapper() {
        if (this.f410N == null) {
            this.f410N = new w0(this, true);
        }
        return this.f410N;
    }

    /* renamed from: m */
    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    /* renamed from: n */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    /* renamed from: o */
    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e ? new e((e) layoutParams) : layoutParams instanceof AbstractC0063a.C0064a ? new e((AbstractC0063a.C0064a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f416T);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f404H = false;
        }
        if (!this.f404H) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f404H = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f404H = false;
            return true;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x044a  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0553 A[LOOP:0: B:120:0x054d->B:122:0x0553, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0588 A[LOOP:1: B:124:0x0582->B:126:0x0588, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x05db  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0601 A[LOOP:2: B:134:0x05fb->B:136:0x0601, LOOP_END] */
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
    protected void onLayout(boolean r8, int r9, int r10, int r11, int r12) {
        /*
            Method dump skipped, instructions count: 1572
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Object[] objArr;
        Object[] objArr2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int[] iArr = this.f407K;
        if (C0096b1.m6638b(this)) {
            objArr2 = 1;
            objArr = null;
        } else {
            objArr2 = null;
            objArr = 1;
        }
        if (m6691N(this.f420i)) {
            m6700E(this.f420i, i, 0, i2, 0, this.f431t);
            i5 = this.f420i.getMeasuredWidth() + m6671s(this.f420i);
            i4 = Math.max(0, this.f420i.getMeasuredHeight() + m6670t(this.f420i));
            i3 = View.combineMeasuredStates(0, this.f420i.getMeasuredState());
        } else {
            i5 = 0;
            i4 = 0;
            i3 = 0;
        }
        int i9 = i5;
        int i10 = i4;
        int i11 = i3;
        if (m6691N(this.f424m)) {
            m6700E(this.f424m, i, 0, i2, 0, this.f431t);
            i9 = this.f424m.getMeasuredWidth() + m6671s(this.f424m);
            i10 = Math.max(i4, this.f424m.getMeasuredHeight() + m6670t(this.f424m));
            i11 = View.combineMeasuredStates(i3, this.f424m.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = 0 + Math.max(currentContentInsetStart, i9);
        iArr[objArr2 == 1 ? 1 : 0] = Math.max(0, currentContentInsetStart - i9);
        if (m6691N(this.f417f)) {
            m6700E(this.f417f, i, max, i2, 0, this.f431t);
            i6 = this.f417f.getMeasuredWidth() + m6671s(this.f417f);
            i10 = Math.max(i10, this.f417f.getMeasuredHeight() + m6670t(this.f417f));
            i11 = View.combineMeasuredStates(i11, this.f417f.getMeasuredState());
        } else {
            i6 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i6);
        iArr[objArr == 1 ? 1 : 0] = Math.max(0, currentContentInsetEnd - i6);
        int i12 = i10;
        int i13 = i11;
        int i14 = max2;
        if (m6691N(this.f425n)) {
            i14 = max2 + m6701D(this.f425n, i, max2, i2, 0, iArr);
            i12 = Math.max(i10, this.f425n.getMeasuredHeight() + m6670t(this.f425n));
            i13 = View.combineMeasuredStates(i11, this.f425n.getMeasuredState());
        }
        int i15 = i12;
        int i16 = i13;
        int i17 = i14;
        if (m6691N(this.f421j)) {
            i17 = i14 + m6701D(this.f421j, i, i14, i2, 0, iArr);
            i15 = Math.max(i12, this.f421j.getMeasuredHeight() + m6670t(this.f421j));
            i16 = View.combineMeasuredStates(i13, this.f421j.getMeasuredState());
        }
        int childCount = getChildCount();
        int i18 = i17;
        int i19 = 0;
        while (i19 < childCount) {
            View childAt = getChildAt(i19);
            int i20 = i15;
            int i21 = i16;
            int i22 = i18;
            if (childAt.getLayoutParams().b == 0) {
                if (!m6691N(childAt)) {
                    i20 = i15;
                    i21 = i16;
                    i22 = i18;
                } else {
                    i22 = i18 + m6701D(childAt, i, i18, i2, 0, iArr);
                    i20 = Math.max(i15, childAt.getMeasuredHeight() + m6670t(childAt));
                    i21 = View.combineMeasuredStates(i16, childAt.getMeasuredState());
                }
            }
            i19++;
            i15 = i20;
            i16 = i21;
            i18 = i22;
        }
        int i23 = this.f434w + this.f435x;
        int i24 = this.f432u + this.f433v;
        if (m6691N(this.f418g)) {
            m6701D(this.f418g, i, i18 + i24, i2, i23, iArr);
            int measuredWidth = this.f418g.getMeasuredWidth();
            int m6671s = m6671s(this.f418g);
            int measuredHeight = this.f418g.getMeasuredHeight();
            int m6670t = m6670t(this.f418g);
            i16 = View.combineMeasuredStates(i16, this.f418g.getMeasuredState());
            i7 = measuredHeight + m6670t;
            i8 = measuredWidth + m6671s;
        } else {
            i8 = 0;
            i7 = 0;
        }
        if (m6691N(this.f419h)) {
            i8 = Math.max(i8, m6701D(this.f419h, i, i18 + i24, i2, i7 + i23, iArr));
            i7 += this.f419h.getMeasuredHeight() + m6670t(this.f419h);
            i16 = View.combineMeasuredStates(i16, this.f419h.getMeasuredState());
        }
        int max3 = Math.max(i15, i7);
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(i18 + i8 + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, (-16777216) & i16);
        int resolveSizeAndState2 = View.resolveSizeAndState(Math.max(max3 + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, i16 << 16);
        if (m6692M()) {
            resolveSizeAndState2 = 0;
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g gVar = (g) parcelable;
        super.onRestoreInstanceState(gVar.a());
        ActionMenuView actionMenuView = this.f417f;
        Menu q = actionMenuView != null ? actionMenuView.q() : null;
        int i = gVar.h;
        if (i != 0 && this.f412P != null && q != null && (findItem = q.findItem(i)) != null) {
            findItem.expandActionView();
        }
        if (!gVar.i) {
            return;
        }
        m6699F();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        m6682h();
        C0120n0 c0120n0 = this.f436y;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        c0120n0.m6507f(z);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        i iVar;
        g gVar = new g(super.onSaveInstanceState());
        d dVar = this.f412P;
        if (dVar != null && (iVar = dVar.g) != null) {
            gVar.h = iVar.getItemId();
        }
        gVar.i = m6704A();
        return gVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f403G = false;
        }
        if (!this.f403G) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f403G = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f403G = false;
            return true;
        }
        return true;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m6683g();
        }
        ImageButton imageButton = this.f424m;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(f.a.k.a.a.d(getContext(), i));
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            m6683g();
            this.f424m.setImageDrawable(drawable);
            return;
        }
        ImageButton imageButton = this.f424m;
        if (imageButton == null) {
            return;
        }
        imageButton.setImageDrawable(this.f422k);
    }

    public void setCollapsible(boolean z) {
        this.f415S = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f397A) {
            this.f397A = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.f437z) {
            this.f437z = i2;
            if (getNavigationIcon() == null) {
                return;
            }
            requestLayout();
        }
    }

    public void setLogo(int i) {
        setLogo(f.a.k.a.a.d(getContext(), i));
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            m6681i();
            if (!m6665y(this.f421j)) {
                m6687c(this.f421j, true);
            }
        } else {
            ImageView imageView = this.f421j;
            if (imageView != null && m6665y(imageView)) {
                removeView(this.f421j);
                this.f406J.remove(this.f421j);
            }
        }
        ImageView imageView2 = this.f421j;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m6681i();
        }
        ImageView imageView = this.f421j;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            m6678l();
        }
        ImageButton imageButton = this.f420i;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(f.a.k.a.a.d(getContext(), i));
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            m6678l();
            if (!m6665y(this.f420i)) {
                m6687c(this.f420i, true);
            }
        } else {
            ImageButton imageButton = this.f420i;
            if (imageButton != null && m6665y(imageButton)) {
                removeView(this.f420i);
                this.f406J.remove(this.f420i);
            }
        }
        ImageButton imageButton2 = this.f420i;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        m6678l();
        this.f420i.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(AbstractC0089f abstractC0089f) {
        this.f408L = abstractC0089f;
    }

    public void setOverflowIcon(Drawable drawable) {
        m6680j();
        this.f417f.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.f427p != i) {
            this.f427p = i;
            if (i == 0) {
                this.f426o = getContext();
            } else {
                this.f426o = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f419h == null) {
                Context context = getContext();
                y yVar = new y(context);
                this.f419h = yVar;
                yVar.setSingleLine();
                this.f419h.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f429r;
                if (i != 0) {
                    this.f419h.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f402F;
                if (colorStateList != null) {
                    this.f419h.setTextColor(colorStateList);
                }
            }
            if (!m6665y(this.f419h)) {
                m6687c(this.f419h, true);
            }
        } else {
            TextView textView = this.f419h;
            if (textView != null && m6665y(textView)) {
                removeView(this.f419h);
                this.f406J.remove(this.f419h);
            }
        }
        TextView textView2 = this.f419h;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f400D = charSequence;
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f402F = colorStateList;
        TextView textView = this.f419h;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (this.f418g == null) {
                Context context = getContext();
                y yVar = new y(context);
                this.f418g = yVar;
                yVar.setSingleLine();
                this.f418g.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.f428q;
                if (i != 0) {
                    this.f418g.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.f401E;
                if (colorStateList != null) {
                    this.f418g.setTextColor(colorStateList);
                }
            }
            if (!m6665y(this.f418g)) {
                m6687c(this.f418g, true);
            }
        } else {
            TextView textView = this.f418g;
            if (textView != null && m6665y(textView)) {
                removeView(this.f418g);
                this.f406J.remove(this.f418g);
            }
        }
        TextView textView2 = this.f418g;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.f399C = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.f435x = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.f433v = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.f432u = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.f434w = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f401E = colorStateList;
        TextView textView = this.f418g;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    /* renamed from: v */
    public boolean m6668v() {
        d dVar = this.f412P;
        return (dVar == null || dVar.g == null) ? false : true;
    }

    /* renamed from: w */
    public boolean m6667w() {
        ActionMenuView actionMenuView = this.f417f;
        return actionMenuView != null && actionMenuView.k();
    }

    /* renamed from: x */
    public void m6666x(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    /* renamed from: z */
    public boolean m6664z() {
        ActionMenuView actionMenuView = this.f417f;
        return actionMenuView != null && actionMenuView.l();
    }
}
