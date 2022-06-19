package p193e.p194a.p947k.p948a.p949a;

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
/* renamed from: e.a.k.a.a.e */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/a/e.class */
public abstract class AbstractC15603e extends e implements b {

    /* renamed from: a */
    public ContextWrapper f44127a;

    /* renamed from: b */
    public volatile f f44128b;

    /* renamed from: c */
    public final Object f44129c = new Object();

    /* renamed from: d */
    public boolean f44130d = false;

    /* renamed from: OA */
    public final void m18591OA() {
        if (this.f44127a == null) {
            this.f44127a = new ViewComponentManager$FragmentContextWrapper(AbstractC15603e.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18590PA() {
        if (!this.f44130d) {
            this.f44130d = true;
            ((AbstractC15610l) m18589Yt()).mo11896v0((C15597b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18589Yt() {
        if (this.f44128b == null) {
            synchronized (this.f44129c) {
                if (this.f44128b == null) {
                    this.f44128b = new f(this);
                }
            }
        }
        return this.f44128b.Yt();
    }

    public Context getContext() {
        if (AbstractC15603e.super.getContext() == null && this.f44127a == null) {
            return null;
        }
        m18591OA();
        return this.f44127a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15603e.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15603e.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44127a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18591OA();
        m18590PA();
    }

    public void onAttach(Context context) {
        AbstractC15603e.super.onAttach(context);
        m18591OA();
        m18590PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15603e.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
