package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.C0247a;
import androidx.appcompat.view.AbstractC0343b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar.class */
public abstract class ActionBar {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f1018a;

        public LayoutParams() {
            super(-2, -2);
            this.f1018a = 0;
            this.f1018a = 8388627;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1018a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0247a.C0257j.f1006t);
            this.f1018a = obtainStyledAttributes.getInt(C0247a.C0257j.f1007u, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1018a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f1018a = 0;
            this.f1018a = layoutParams.f1018a;
        }
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.ActionBar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$a.class */
    public static abstract class AbstractC0260a {
        /* renamed from: a */
        public abstract Drawable m9948a();

        /* renamed from: b */
        public abstract CharSequence m9947b();

        /* renamed from: c */
        public abstract View m9946c();

        /* renamed from: d */
        public abstract CharSequence m9945d();
    }

    /* renamed from: a */
    public abstract int mo9840a();

    /* renamed from: a */
    public AbstractC0343b mo9832a(AbstractC0343b.AbstractC0344a aVar) {
        return null;
    }

    /* renamed from: a */
    public void mo9839a(float f) {
        if (f != 0.0f) {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    /* renamed from: a */
    public void mo9838a(int i) {
    }

    /* renamed from: a */
    public void mo9835a(Configuration configuration) {
    }

    /* renamed from: a */
    public void mo9834a(Drawable drawable) {
    }

    /* renamed from: a */
    public abstract void mo9831a(CharSequence charSequence);

    /* renamed from: a */
    public abstract void mo9830a(boolean z);

    /* renamed from: a */
    public boolean mo9836a(int i, KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: a */
    public boolean mo9852a(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: b */
    public Context mo9828b() {
        return null;
    }

    /* renamed from: b */
    public void mo9826b(CharSequence charSequence) {
    }

    /* renamed from: b */
    public abstract void mo9825b(boolean z);

    /* renamed from: c */
    public void mo9824c() {
        throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
    }

    /* renamed from: c */
    public void mo9823c(boolean z) {
    }

    /* renamed from: d */
    public void mo9822d(boolean z) {
    }

    /* renamed from: d */
    public boolean mo9851d() {
        return false;
    }

    /* renamed from: e */
    public void mo9821e(boolean z) {
    }

    /* renamed from: e */
    public boolean mo9850e() {
        return false;
    }

    /* renamed from: f */
    public boolean mo9849f() {
        return false;
    }

    /* renamed from: g */
    public boolean mo9820g() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void mo9848h() {
    }
}
