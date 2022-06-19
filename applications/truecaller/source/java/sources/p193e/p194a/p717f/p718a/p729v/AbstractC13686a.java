package p193e.p194a.p717f.p718a.p729v;

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
/* renamed from: e.a.f.a.v.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/v/a.class */
public abstract class AbstractC13686a extends k implements b {

    /* renamed from: a */
    public ContextWrapper f39657a;

    /* renamed from: b */
    public volatile f f39658b;

    /* renamed from: c */
    public final Object f39659c = new Object();

    /* renamed from: d */
    public boolean f39660d = false;

    /* renamed from: OA */
    public final void m21313OA() {
        if (this.f39657a == null) {
            this.f39657a = new ViewComponentManager$FragmentContextWrapper(AbstractC13686a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m21312PA() {
        if (!this.f39660d) {
            this.f39660d = true;
            ((AbstractC13691c) m21311Yt()).mo11909q1((C13687b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m21311Yt() {
        if (this.f39658b == null) {
            synchronized (this.f39659c) {
                if (this.f39658b == null) {
                    this.f39658b = new f(this);
                }
            }
        }
        return this.f39658b.Yt();
    }

    public Context getContext() {
        if (AbstractC13686a.super.getContext() == null && this.f39657a == null) {
            return null;
        }
        m21313OA();
        return this.f39657a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13686a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13686a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39657a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21313OA();
        m21312PA();
    }

    public void onAttach(Context context) {
        AbstractC13686a.super.onAttach(context);
        m21313OA();
        m21312PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13686a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
