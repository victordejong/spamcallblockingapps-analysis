package androidx.core.p037g;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* renamed from: androidx.core.g.b */
/* loaded from: classes-dex2jar.jar:androidx/core/g/b.class */
public abstract class AbstractC0720b {

    /* renamed from: a */
    private final Context f3082a;

    /* renamed from: b */
    private AbstractC0721a f3083b;

    /* renamed from: c */
    private AbstractC0722b f3084c;

    /* renamed from: androidx.core.g.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/b$a.class */
    public interface AbstractC0721a {
        /* renamed from: b */
        void mo8417b(boolean z);
    }

    /* renamed from: androidx.core.g.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/b$b.class */
    public interface AbstractC0722b {
        /* renamed from: a */
        void mo8416a();
    }

    public AbstractC0720b(Context context) {
        this.f3082a = context;
    }

    /* renamed from: a */
    public abstract View mo8428a();

    /* renamed from: a */
    public View mo8427a(MenuItem menuItem) {
        return mo8428a();
    }

    /* renamed from: a */
    public void mo8426a(SubMenu subMenu) {
    }

    /* renamed from: a */
    public final void m8425a(AbstractC0721a aVar) {
        this.f3083b = aVar;
    }

    /* renamed from: a */
    public void mo8424a(AbstractC0722b bVar) {
        if (this.f3084c != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f3084c = bVar;
    }

    /* renamed from: a */
    public final void m8423a(boolean z) {
        AbstractC0721a aVar = this.f3083b;
        if (aVar != null) {
            aVar.mo8417b(z);
        }
    }

    /* renamed from: b */
    public boolean mo8422b() {
        return false;
    }

    /* renamed from: c */
    public boolean mo8421c() {
        return false;
    }

    /* renamed from: d */
    public boolean mo8420d() {
        return false;
    }

    /* renamed from: e */
    public boolean mo8419e() {
        return true;
    }

    /* renamed from: f */
    public final void m8418f() {
        this.f3084c = null;
        this.f3083b = null;
    }
}
