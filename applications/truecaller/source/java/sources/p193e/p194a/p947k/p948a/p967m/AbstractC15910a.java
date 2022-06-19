package p193e.p194a.p947k.p948a.p967m;

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
/* renamed from: e.a.k.a.m.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/m/a.class */
public abstract class AbstractC15910a extends e implements b {

    /* renamed from: a */
    public ContextWrapper f44887a;

    /* renamed from: b */
    public volatile f f44888b;

    /* renamed from: c */
    public final Object f44889c = new Object();

    /* renamed from: d */
    public boolean f44890d = false;

    /* renamed from: OA */
    public final void m18149OA() {
        if (this.f44887a == null) {
            this.f44887a = new ViewComponentManager$FragmentContextWrapper(AbstractC15910a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18148PA() {
        if (!this.f44890d) {
            this.f44890d = true;
            ((AbstractC15915c) m18147Yt()).mo11947d0((C15911b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18147Yt() {
        if (this.f44888b == null) {
            synchronized (this.f44889c) {
                if (this.f44888b == null) {
                    this.f44888b = new f(this);
                }
            }
        }
        return this.f44888b.Yt();
    }

    public Context getContext() {
        if (AbstractC15910a.super.getContext() == null && this.f44887a == null) {
            return null;
        }
        m18149OA();
        return this.f44887a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15910a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15910a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44887a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18149OA();
        m18148PA();
    }

    public void onAttach(Context context) {
        AbstractC15910a.super.onAttach(context);
        m18149OA();
        m18148PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15910a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
