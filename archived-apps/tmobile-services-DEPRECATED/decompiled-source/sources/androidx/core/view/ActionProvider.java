package androidx.core.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:androidx/core/view/ActionProvider.class */
public abstract class ActionProvider {

    /* renamed from: a */
    private SubUiVisibilityListener f3220a;

    /* renamed from: b */
    private VisibilityListener f3221b;

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/view/ActionProvider$SubUiVisibilityListener.class */
    public interface SubUiVisibilityListener {
        /* renamed from: a */
        void mo19318a(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/view/ActionProvider$VisibilityListener.class */
    public interface VisibilityListener {
        void onActionProviderVisibilityChanged(boolean z);
    }

    public ActionProvider(Context context) {
    }

    /* renamed from: a */
    public boolean mo19329a() {
        return false;
    }

    /* renamed from: b */
    public boolean mo19328b() {
        return true;
    }

    /* renamed from: c */
    public abstract View mo19327c();

    /* renamed from: d */
    public View mo19326d(MenuItem menuItem) {
        return mo19327c();
    }

    /* renamed from: e */
    public boolean mo19325e() {
        return false;
    }

    /* renamed from: f */
    public void mo19324f(SubMenu subMenu) {
    }

    /* renamed from: g */
    public boolean mo19323g() {
        return false;
    }

    @RestrictTo
    /* renamed from: h */
    public void m19322h() {
        this.f3221b = null;
        this.f3220a = null;
    }

    @RestrictTo
    /* renamed from: i */
    public void m19321i(SubUiVisibilityListener subUiVisibilityListener) {
        this.f3220a = subUiVisibilityListener;
    }

    /* renamed from: j */
    public void mo19320j(VisibilityListener visibilityListener) {
        if (!(this.f3221b == null || visibilityListener == null)) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.f3221b = visibilityListener;
    }

    @RestrictTo
    /* renamed from: k */
    public void m19319k(boolean z) {
        SubUiVisibilityListener subUiVisibilityListener = this.f3220a;
        if (subUiVisibilityListener != null) {
            subUiVisibilityListener.mo19318a(z);
        }
    }
}
