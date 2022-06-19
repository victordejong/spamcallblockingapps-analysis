package p193e.p194a.p947k.p968b;

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
/* renamed from: e.a.k.b.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/i.class */
public abstract class AbstractC15934i extends k implements b {

    /* renamed from: a */
    public ContextWrapper f44928a;

    /* renamed from: b */
    public volatile f f44929b;

    /* renamed from: c */
    public final Object f44930c = new Object();

    /* renamed from: d */
    public boolean f44931d = false;

    /* renamed from: OA */
    public final void m18122OA() {
        if (this.f44928a == null) {
            this.f44928a = new ViewComponentManager$FragmentContextWrapper(AbstractC15934i.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18121PA() {
        if (!this.f44931d) {
            this.f44931d = true;
            ((AbstractC15931f) m18120Yt()).mo11961X0((C15918a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18120Yt() {
        if (this.f44929b == null) {
            synchronized (this.f44930c) {
                if (this.f44929b == null) {
                    this.f44929b = new f(this);
                }
            }
        }
        return this.f44929b.Yt();
    }

    public Context getContext() {
        if (AbstractC15934i.super.getContext() == null && this.f44928a == null) {
            return null;
        }
        m18122OA();
        return this.f44928a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15934i.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15934i.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44928a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18122OA();
        m18121PA();
    }

    public void onAttach(Context context) {
        AbstractC15934i.super.onAttach(context);
        m18122OA();
        m18121PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15934i.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
