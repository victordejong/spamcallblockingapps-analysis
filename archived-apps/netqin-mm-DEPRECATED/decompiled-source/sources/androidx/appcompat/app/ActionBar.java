package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import p012b.p016b.C0583j;
import p012b.p016b.p024p.AbstractC0622b;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar.class */
public abstract class ActionBar {

    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a */
        public int f156a;

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f156a = 0;
            this.f156a = 8388627;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f156a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0583j.ActionBarLayout);
            this.f156a = obtainStyledAttributes.getInt(C0583j.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f156a = 0;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f156a = 0;
            this.f156a = layoutParams.f156a;
        }
    }

    /* renamed from: androidx.appcompat.app.ActionBar$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$a.class */
    public interface AbstractC0069a {
        /* renamed from: a */
        void m39217a(boolean z);
    }

    @Deprecated
    /* renamed from: androidx.appcompat.app.ActionBar$b */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/ActionBar$b.class */
    public static abstract class AbstractC0070b {
        /* renamed from: a */
        public abstract CharSequence m39216a();

        /* renamed from: b */
        public abstract View m39215b();

        /* renamed from: c */
        public abstract Drawable m39214c();

        /* renamed from: d */
        public abstract CharSequence m39213d();

        /* renamed from: e */
        public abstract void m39212e();
    }

    /* renamed from: a */
    public abstract AbstractC0622b mo36809a(AbstractC0622b.AbstractC0623a aVar);

    /* renamed from: a */
    public abstract void mo36811a(Configuration configuration);

    /* renamed from: a */
    public abstract void mo36808a(CharSequence charSequence);

    /* renamed from: a */
    public abstract boolean mo36812a(int i, KeyEvent keyEvent);

    /* renamed from: a */
    public boolean m39222a(KeyEvent keyEvent) {
        return false;
    }

    /* renamed from: b */
    public abstract void mo36803b(boolean z);

    /* renamed from: c */
    public abstract void mo36801c(boolean z);

    /* renamed from: d */
    public abstract void mo36799d(boolean z);

    /* renamed from: e */
    public boolean m39221e() {
        return false;
    }

    /* renamed from: f */
    public abstract boolean mo36797f();

    /* renamed from: g */
    public abstract int mo36795g();

    /* renamed from: h */
    public abstract Context mo36793h();

    /* renamed from: i */
    public boolean m39220i() {
        return false;
    }

    /* renamed from: j */
    public void m39219j() {
    }

    /* renamed from: k */
    public boolean m39218k() {
        return false;
    }
}
