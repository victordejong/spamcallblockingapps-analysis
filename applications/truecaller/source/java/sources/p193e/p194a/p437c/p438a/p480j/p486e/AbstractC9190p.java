package p193e.p194a.p437c.p438a.p480j.p486e;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import e.m.a.g.e.e;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.c.a.j.e.p */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/j/e/p.class */
public abstract class AbstractC9190p extends e implements b {

    /* renamed from: a */
    public ContextWrapper f27934a;

    /* renamed from: b */
    public volatile f f27935b;

    /* renamed from: c */
    public final Object f27936c = new Object();

    /* renamed from: d */
    public boolean f27937d = false;

    /* renamed from: OA */
    public final void m27808OA() {
        if (this.f27934a == null) {
            this.f27934a = new ViewComponentManager$FragmentContextWrapper(AbstractC9190p.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m27807PA() {
        if (!this.f27937d) {
            this.f27937d = true;
            ((AbstractC9187m) m27806Yt()).mo11905s((C9162a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m27806Yt() {
        if (this.f27935b == null) {
            synchronized (this.f27936c) {
                if (this.f27935b == null) {
                    this.f27935b = new f(this);
                }
            }
        }
        return this.f27935b.Yt();
    }

    public Context getContext() {
        if (AbstractC9190p.super.getContext() == null && this.f27934a == null) {
            return null;
        }
        m27808OA();
        return this.f27934a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC9190p.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC9190p.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f27934a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m27808OA();
        m27807PA();
    }

    public void onAttach(Context context) {
        AbstractC9190p.super.onAttach(context);
        m27808OA();
        m27807PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC9190p.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
