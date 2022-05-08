package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.base.R$styleable;
import com.google.android.gms.common.internal.SignInButtonImpl;
import p081h.p203i.p204a.p224e.p235d.p240n.C7023u;
import p081h.p203i.p204a.p224e.p252e.AbstractC7112f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/SignInButton.class */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: a */
    public int f6503a;

    /* renamed from: b */
    public int f6504b;

    /* renamed from: c */
    public View f6505c;

    /* renamed from: d */
    public View.OnClickListener f6506d;

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6506d = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.SignInButton, 0, 0);
        try {
            this.f6503a = obtainStyledAttributes.getInt(R$styleable.SignInButton_buttonSize, 0);
            this.f6504b = obtainStyledAttributes.getInt(R$styleable.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            m31997a(this.f6503a, this.f6504b);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    /* renamed from: a */
    public final void m31997a(int i, int i2) {
        this.f6503a = i;
        this.f6504b = i2;
        Context context = getContext();
        View view = this.f6505c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f6505c = C7023u.m21277b(context, this.f6503a, this.f6504b);
        } catch (AbstractC7112f.C7113a e) {
            int i3 = this.f6503a;
            int i4 = this.f6504b;
            SignInButtonImpl signInButtonImpl = new SignInButtonImpl(context);
            signInButtonImpl.m31936a(context.getResources(), i3, i4);
            this.f6505c = signInButtonImpl;
        }
        addView(this.f6505c);
        this.f6505c.setEnabled(isEnabled());
        this.f6505c.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f6506d;
        if (onClickListener != null && view == this.f6505c) {
            onClickListener.onClick(this);
        }
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f6505c.setEnabled(z);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f6506d = onClickListener;
        View view = this.f6505c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }
}
