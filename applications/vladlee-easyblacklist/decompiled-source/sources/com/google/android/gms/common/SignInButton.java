package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.base.C1563R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.SignInButtonCreator;
import com.google.android.gms.common.internal.SignInButtonImpl;
import com.google.android.gms.dynamic.RemoteCreator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton.class */
public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public static final int COLOR_AUTO = 2;
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;

    /* renamed from: a */
    private int f6160a;

    /* renamed from: b */
    private int f6161b;

    /* renamed from: c */
    private View f6162c;

    /* renamed from: d */
    private View.OnClickListener f6163d;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton$ButtonSize.class */
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/SignInButton$ColorScheme.class */
    public @interface ColorScheme {
    }

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6163d = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1563R.styleable.SignInButton, 0, 0);
        try {
            this.f6160a = obtainStyledAttributes.getInt(C1563R.styleable.SignInButton_buttonSize, 0);
            this.f6161b = obtainStyledAttributes.getInt(C1563R.styleable.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            setStyle(this.f6160a, this.f6161b);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.f6163d;
        if (onClickListener != null && view == this.f6162c) {
            onClickListener.onClick(this);
        }
    }

    public final void setColorScheme(int i) {
        setStyle(this.f6160a, i);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f6162c.setEnabled(z);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f6163d = onClickListener;
        View view = this.f6162c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public final void setScopes(Scope[] scopeArr) {
        setStyle(this.f6160a, this.f6161b);
    }

    public final void setSize(int i) {
        setStyle(i, this.f6161b);
    }

    public final void setStyle(int i, int i2) {
        this.f6160a = i;
        this.f6161b = i2;
        Context context = getContext();
        View view = this.f6162c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f6162c = SignInButtonCreator.createView(context, this.f6160a, this.f6161b);
        } catch (RemoteCreator.RemoteCreatorException e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i3 = this.f6160a;
            int i4 = this.f6161b;
            SignInButtonImpl signInButtonImpl = new SignInButtonImpl(context);
            signInButtonImpl.configure(context.getResources(), i3, i4);
            this.f6162c = signInButtonImpl;
        }
        addView(this.f6162c);
        this.f6162c.setEnabled(isEnabled());
        this.f6162c.setOnClickListener(this);
    }

    @Deprecated
    public final void setStyle(int i, int i2, Scope[] scopeArr) {
        setStyle(i, i2);
    }
}
