package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import androidx.core.graphics.drawable.C0758a;
import com.google.android.material.internal.C3024b;
import com.google.android.material.internal.C3026c;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.p065f.C2997a;
import com.google.android.material.p066g.AbstractC3014b;
import com.google.android.material.p066g.C3013a;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.floatingactionbutton.f */
/* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/f.class */
public final class C3011f extends C3001b {

    /* renamed from: x */
    private InsetDrawable f18294x;

    /* renamed from: com.google.android.material.floatingactionbutton.f$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/floatingactionbutton/f$a.class */
    static final class C3012a extends GradientDrawable {
        C3012a() {
        }

        @Override // android.graphics.drawable.GradientDrawable, android.graphics.drawable.Drawable
        public final boolean isStateful() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3011f(VisibilityAwareImageButton visibilityAwareImageButton, AbstractC3014b bVar) {
        super(visibilityAwareImageButton, bVar);
    }

    /* renamed from: a */
    private Animator m1121a(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f18273v, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f18273v, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(f18244a);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.C3001b
    /* renamed from: a */
    public final void mo1120a(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.f18273v.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(f18245p, m1121a(f, f3));
            stateListAnimator.addState(f18246q, m1121a(f, f2));
            stateListAnimator.addState(f18247r, m1121a(f, f2));
            stateListAnimator.addState(f18248s, m1121a(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f18273v, "elevation", f).setDuration(0L));
            if (Build.VERSION.SDK_INT >= 22 && Build.VERSION.SDK_INT <= 24) {
                arrayList.add(ObjectAnimator.ofFloat(this.f18273v, View.TRANSLATION_Z, this.f18273v.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f18273v, View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(f18244a);
            stateListAnimator.addState(f18249t, animatorSet);
            stateListAnimator.addState(f18250u, m1121a(0.0f, 0.0f));
            this.f18273v.setStateListAnimator(stateListAnimator);
        }
        if (this.f18274w.mo1100b()) {
            m1131c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.C3001b
    /* renamed from: a */
    public final void mo1119a(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        this.f18264g = C0758a.m8241f(m1125i());
        C0758a.m8251a(this.f18264g, colorStateList);
        if (mode != null) {
            C0758a.m8248a(this.f18264g, mode);
        }
        if (i > 0) {
            this.f18266i = m1138a(i, colorStateList);
            drawable = new LayerDrawable(new Drawable[]{this.f18266i, this.f18264g});
        } else {
            this.f18266i = null;
            drawable = this.f18264g;
        }
        this.f18265h = new RippleDrawable(C2997a.m1180a(colorStateList2), drawable, null);
        this.f18267j = this.f18265h;
        this.f18274w.mo1101a(this.f18265h);
    }

    @Override // com.google.android.material.floatingactionbutton.C3001b
    /* renamed from: a */
    final void mo1118a(Rect rect) {
        if (this.f18274w.mo1100b()) {
            float a = this.f18274w.mo1103a();
            float elevation = this.f18273v.getElevation() + this.f18270m;
            int ceil = (int) Math.ceil(C3013a.m1106b(elevation, a, false));
            int ceil2 = (int) Math.ceil(C3013a.m1109a(elevation, a, false));
            rect.set(ceil, ceil2, ceil, ceil2);
            return;
        }
        rect.set(0, 0, 0, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.C3001b
    /* renamed from: a */
    public final void mo1117a(int[] iArr) {
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        if (this.f18273v.isEnabled()) {
            this.f18273v.setElevation(this.f18268k);
            if (this.f18273v.isPressed()) {
                this.f18273v.setTranslationZ(this.f18270m);
            } else if (this.f18273v.isFocused() || this.f18273v.isHovered()) {
                this.f18273v.setTranslationZ(this.f18269l);
            } else {
                this.f18273v.setTranslationZ(0.0f);
            }
        } else {
            this.f18273v.setElevation(0.0f);
            this.f18273v.setTranslationZ(0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.C3001b
    /* renamed from: b */
    public final void mo1116b() {
    }

    @Override // com.google.android.material.floatingactionbutton.C3001b
    /* renamed from: b */
    final void mo1115b(Rect rect) {
        AbstractC3014b bVar;
        Drawable drawable;
        if (this.f18274w.mo1100b()) {
            this.f18294x = new InsetDrawable(this.f18265h, rect.left, rect.top, rect.right, rect.bottom);
            bVar = this.f18274w;
            drawable = this.f18294x;
        } else {
            bVar = this.f18274w;
            drawable = this.f18265h;
        }
        bVar.mo1101a(drawable);
    }

    @Override // com.google.android.material.floatingactionbutton.C3001b
    /* renamed from: f */
    final boolean mo1114f() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.C3001b
    /* renamed from: g */
    final C3024b mo1113g() {
        return new C3026c();
    }

    @Override // com.google.android.material.floatingactionbutton.C3001b
    /* renamed from: j */
    final GradientDrawable mo1112j() {
        return new C3012a();
    }
}
