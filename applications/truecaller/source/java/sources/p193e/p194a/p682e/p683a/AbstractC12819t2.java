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
/* renamed from: e.a.e.a.t2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/t2.class */
public abstract class AbstractC12819t2 extends q implements b {

    /* renamed from: a */
    public ContextWrapper f37289a;

    /* renamed from: b */
    public volatile f f37290b;

    /* renamed from: c */
    public final Object f37291c = new Object();

    /* renamed from: d */
    public boolean f37292d = false;

    /* renamed from: OA */
    public final void m22646OA() {
        if (this.f37289a == null) {
            this.f37289a = new ViewComponentManager$FragmentContextWrapper(AbstractC12819t2.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m22645PA() {
        if (!this.f37292d) {
            this.f37292d = true;
            ((AbstractC12751i3) m22644Yt()).mo11973R((C12680b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m22644Yt() {
        if (this.f37290b == null) {
            synchronized (this.f37291c) {
                if (this.f37290b == null) {
                    this.f37290b = new f(this);
                }
            }
        }
        return this.f37290b.Yt();
    }

    public Context getContext() {
        if (AbstractC12819t2.super.getContext() == null && this.f37289a == null) {
            return null;
        }
        m22646OA();
        return this.f37289a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC12819t2.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC12819t2.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f37289a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m22646OA();
        m22645PA();
    }

    public void onAttach(Context context) {
        AbstractC12819t2.super.onAttach(context);
        m22646OA();
        m22645PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC12819t2.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
