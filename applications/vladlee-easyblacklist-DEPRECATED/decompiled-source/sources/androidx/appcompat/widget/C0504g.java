package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.menu.AbstractC0391v;
import androidx.appcompat.widget.ActionMenuPresenter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g.class */
public final class C0504g extends AbstractView$OnAttachStateChangeListenerC0443ak {

    /* renamed from: a */
    final /* synthetic */ ActionMenuPresenter f2392a;

    /* renamed from: b */
    final /* synthetic */ ActionMenuPresenter.C0400d f2393b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0504g(ActionMenuPresenter.C0400d dVar, View view, ActionMenuPresenter actionMenuPresenter) {
        super(view);
        this.f2393b = dVar;
        this.f2392a = actionMenuPresenter;
    }

    @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
    /* renamed from: a */
    public final AbstractC0391v mo8957a() {
        if (ActionMenuPresenter.this.f1810h == null) {
            return null;
        }
        return ActionMenuPresenter.this.f1810h.m9551c();
    }

    @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
    /* renamed from: b */
    public final boolean mo8956b() {
        ActionMenuPresenter.this.m9483h();
        return true;
    }

    @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
    /* renamed from: c */
    public final boolean mo9010c() {
        if (ActionMenuPresenter.this.f1812j != null) {
            return false;
        }
        ActionMenuPresenter.this.m9482i();
        return true;
    }
}
