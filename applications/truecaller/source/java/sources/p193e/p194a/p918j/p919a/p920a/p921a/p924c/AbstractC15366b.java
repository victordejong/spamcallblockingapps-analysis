package p193e.p194a.p918j.p919a.p920a.p921a.p924c;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.j.a.a.a.c.b */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/c/b.class */
public abstract class AbstractC15366b extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f43662a;

    /* renamed from: b */
    public volatile f f43663b;

    /* renamed from: c */
    public final Object f43664c = new Object();

    /* renamed from: d */
    public boolean f43665d = false;

    /* renamed from: OA */
    public final void m18885OA() {
        if (this.f43662a == null) {
            this.f43662a = new ViewComponentManager$FragmentContextWrapper(AbstractC15366b.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18884PA() {
        if (!this.f43665d) {
            this.f43665d = true;
            ((AbstractC15370e) m18883Yt()).mo11999I0((C15350a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18883Yt() {
        if (this.f43663b == null) {
            synchronized (this.f43664c) {
                if (this.f43663b == null) {
                    this.f43663b = new f(this);
                }
            }
        }
        return this.f43663b.Yt();
    }

    public Context getContext() {
        if (AbstractC15366b.super.getContext() == null && this.f43662a == null) {
            return null;
        }
        m18885OA();
        return this.f43662a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15366b.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15366b.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f43662a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18885OA();
        m18884PA();
    }

    public void onAttach(Context context) {
        AbstractC15366b.super.onAttach(context);
        m18885OA();
        m18884PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15366b.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
