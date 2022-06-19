package p193e.p194a.p947k.p948a.p952c;

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
/* renamed from: e.a.k.a.c.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/c/g.class */
public abstract class AbstractC15638g extends k implements b {

    /* renamed from: a */
    public ContextWrapper f44175a;

    /* renamed from: b */
    public volatile f f44176b;

    /* renamed from: c */
    public final Object f44177c = new Object();

    /* renamed from: d */
    public boolean f44178d = false;

    /* renamed from: OA */
    public final void m18559OA() {
        if (this.f44175a == null) {
            this.f44175a = new ViewComponentManager$FragmentContextWrapper(AbstractC15638g.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18558PA() {
        if (!this.f44178d) {
            this.f44178d = true;
            ((AbstractC15635d) m18557Yt()).mo11991L((C15628a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18557Yt() {
        if (this.f44176b == null) {
            synchronized (this.f44177c) {
                if (this.f44176b == null) {
                    this.f44176b = new f(this);
                }
            }
        }
        return this.f44176b.Yt();
    }

    public Context getContext() {
        if (AbstractC15638g.super.getContext() == null && this.f44175a == null) {
            return null;
        }
        m18559OA();
        return this.f44175a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15638g.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15638g.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44175a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18559OA();
        m18558PA();
    }

    public void onAttach(Context context) {
        AbstractC15638g.super.onAttach(context);
        m18559OA();
        m18558PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15638g.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
