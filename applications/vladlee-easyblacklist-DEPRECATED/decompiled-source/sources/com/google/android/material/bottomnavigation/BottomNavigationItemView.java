package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.AbstractC0388t;
import androidx.appcompat.view.menu.C0375m;
import androidx.appcompat.widget.C0492bu;
import androidx.core.content.C0646b;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0739r;
import androidx.core.p037g.C0741t;
import androidx.core.widget.C0786k;
import com.google.android.material.C2913a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/bottomnavigation/BottomNavigationItemView.class */
public class BottomNavigationItemView extends FrameLayout implements AbstractC0388t.AbstractC0389a {

    /* renamed from: a */
    private static final int[] f17959a = {16842912};

    /* renamed from: b */
    private final int f17960b;

    /* renamed from: c */
    private float f17961c;

    /* renamed from: d */
    private float f17962d;

    /* renamed from: e */
    private float f17963e;

    /* renamed from: f */
    private int f17964f;

    /* renamed from: g */
    private boolean f17965g;

    /* renamed from: h */
    private ImageView f17966h;

    /* renamed from: i */
    private final TextView f17967i;

    /* renamed from: j */
    private final TextView f17968j;

    /* renamed from: k */
    private int f17969k;

    /* renamed from: l */
    private C0375m f17970l;

    /* renamed from: m */
    private ColorStateList f17971m;

    public BottomNavigationItemView(Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f17969k = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(C2913a.C2921h.f17505a, (ViewGroup) this, true);
        setBackgroundResource(C2913a.C2918e.f17489a);
        this.f17960b = resources.getDimensionPixelSize(C2913a.C2917d.f17472g);
        this.f17966h = (ImageView) findViewById(C2913a.C2919f.f17493c);
        this.f17967i = (TextView) findViewById(C2913a.C2919f.f17497g);
        this.f17968j = (TextView) findViewById(C2913a.C2919f.f17494d);
        C0741t.m8358a((View) this.f17967i, 2);
        C0741t.m8358a((View) this.f17968j, 2);
        setFocusable(true);
        m1401a(this.f17967i.getTextSize(), this.f17968j.getTextSize());
    }

    /* renamed from: a */
    private void m1401a(float f, float f2) {
        this.f17961c = f - f2;
        this.f17962d = (f2 * 1.0f) / f;
        this.f17963e = (f * 1.0f) / f2;
    }

    /* renamed from: a */
    private void m1398a(Drawable drawable) {
        Drawable drawable2 = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable2 = C0758a.m8241f(drawable).mutate();
            C0758a.m8251a(drawable2, this.f17971m);
        }
        this.f17966h.setImageDrawable(drawable2);
    }

    /* renamed from: a */
    private static void m1397a(View view, float f, float f2, int i) {
        view.setScaleX(f);
        view.setScaleY(f2);
        view.setVisibility(i);
    }

    /* renamed from: a */
    private static void m1396a(View view, int i, int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i;
        layoutParams.gravity = i2;
        view.setLayoutParams(layoutParams);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x007a, code lost:
        if (r6 != false) goto L_0x007d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x007d, code lost:
        m1396a(r5.f17966h, (int) (r5.f17960b + r5.f17961c), 49);
        m1397a(r5.f17968j, 1.0f, 1.0f, 0);
        r0 = r5.f17967i;
        r0 = r5.f17962d;
        m1397a(r0, r0, r0, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x00b2, code lost:
        m1396a(r5.f17966h, r5.f17960b, 49);
        r0 = r5.f17968j;
        r0 = r5.f17963e;
        m1397a(r0, r0, r0, 4);
        m1397a(r5.f17967i, 1.0f, 1.0f, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00f3, code lost:
        if (r6 != false) goto L_0x00f6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x00f6, code lost:
        m1396a(r10, r11, 49);
        m1397a(r5.f17968j, 1.0f, 1.0f, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x010c, code lost:
        m1396a(r7, r8, 17);
        m1397a(r5.f17968j, 0.5f, 0.5f, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x011f, code lost:
        r5.f17967i.setVisibility(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0144, code lost:
        if (r6 != false) goto L_0x00f6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x014b, code lost:
        if (r6 != false) goto L_0x007d;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m1392b(boolean r6) {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomnavigation.BottomNavigationItemView.m1392b(boolean):void");
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: a */
    public final C0375m mo1073a() {
        return this.f17970l;
    }

    /* renamed from: a */
    public final void m1400a(int i) {
        this.f17969k = i;
    }

    /* renamed from: a */
    public final void m1399a(ColorStateList colorStateList) {
        this.f17971m = colorStateList;
        C0375m mVar = this.f17970l;
        if (mVar != null) {
            m1398a(mVar.getIcon());
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: a */
    public final void mo1069a(C0375m mVar) {
        this.f17970l = mVar;
        mVar.isCheckable();
        refreshDrawableState();
        m1392b(mVar.isChecked());
        setEnabled(mVar.isEnabled());
        m1398a(mVar.getIcon());
        CharSequence title = mVar.getTitle();
        this.f17967i.setText(title);
        this.f17968j.setText(title);
        C0375m mVar2 = this.f17970l;
        if (mVar2 == null || TextUtils.isEmpty(mVar2.getContentDescription())) {
            setContentDescription(title);
        }
        setId(mVar.getItemId());
        if (!TextUtils.isEmpty(mVar.getContentDescription())) {
            setContentDescription(mVar.getContentDescription());
        }
        C0492bu.m9044a(this, mVar.getTooltipText());
        setVisibility(mVar.isVisible() ? 0 : 8);
    }

    /* renamed from: a */
    public final void m1395a(boolean z) {
        if (this.f17965g != z) {
            this.f17965g = z;
            if (this.f17970l != null) {
                m1392b(this.f17970l.isChecked());
            }
        }
    }

    /* renamed from: b */
    public final void m1394b(int i) {
        if (this.f17964f != i) {
            this.f17964f = i;
            if (this.f17970l != null) {
                m1392b(this.f17970l.isChecked());
            }
        }
    }

    /* renamed from: b */
    public final void m1393b(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f17967i.setTextColor(colorStateList);
            this.f17968j.setTextColor(colorStateList);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0388t.AbstractC0389a
    /* renamed from: b_ */
    public final boolean mo1066b_() {
        return false;
    }

    /* renamed from: c */
    public final void m1391c(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f17966h.getLayoutParams();
        layoutParams.width = i;
        layoutParams.height = i;
        this.f17966h.setLayoutParams(layoutParams);
    }

    /* renamed from: d */
    public final void m1390d(int i) {
        C0786k.m8134a(this.f17967i, i);
        m1401a(this.f17967i.getTextSize(), this.f17968j.getTextSize());
    }

    /* renamed from: e */
    public final void m1389e(int i) {
        C0786k.m8134a(this.f17968j, i);
        m1401a(this.f17967i.getTextSize(), this.f17968j.getTextSize());
    }

    /* renamed from: f */
    public final void m1388f(int i) {
        C0741t.m8351a(this, i == 0 ? null : C0646b.m8619a(getContext(), i));
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        C0375m mVar = this.f17970l;
        if (mVar != null && mVar.isCheckable() && this.f17970l.isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f17959a);
        }
        return onCreateDrawableState;
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f17967i.setEnabled(z);
        this.f17968j.setEnabled(z);
        this.f17966h.setEnabled(z);
        C0741t.m8345a(this, z ? C0739r.m8375a(getContext()) : null);
    }
}
