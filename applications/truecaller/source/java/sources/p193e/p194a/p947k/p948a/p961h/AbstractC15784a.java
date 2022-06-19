package p193e.p194a.p947k.p948a.p961h;

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
/* renamed from: e.a.k.a.h.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/h/a.class */
public abstract class AbstractC15784a extends e implements b {

    /* renamed from: a */
    public ContextWrapper f44538a;

    /* renamed from: b */
    public volatile f f44539b;

    /* renamed from: c */
    public final Object f44540c = new Object();

    /* renamed from: d */
    public boolean f44541d = false;

    /* renamed from: OA */
    public final void m18314OA() {
        if (this.f44538a == null) {
            this.f44538a = new ViewComponentManager$FragmentContextWrapper(AbstractC15784a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18313PA() {
        if (!this.f44541d) {
            this.f44541d = true;
            ((AbstractC15788c) m18312Yt()).mo11915o1((C15785b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18312Yt() {
        if (this.f44539b == null) {
            synchronized (this.f44540c) {
                if (this.f44539b == null) {
                    this.f44539b = new f(this);
                }
            }
        }
        return this.f44539b.Yt();
    }

    public Context getContext() {
        if (AbstractC15784a.super.getContext() == null && this.f44538a == null) {
            return null;
        }
        m18314OA();
        return this.f44538a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15784a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15784a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44538a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18314OA();
        m18313PA();
    }

    public void onAttach(Context context) {
        AbstractC15784a.super.onAttach(context);
        m18314OA();
        m18313PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15784a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
