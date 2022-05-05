package androidx.appcompat.widget;

import android.view.View;
import androidx.appcompat.view.menu.AbstractC0391v;
import androidx.appcompat.widget.AppCompatSpinner;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.appcompat.widget.w */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w.class */
public final class C0525w extends AbstractView$OnAttachStateChangeListenerC0443ak {

    /* renamed from: a */
    final /* synthetic */ AppCompatSpinner.C0411c f2455a;

    /* renamed from: b */
    final /* synthetic */ AppCompatSpinner f2456b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0525w(AppCompatSpinner appCompatSpinner, View view, AppCompatSpinner.C0411c cVar) {
        super(view);
        this.f2456b = appCompatSpinner;
        this.f2455a = cVar;
    }

    @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
    /* renamed from: a */
    public final AbstractC0391v mo8957a() {
        return this.f2455a;
    }

    @Override // androidx.appcompat.widget.AbstractView$OnAttachStateChangeListenerC0443ak
    /* renamed from: b */
    public final boolean mo8956b() {
        if (this.f2456b.m9434c().mo9419e()) {
            return true;
        }
        this.f2456b.m9433d();
        return true;
    }
}
