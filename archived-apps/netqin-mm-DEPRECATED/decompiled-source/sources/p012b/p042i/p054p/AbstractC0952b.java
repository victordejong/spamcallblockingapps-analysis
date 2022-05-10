package p012b.p042i.p054p;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: b.i.p.b */
/* loaded from: classes-dex2jar.jar:b/i/p/b.class */
public abstract class AbstractC0952b {

    /* renamed from: a */
    public AbstractC0953a f4200a;

    /* renamed from: b */
    public AbstractC0954b f4201b;

    /* renamed from: b.i.p.b$a */
    /* loaded from: classes-dex2jar.jar:b/i/p/b$a.class */
    public interface AbstractC0953a {
        /* renamed from: b */
        void mo35421b(boolean z);
    }

    /* renamed from: b.i.p.b$b */
    /* loaded from: classes-dex2jar.jar:b/i/p/b$b.class */
    public interface AbstractC0954b {
        void onActionProviderVisibilityChanged(boolean z);
    }

    public AbstractC0952b(Context context) {
    }

    /* renamed from: a */
    public View mo35431a(MenuItem menuItem) {
        return mo35425c();
    }

    /* renamed from: a */
    public void mo35430a(SubMenu subMenu) {
    }

    /* renamed from: a */
    public void m35429a(AbstractC0953a aVar) {
        this.f4200a = aVar;
    }

    /* renamed from: a */
    public void mo35428a(AbstractC0954b bVar) {
        if (!(this.f4201b == null || bVar == null)) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f4201b = bVar;
    }

    /* renamed from: a */
    public void m35427a(boolean z) {
        AbstractC0953a aVar = this.f4200a;
        if (aVar != null) {
            aVar.mo35421b(z);
        }
    }

    /* renamed from: a */
    public boolean mo35432a() {
        return false;
    }

    /* renamed from: b */
    public boolean mo35426b() {
        return true;
    }

    /* renamed from: c */
    public abstract View mo35425c();

    /* renamed from: d */
    public boolean mo35424d() {
        return false;
    }

    /* renamed from: e */
    public boolean mo35423e() {
        return false;
    }

    /* renamed from: f */
    public void m35422f() {
        this.f4201b = null;
        this.f4200a = null;
    }
}
