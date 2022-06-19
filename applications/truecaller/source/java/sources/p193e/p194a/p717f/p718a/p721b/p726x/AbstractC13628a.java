package p193e.p194a.p717f.p718a.p721b.p726x;

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
/* renamed from: e.a.f.a.b.x.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/x/a.class */
public abstract class AbstractC13628a extends k implements b {

    /* renamed from: a */
    public ContextWrapper f39486a;

    /* renamed from: b */
    public volatile f f39487b;

    /* renamed from: c */
    public final Object f39488c = new Object();

    /* renamed from: d */
    public boolean f39489d = false;

    /* renamed from: OA */
    public final void m21471OA() {
        if (this.f39486a == null) {
            this.f39486a = new ViewComponentManager$FragmentContextWrapper(AbstractC13628a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m21470PA() {
        if (!this.f39489d) {
            this.f39489d = true;
            ((AbstractC13632c) m21469Yt()).mo11933i1((C13629b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m21469Yt() {
        if (this.f39487b == null) {
            synchronized (this.f39488c) {
                if (this.f39487b == null) {
                    this.f39487b = new f(this);
                }
            }
        }
        return this.f39487b.Yt();
    }

    public Context getContext() {
        if (AbstractC13628a.super.getContext() == null && this.f39486a == null) {
            return null;
        }
        m21471OA();
        return this.f39486a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13628a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13628a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39486a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21471OA();
        m21470PA();
    }

    public void onAttach(Context context) {
        AbstractC13628a.super.onAttach(context);
        m21471OA();
        m21470PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13628a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
