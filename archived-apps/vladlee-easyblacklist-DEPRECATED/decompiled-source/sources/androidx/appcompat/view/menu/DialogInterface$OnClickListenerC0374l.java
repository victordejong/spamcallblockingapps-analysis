package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.C0247a;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.appcompat.view.menu.AbstractC0386s;
/* renamed from: androidx.appcompat.view.menu.l */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/menu/l.class */
final class DialogInterface$OnClickListenerC0374l implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, AbstractC0386s.AbstractC0387a {

    /* renamed from: a */
    C0368i f1673a;

    /* renamed from: b */
    private C0371k f1674b;

    /* renamed from: c */
    private DialogInterfaceC0308m f1675c;

    /* renamed from: d */
    private AbstractC0386s.AbstractC0387a f1676d;

    public DialogInterface$OnClickListenerC0374l(C0371k kVar) {
        this.f1674b = kVar;
    }

    /* renamed from: a */
    public final void m9589a() {
        C0371k kVar = this.f1674b;
        DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(kVar.m9601f());
        this.f1673a = new C0368i(aVar.m9805a(), C0247a.C0254g.f710l);
        this.f1673a.mo1002a(this);
        this.f1674b.m9614a(this.f1673a);
        aVar.m9798a(this.f1673a.m9633a(), this);
        View view = kVar.f1650c;
        if (view != null) {
            aVar.m9800a(view);
        } else {
            aVar.m9801a(kVar.f1649b).m9797a(kVar.f1648a);
        }
        aVar.m9802a((DialogInterface.OnKeyListener) this);
        this.f1675c = aVar.m9792b();
        this.f1675c.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f1675c.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 131072;
        this.f1675c.show();
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
    /* renamed from: a */
    public final void mo9453a(C0371k kVar, boolean z) {
        DialogInterfaceC0308m mVar;
        if ((z || kVar == this.f1674b) && (mVar = this.f1675c) != null) {
            mVar.dismiss();
        }
        AbstractC0386s.AbstractC0387a aVar = this.f1676d;
        if (aVar != null) {
            aVar.mo9453a(kVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.AbstractC0386s.AbstractC0387a
    /* renamed from: a */
    public final boolean mo9454a(C0371k kVar) {
        AbstractC0386s.AbstractC0387a aVar = this.f1676d;
        if (aVar != null) {
            return aVar.mo9454a(kVar);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f1674b.m9617a((C0375m) this.f1673a.m9633a().getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        this.f1673a.mo1003a(this.f1674b, true);
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public final boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f1675c.getWindow();
                if (!(window2 == null || (decorView2 = window2.getDecorView()) == null || (keyDispatcherState2 = decorView2.getKeyDispatcherState()) == null)) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f1675c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f1674b.m9608a(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f1674b.performShortcut(i, keyEvent, 0);
    }
}
