package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.menu.AbstractC0391v;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/m.class */
public final class C0515m extends AbstractView$OnAttachStateChangeListenerC0443ak {

    /* renamed from: a */
    final /* synthetic */ ActivityChooserView f2419a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0515m(ActivityChooserView activityChooserView, View view) {
        super(view);
        this.f2419a = activityChooserView;
    }

    @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
    /* renamed from: a */
    public final AbstractC0391v mo8957a() {
        return this.f2419a.m9448d();
    }

    @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
    /* renamed from: b */
    protected final boolean mo8956b() {
        this.f2419a.m9452a();
        return true;
    }

    @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
    /* renamed from: c */
    protected final boolean mo9010c() {
        this.f2419a.m9450b();
        return true;
    }
}
