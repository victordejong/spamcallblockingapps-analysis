package p193e.p194a.p682e.p683a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import n3.r.a.k;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.a.n2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/n2.class */
public abstract class AbstractC12786n2 extends k implements b {

    /* renamed from: a */
    public ContextWrapper f37240a;

    /* renamed from: b */
    public volatile f f37241b;

    /* renamed from: c */
    public final Object f37242c = new Object();

    /* renamed from: d */
    public boolean f37243d = false;

    /* renamed from: OA */
    public final void m22659OA() {
        if (this.f37240a == null) {
            this.f37240a = new ViewComponentManager$FragmentContextWrapper(AbstractC12786n2.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m22658PA() {
        if (!this.f37243d) {
            this.f37243d = true;
            ((AbstractC12736g2) m22657Yt()).mo11920n((C12725f2) this);
        }
    }

    /* renamed from: Yt */
    public final Object m22657Yt() {
        if (this.f37241b == null) {
            synchronized (this.f37242c) {
                if (this.f37241b == null) {
                    this.f37241b = new f(this);
                }
            }
        }
        return this.f37241b.Yt();
    }

    public Context getContext() {
        if (AbstractC12786n2.super.getContext() == null && this.f37240a == null) {
            return null;
        }
        m22659OA();
        return this.f37240a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC12786n2.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC12786n2.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f37240a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m22659OA();
        m22658PA();
    }

    public void onAttach(Context context) {
        AbstractC12786n2.super.onAttach(context);
        m22659OA();
        m22658PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC12786n2.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
