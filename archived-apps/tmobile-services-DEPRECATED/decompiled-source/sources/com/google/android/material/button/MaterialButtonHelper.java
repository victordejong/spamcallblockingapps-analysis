package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleDrawableCompat;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButtonHelper.class */
public class MaterialButtonHelper {

    /* renamed from: s */
    private static final boolean f10291s;

    /* renamed from: a */
    private final MaterialButton f10292a;
    @NonNull

    /* renamed from: b */
    private ShapeAppearanceModel f10293b;

    /* renamed from: c */
    private int f10294c;

    /* renamed from: d */
    private int f10295d;

    /* renamed from: e */
    private int f10296e;

    /* renamed from: f */
    private int f10297f;

    /* renamed from: g */
    private int f10298g;

    /* renamed from: h */
    private int f10299h;
    @Nullable

    /* renamed from: i */
    private PorterDuff.Mode f10300i;
    @Nullable

    /* renamed from: j */
    private ColorStateList f10301j;
    @Nullable

    /* renamed from: k */
    private ColorStateList f10302k;
    @Nullable

    /* renamed from: l */
    private ColorStateList f10303l;
    @Nullable

    /* renamed from: m */
    private Drawable f10304m;

    /* renamed from: n */
    private boolean f10305n = false;

    /* renamed from: o */
    private boolean f10306o = false;

    /* renamed from: p */
    private boolean f10307p = false;

    /* renamed from: q */
    private boolean f10308q;

    /* renamed from: r */
    private LayerDrawable f10309r;

    static {
        f10291s = Build.VERSION.SDK_INT >= 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MaterialButtonHelper(MaterialButton materialButton, @NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f10292a = materialButton;
        this.f10293b = shapeAppearanceModel;
    }

    /* renamed from: A */
    private void m10349A(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (m10342d() != null) {
            m10342d().setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (m10334l() != null) {
            m10334l().setShapeAppearanceModel(shapeAppearanceModel);
        }
        if (m10343c() != null) {
            m10343c().setShapeAppearanceModel(shapeAppearanceModel);
        }
    }

    /* renamed from: C */
    private void m10347C() {
        MaterialShapeDrawable d = m10342d();
        MaterialShapeDrawable l = m10334l();
        if (d != null) {
            d.m9310h0(this.f10299h, this.f10302k);
            if (l != null) {
                l.m9312g0(this.f10299h, this.f10305n ? MaterialColors.m10014c(this.f10292a, C1027R.attr.colorSurface) : 0);
            }
        }
    }

    @NonNull
    /* renamed from: D */
    private InsetDrawable m10346D(Drawable drawable) {
        return new InsetDrawable(drawable, this.f10294c, this.f10296e, this.f10295d, this.f10297f);
    }

    /* renamed from: a */
    private Drawable m10345a() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.f10293b);
        materialShapeDrawable.m9338M(this.f10292a.getContext());
        DrawableCompat.m19498o(materialShapeDrawable, this.f10301j);
        PorterDuff.Mode mode = this.f10300i;
        if (mode != null) {
            DrawableCompat.m19497p(materialShapeDrawable, mode);
        }
        materialShapeDrawable.m9310h0(this.f10299h, this.f10302k);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.f10293b);
        materialShapeDrawable2.setTint(0);
        materialShapeDrawable2.m9312g0(this.f10299h, this.f10305n ? MaterialColors.m10014c(this.f10292a, C1027R.attr.colorSurface) : 0);
        if (f10291s) {
            MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.f10293b);
            this.f10304m = materialShapeDrawable3;
            DrawableCompat.m19499n(materialShapeDrawable3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.m9367d(this.f10303l), m10346D(new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable})), this.f10304m);
            this.f10309r = rippleDrawable;
            return rippleDrawable;
        }
        RippleDrawableCompat rippleDrawableCompat = new RippleDrawableCompat(this.f10293b);
        this.f10304m = rippleDrawableCompat;
        DrawableCompat.m19498o(rippleDrawableCompat, RippleUtils.m9367d(this.f10303l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable, this.f10304m});
        this.f10309r = layerDrawable;
        return m10346D(layerDrawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    /* renamed from: e */
    private MaterialShapeDrawable m10341e(boolean z) {
        LayerDrawable layerDrawable = this.f10309r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f10291s ? (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.f10309r.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (MaterialShapeDrawable) this.f10309r.getDrawable(!z);
    }

    @Nullable
    /* renamed from: l */
    private MaterialShapeDrawable m10334l() {
        return m10341e(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public void m10348B(int i, int i2) {
        Drawable drawable = this.f10304m;
        if (drawable != null) {
            drawable.setBounds(this.f10294c, this.f10296e, i2 - this.f10295d, i - this.f10297f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public int m10344b() {
        return this.f10298g;
    }

    @Nullable
    /* renamed from: c */
    public Shapeable m10343c() {
        LayerDrawable layerDrawable = this.f10309r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f10309r.getNumberOfLayers() > 2 ? (Shapeable) this.f10309r.getDrawable(2) : (Shapeable) this.f10309r.getDrawable(1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: d */
    public MaterialShapeDrawable m10342d() {
        return m10341e(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: f */
    public ColorStateList m10340f() {
        return this.f10303l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: g */
    public ShapeAppearanceModel m10339g() {
        return this.f10293b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: h */
    public ColorStateList m10338h() {
        return this.f10302k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public int m10337i() {
        return this.f10299h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public ColorStateList m10336j() {
        return this.f10301j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public PorterDuff.Mode m10335k() {
        return this.f10300i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public boolean m10333m() {
        return this.f10306o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public boolean m10332n() {
        return this.f10308q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public void m10331o(@NonNull TypedArray typedArray) {
        this.f10294c = typedArray.getDimensionPixelOffset(C1027R.styleable.MaterialButton_android_insetLeft, 0);
        this.f10295d = typedArray.getDimensionPixelOffset(C1027R.styleable.MaterialButton_android_insetRight, 0);
        this.f10296e = typedArray.getDimensionPixelOffset(C1027R.styleable.MaterialButton_android_insetTop, 0);
        this.f10297f = typedArray.getDimensionPixelOffset(C1027R.styleable.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(C1027R.styleable.MaterialButton_cornerRadius)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(C1027R.styleable.MaterialButton_cornerRadius, -1);
            this.f10298g = dimensionPixelSize;
            m10325u(this.f10293b.m9255w(dimensionPixelSize));
            this.f10307p = true;
        }
        this.f10299h = typedArray.getDimensionPixelSize(C1027R.styleable.MaterialButton_strokeWidth, 0);
        this.f10300i = ViewUtils.m9427i(typedArray.getInt(C1027R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f10301j = MaterialResources.m9394a(this.f10292a.getContext(), typedArray, C1027R.styleable.MaterialButton_backgroundTint);
        this.f10302k = MaterialResources.m9394a(this.f10292a.getContext(), typedArray, C1027R.styleable.MaterialButton_strokeColor);
        this.f10303l = MaterialResources.m9394a(this.f10292a.getContext(), typedArray, C1027R.styleable.MaterialButton_rippleColor);
        this.f10308q = typedArray.getBoolean(C1027R.styleable.MaterialButton_android_checkable, false);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(C1027R.styleable.MaterialButton_elevation, 0);
        int G = ViewCompat.m19232G(this.f10292a);
        int paddingTop = this.f10292a.getPaddingTop();
        int F = ViewCompat.m19234F(this.f10292a);
        int paddingBottom = this.f10292a.getPaddingBottom();
        if (typedArray.hasValue(C1027R.styleable.MaterialButton_android_background)) {
            m10329q();
        } else {
            this.f10292a.setInternalBackground(m10345a());
            MaterialShapeDrawable d = m10342d();
            if (d != null) {
                d.m9329V(dimensionPixelSize2);
            }
        }
        ViewCompat.m19241B0(this.f10292a, G + this.f10294c, paddingTop + this.f10296e, F + this.f10295d, paddingBottom + this.f10297f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public void m10330p(int i) {
        if (m10342d() != null) {
            m10342d().setTint(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m10329q() {
        this.f10306o = true;
        this.f10292a.setSupportBackgroundTintList(this.f10301j);
        this.f10292a.setSupportBackgroundTintMode(this.f10300i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public void m10328r(boolean z) {
        this.f10308q = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m10327s(int i) {
        if (!this.f10307p || this.f10298g != i) {
            this.f10298g = i;
            this.f10307p = true;
            m10325u(this.f10293b.m9255w(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public void m10326t(@Nullable ColorStateList colorStateList) {
        if (this.f10303l != colorStateList) {
            this.f10303l = colorStateList;
            if (f10291s && (this.f10292a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f10292a.getBackground()).setColor(RippleUtils.m9367d(colorStateList));
            } else if (!f10291s && (this.f10292a.getBackground() instanceof RippleDrawableCompat)) {
                ((RippleDrawableCompat) this.f10292a.getBackground()).setTintList(RippleUtils.m9367d(colorStateList));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public void m10325u(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.f10293b = shapeAppearanceModel;
        m10349A(shapeAppearanceModel);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public void m10324v(boolean z) {
        this.f10305n = z;
        m10347C();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void m10323w(@Nullable ColorStateList colorStateList) {
        if (this.f10302k != colorStateList) {
            this.f10302k = colorStateList;
            m10347C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public void m10322x(int i) {
        if (this.f10299h != i) {
            this.f10299h = i;
            m10347C();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public void m10321y(@Nullable ColorStateList colorStateList) {
        if (this.f10301j != colorStateList) {
            this.f10301j = colorStateList;
            if (m10342d() != null) {
                DrawableCompat.m19498o(m10342d(), this.f10301j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public void m10320z(@Nullable PorterDuff.Mode mode) {
        if (this.f10300i != mode) {
            this.f10300i = mode;
            if (m10342d() != null && this.f10300i != null) {
                DrawableCompat.m19497p(m10342d(), this.f10300i);
            }
        }
    }
}
