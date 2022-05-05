package androidx.appcompat.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* renamed from: androidx.appcompat.view.b */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b.class */
public abstract class AbstractC0343b {

    /* renamed from: a */
    private Object f1452a;

    /* renamed from: b */
    private boolean f1453b;

    /* renamed from: androidx.appcompat.view.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/view/b$a.class */
    public interface AbstractC0344a {
        /* renamed from: a */
        void mo51a(AbstractC0343b bVar);

        /* renamed from: a */
        boolean mo50a(AbstractC0343b bVar, Menu menu);

        /* renamed from: a */
        boolean mo49a(AbstractC0343b bVar, MenuItem menuItem);

        /* renamed from: b */
        boolean mo48b(AbstractC0343b bVar, Menu menu);
    }

    /* renamed from: a */
    public abstract MenuInflater mo9692a();

    /* renamed from: a */
    public abstract void mo9691a(int i);

    /* renamed from: a */
    public abstract void mo9690a(View view);

    /* renamed from: a */
    public abstract void mo9689a(CharSequence charSequence);

    /* renamed from: a */
    public final void m9697a(Object obj) {
        this.f1452a = obj;
    }

    /* renamed from: a */
    public void mo9688a(boolean z) {
        this.f1453b = z;
    }

    /* renamed from: b */
    public abstract Menu mo9687b();

    /* renamed from: b */
    public abstract void mo9686b(int i);

    /* renamed from: b */
    public abstract void mo9685b(CharSequence charSequence);

    /* renamed from: c */
    public abstract void mo9684c();

    /* renamed from: d */
    public abstract void mo9683d();

    /* renamed from: f */
    public abstract CharSequence mo9682f();

    /* renamed from: g */
    public abstract CharSequence mo9681g();

    /* renamed from: h */
    public boolean mo9680h() {
        return false;
    }

    /* renamed from: i */
    public abstract View mo9679i();

    /* renamed from: j */
    public final Object m9696j() {
        return this.f1452a;
    }

    /* renamed from: k */
    public final boolean m9695k() {
        return this.f1453b;
    }
}
