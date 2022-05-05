package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import androidx.appcompat.p020a.p021a.C0258a;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0741t;
import androidx.core.widget.C0786k;
import com.google.android.material.C2913a;
import com.google.android.material.internal.C3052r;
import com.google.android.material.internal.C3053s;
import com.google.android.material.p064e.C2993a;
/* loaded from: classes-dex2jar.jar:com/google/android/material/button/MaterialButton.class */
public class MaterialButton extends AppCompatButton {

    /* renamed from: a */
    private final C2970b f18042a;

    /* renamed from: b */
    private int f18043b;

    /* renamed from: c */
    private PorterDuff.Mode f18044c;

    /* renamed from: e */
    private ColorStateList f18045e;

    /* renamed from: f */
    private Drawable f18046f;

    /* renamed from: g */
    private int f18047g;

    /* renamed from: h */
    private int f18048h;

    /* renamed from: i */
    private int f18049i;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C2913a.C2915b.f17443i);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray a = C3052r.m961a(context, attributeSet, C2913a.C2924k.f17627bN, i, C2913a.C2923j.f17530m, new int[0]);
        this.f18043b = a.getDimensionPixelSize(C2913a.C2924k.f17637bX, 0);
        this.f18044c = C3053s.m954a(a.getInt(C2913a.C2924k.f17693ca, -1), PorterDuff.Mode.SRC_IN);
        this.f18045e = C2993a.m1195a(getContext(), a, C2913a.C2924k.f17639bZ);
        this.f18046f = C2993a.m1194b(getContext(), a, C2913a.C2924k.f17635bV);
        this.f18049i = a.getInteger(C2913a.C2924k.f17636bW, 1);
        this.f18047g = a.getDimensionPixelSize(C2913a.C2924k.f17638bY, 0);
        this.f18042a = new C2970b(this);
        this.f18042a.m1329a(a);
        a.recycle();
        setCompoundDrawablePadding(this.f18043b);
        m1335c();
    }

    /* renamed from: c */
    private void m1335c() {
        Drawable drawable = this.f18046f;
        if (drawable != null) {
            this.f18046f = drawable.mutate();
            C0758a.m8251a(this.f18046f, this.f18045e);
            PorterDuff.Mode mode = this.f18044c;
            if (mode != null) {
                C0758a.m8248a(this.f18046f, mode);
            }
            int i = this.f18047g;
            if (i == 0) {
                i = this.f18046f.getIntrinsicWidth();
            }
            int i2 = this.f18047g;
            if (i2 == 0) {
                i2 = this.f18046f.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f18046f;
            int i3 = this.f18048h;
            drawable2.setBounds(i3, 0, i + i3, i2);
        }
        C0786k.m8133a(this, this.f18046f, null, null, null);
    }

    /* renamed from: d */
    private boolean m1334d() {
        C2970b bVar = this.f18042a;
        return bVar != null && !bVar.m1325b();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1175a(ColorStateList colorStateList) {
        if (m1334d()) {
            this.f18042a.m1330a(colorStateList);
        } else if (this.f18042a != null) {
            super.mo1175a(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.p037g.AbstractC0740s
    /* renamed from: a */
    public final void mo1174a(PorterDuff.Mode mode) {
        if (m1334d()) {
            this.f18042a.m1327a(mode);
        } else if (this.f18042a != null) {
            super.mo1174a(mode);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m1336a(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.p037g.AbstractC0740s
    /* renamed from: b */
    public final PorterDuff.Mode mo1169b() {
        return m1334d() ? this.f18042a.m1323d() : super.mo1169b();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, androidx.core.p037g.AbstractC0740s
    /* renamed from: c_ */
    public final ColorStateList mo1159c_() {
        return m1334d() ? this.f18042a.m1324c() : super.mo1159c_();
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return mo1159c_();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return mo1169b();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (Build.VERSION.SDK_INT < 21 && m1334d()) {
            this.f18042a.m1328a(canvas);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C2970b bVar;
        super.onLayout(z, i, i2, i3, i4);
        if (Build.VERSION.SDK_INT == 21 && (bVar = this.f18042a) != null) {
            bVar.m1331a(i4 - i2, i3 - i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f18046f != null && this.f18049i == 2) {
            int measureText = (int) getPaint().measureText(getText().toString());
            int i3 = this.f18047g;
            int i4 = i3;
            if (i3 == 0) {
                i4 = this.f18046f.getIntrinsicWidth();
            }
            int measuredWidth = (((((getMeasuredWidth() - measureText) - C0741t.m8320k(this)) - i4) - this.f18043b) - C0741t.m8321j(this)) / 2;
            boolean z = true;
            if (C0741t.m8325g(this) != 1) {
                z = false;
            }
            int i5 = measuredWidth;
            if (z) {
                i5 = -measuredWidth;
            }
            if (this.f18048h != i5) {
                this.f18048h = i5;
                m1335c();
            }
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (m1334d()) {
            this.f18042a.m1332a(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (m1334d()) {
            if (drawable != getBackground()) {
                Log.i("MaterialButton", "Setting a custom background is not supported.");
                this.f18042a.m1333a();
            } else {
                getBackground().setState(drawable.getState());
                return;
            }
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? C0258a.m9951b(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        mo1175a(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        mo1174a(mode);
    }
}
