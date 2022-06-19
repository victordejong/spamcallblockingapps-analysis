package p193e.p194a.p682e.p683a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import n3.b.a.q;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.a.u2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/u2.class */
public abstract class AbstractC12827u2 extends q implements b {

    /* renamed from: a */
    public ContextWrapper f37308a;

    /* renamed from: b */
    public volatile f f37309b;

    /* renamed from: c */
    public final Object f37310c = new Object();

    /* renamed from: d */
    public boolean f37311d = false;

    /* renamed from: OA */
    public final void m22637OA() {
        if (this.f37308a == null) {
            this.f37308a = new ViewComponentManager$FragmentContextWrapper(AbstractC12827u2.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m22636PA() {
        if (!this.f37311d) {
            this.f37311d = true;
            ((AbstractC12787n3) m22635Yt()).mo11913p0((View$OnClickListenerC12763k3) this);
        }
    }

    /* renamed from: Yt */
    public final Object m22635Yt() {
        if (this.f37309b == null) {
            synchronized (this.f37310c) {
                if (this.f37309b == null) {
                    this.f37309b = new f(this);
                }
            }
        }
        return this.f37309b.Yt();
    }

    public Context getContext() {
        if (AbstractC12827u2.super.getContext() == null && this.f37308a == null) {
            return null;
        }
        m22637OA();
        return this.f37308a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC12827u2.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC12827u2.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f37308a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m22637OA();
        m22636PA();
    }

    public void onAttach(Context context) {
        AbstractC12827u2.super.onAttach(context);
        m22637OA();
        m22636PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC12827u2.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
