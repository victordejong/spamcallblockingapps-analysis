package p193e.p194a.p947k.p948a.p949a.p950a;

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
/* renamed from: e.a.k.a.a.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/a/a/b.class */
public abstract class AbstractC15593b extends q implements b {

    /* renamed from: a */
    public ContextWrapper f44109a;

    /* renamed from: b */
    public volatile f f44110b;

    /* renamed from: c */
    public final Object f44111c = new Object();

    /* renamed from: d */
    public boolean f44112d = false;

    /* renamed from: OA */
    public final void m18600OA() {
        if (this.f44109a == null) {
            this.f44109a = new ViewComponentManager$FragmentContextWrapper(AbstractC15593b.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18599PA() {
        if (!this.f44112d) {
            this.f44112d = true;
            ((AbstractC15596e) m18598Yt()).mo11917o((C15591a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18598Yt() {
        if (this.f44110b == null) {
            synchronized (this.f44111c) {
                if (this.f44110b == null) {
                    this.f44110b = new f(this);
                }
            }
        }
        return this.f44110b.Yt();
    }

    public Context getContext() {
        if (AbstractC15593b.super.getContext() == null && this.f44109a == null) {
            return null;
        }
        m18600OA();
        return this.f44109a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15593b.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15593b.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44109a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18600OA();
        m18599PA();
    }

    public void onAttach(Context context) {
        AbstractC15593b.super.onAttach(context);
        m18600OA();
        m18599PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15593b.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
