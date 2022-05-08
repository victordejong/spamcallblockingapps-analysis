package androidx.cardview.widget;

import android.graphics.drawable.Drawable;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.cardview.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/cardview/widget/a.class */
public final class C0565a implements AbstractC0571g {

    /* renamed from: a */
    final /* synthetic */ CardView f2582a;

    /* renamed from: b */
    private Drawable f2583b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0565a(CardView cardView) {
        this.f2582a = cardView;
    }

    @Override // androidx.cardview.widget.AbstractC0571g
    /* renamed from: a */
    public final void mo8844a(int i, int i2) {
        if (i > this.f2582a.f2575a) {
            C0565a.super.setMinimumWidth(i);
        }
        if (i2 > this.f2582a.f2576b) {
            C0565a.super.setMinimumHeight(i2);
        }
    }

    @Override // androidx.cardview.widget.AbstractC0571g
    /* renamed from: a */
    public final void mo8843a(int i, int i2, int i3, int i4) {
        this.f2582a.f2578d.set(i, i2, i3, i4);
        CardView cardView = this.f2582a;
        C0565a.super.setPadding(i + cardView.f2577c.left, i2 + this.f2582a.f2577c.top, i3 + this.f2582a.f2577c.right, i4 + this.f2582a.f2577c.bottom);
    }

    @Override // androidx.cardview.widget.AbstractC0571g
    /* renamed from: a */
    public final void mo8842a(Drawable drawable) {
        this.f2583b = drawable;
        this.f2582a.setBackgroundDrawable(drawable);
    }

    @Override // androidx.cardview.widget.AbstractC0571g
    /* renamed from: a */
    public final boolean mo8845a() {
        return this.f2582a.m8851m_();
    }

    @Override // androidx.cardview.widget.AbstractC0571g
    /* renamed from: b */
    public final boolean mo8841b() {
        return this.f2582a.m8852g();
    }

    @Override // androidx.cardview.widget.AbstractC0571g
    /* renamed from: c */
    public final Drawable mo8840c() {
        return this.f2583b;
    }

    @Override // androidx.cardview.widget.AbstractC0571g
    /* renamed from: d */
    public final View mo8839d() {
        return this.f2582a;
    }
}
