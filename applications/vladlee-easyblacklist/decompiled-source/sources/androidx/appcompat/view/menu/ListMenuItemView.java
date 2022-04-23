package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.widget.C0484bm;
import androidx.core.p037g.C0741t;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/ListMenuItemView.class */
public class ListMenuItemView extends LinearLayout implements AbsListView.SelectionBoundsAdjuster, AbstractC0388t.AbstractC0389a {

    /* renamed from: a */
    private C0375m f1537a;

    /* renamed from: b */
    private ImageView f1538b;

    /* renamed from: c */
    private RadioButton f1539c;

    /* renamed from: d */
    private TextView f1540d;

    /* renamed from: e */
    private CheckBox f1541e;

    /* renamed from: f */
    private TextView f1542f;

    /* renamed from: g */
    private ImageView f1543g;

    /* renamed from: h */
    private ImageView f1544h;

    /* renamed from: i */
    private LinearLayout f1545i;

    /* renamed from: j */
    private Drawable f1546j;

    /* renamed from: k */
    private int f1547k;

    /* renamed from: l */
    private Context f1548l;

    /* renamed from: m */
    private boolean f1549m;

    /* renamed from: n */
    private Drawable f1550n;

    /* renamed from: o */
    private boolean f1551o;

    /* renamed from: p */
    private int f1552p;

    /* renamed from: q */
    private LayoutInflater f1553q;

    /* renamed from: r */
    private boolean f1554r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0247a.C0248a.f548F);
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        C0484bm a = C0484bm.m9092a(getContext(), attributeSet, C0247a.C0257j.f905cg, i, 0);
        this.f1546j = a.m9099a(C0247a.C0257j.f907ci);
        this.f1547k = a.m9082f(C0247a.C0257j.f906ch, -1);
        this.f1549m = a.m9095a(C0247a.C0257j.f908cj, false);
        this.f1548l = context;
        this.f1550n = a.m9099a(C0247a.C0257j.f909ck);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, C0247a.C0248a.f544B, 0);
        this.f1551o = obtainStyledAttributes.hasValue(0);
        a.m9100a();
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m9651a(View view, int i) {
        LinearLayout linearLayout = this.f1545i;
        if (linearLayout != null) {
            linearLayout.addView(view, i);
        } else {
            addView(view, i);
        }
    }

    /* renamed from: d */
    private LayoutInflater m9648d() {
        if (this.f1553q == null) {
            this.f1553q = LayoutInflater.from(getContext());
        }
        return this.f1553q;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: a */
    public final C0375m mo1073a() {
        return this.f1537a;
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: a */
    public final void mo1069a(C0375m mVar) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        this.f1537a = mVar;
        int i = 0;
        this.f1552p = 0;
        setVisibility(mVar.isVisible() ? 0 : 8);
        CharSequence a = mVar.m9585a((AbstractC0388t.AbstractC0389a) this);
        if (a != null) {
            this.f1540d.setText(a);
            if (this.f1540d.getVisibility() != 0) {
                this.f1540d.setVisibility(0);
            }
        } else if (this.f1540d.getVisibility() != 8) {
            this.f1540d.setVisibility(8);
        }
        boolean isCheckable = mVar.isCheckable();
        if (!(!isCheckable && this.f1539c == null && this.f1541e == null)) {
            if (this.f1537a.m9573f()) {
                if (this.f1539c == null) {
                    this.f1539c = (RadioButton) m9648d().inflate(C0247a.C0254g.f711m, (ViewGroup) this, false);
                    m9651a(this.f1539c, -1);
                }
                compoundButton = this.f1539c;
                compoundButton2 = this.f1541e;
            } else {
                if (this.f1541e == null) {
                    this.f1541e = (CheckBox) m9648d().inflate(C0247a.C0254g.f708j, (ViewGroup) this, false);
                    m9651a(this.f1541e, -1);
                }
                compoundButton = this.f1541e;
                compoundButton2 = this.f1539c;
            }
            if (isCheckable) {
                compoundButton.setChecked(this.f1537a.isChecked());
                if (compoundButton.getVisibility() != 0) {
                    compoundButton.setVisibility(0);
                }
                if (!(compoundButton2 == null || compoundButton2.getVisibility() == 8)) {
                    compoundButton2.setVisibility(8);
                }
            } else {
                CheckBox checkBox = this.f1541e;
                if (checkBox != null) {
                    checkBox.setVisibility(8);
                }
                RadioButton radioButton = this.f1539c;
                if (radioButton != null) {
                    radioButton.setVisibility(8);
                }
            }
        }
        int i2 = (!mVar.m9575e() || !this.f1537a.m9575e()) ? 8 : 0;
        if (i2 == 0) {
            this.f1542f.setText(this.f1537a.m9577d());
        }
        if (this.f1542f.getVisibility() != i2) {
            this.f1542f.setVisibility(i2);
        }
        Drawable icon = mVar.getIcon();
        boolean z = this.f1537a.f1682a.m9591q() || this.f1554r;
        if ((z || this.f1549m) && !(this.f1538b == null && icon == null && !this.f1549m)) {
            if (this.f1538b == null) {
                this.f1538b = (ImageView) m9648d().inflate(C0247a.C0254g.f709k, (ViewGroup) this, false);
                m9651a(this.f1538b, 0);
            }
            if (icon != null || this.f1549m) {
                ImageView imageView = this.f1538b;
                if (!z) {
                    icon = null;
                }
                imageView.setImageDrawable(icon);
                if (this.f1538b.getVisibility() != 0) {
                    this.f1538b.setVisibility(0);
                }
            } else {
                this.f1538b.setVisibility(8);
            }
        }
        setEnabled(mVar.isEnabled());
        boolean hasSubMenu = mVar.hasSubMenu();
        ImageView imageView2 = this.f1543g;
        if (imageView2 != null) {
            if (!hasSubMenu) {
                i = 8;
            }
            imageView2.setVisibility(i);
        }
        setContentDescription(mVar.getContentDescription());
    }

    /* renamed from: a */
    public final void m9650a(boolean z) {
        ImageView imageView = this.f1544h;
        if (imageView != null) {
            imageView.setVisibility((this.f1551o || !z) ? 8 : 0);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f1544h;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f1544h.getLayoutParams();
            rect.top += this.f1544h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: b_ */
    public final boolean mo1066b_() {
        return false;
    }

    /* renamed from: c */
    public final void m9649c() {
        this.f1554r = true;
        this.f1549m = true;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        C0741t.m8351a(this, this.f1546j);
        this.f1540d = (TextView) findViewById(C0247a.C0253f.f669S);
        int i = this.f1547k;
        if (i != -1) {
            this.f1540d.setTextAppearance(this.f1548l, i);
        }
        this.f1542f = (TextView) findViewById(C0247a.C0253f.f662L);
        this.f1543g = (ImageView) findViewById(C0247a.C0253f.f665O);
        ImageView imageView = this.f1543g;
        if (imageView != null) {
            imageView.setImageDrawable(this.f1550n);
        }
        this.f1544h = (ImageView) findViewById(C0247a.C0253f.f693u);
        this.f1545i = (LinearLayout) findViewById(C0247a.C0253f.f685m);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f1538b != null && this.f1549m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f1538b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i, i2);
    }
}
