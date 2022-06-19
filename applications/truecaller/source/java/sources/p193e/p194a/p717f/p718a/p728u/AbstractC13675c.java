package p193e.p194a.p717f.p718a.p728u;

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
import p193e.p194a.p372b0.p373a.p374a.AbstractC8213a;
/* renamed from: e.a.f.a.u.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/u/c.class */
public abstract class AbstractC13675c extends AbstractC8213a implements b {

    /* renamed from: j */
    public ContextWrapper f39641j;

    /* renamed from: k */
    public volatile f f39642k;

    /* renamed from: l */
    public final Object f39643l = new Object();

    /* renamed from: m */
    public boolean f39644m = false;

    /* renamed from: Yt */
    public final Object m21323Yt() {
        if (this.f39642k == null) {
            synchronized (this.f39643l) {
                if (this.f39642k == null) {
                    this.f39642k = new f(this);
                }
            }
        }
        return this.f39642k.Yt();
    }

    /* renamed from: cB */
    public final void m21322cB() {
        if (this.f39641j == null) {
            this.f39641j = new ViewComponentManager$FragmentContextWrapper(AbstractC13675c.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: dB */
    public void m21321dB() {
        if (!this.f39644m) {
            this.f39644m = true;
            ((AbstractC13685l) m21323Yt()).mo12019B0((C13684k) this);
        }
    }

    public Context getContext() {
        if (AbstractC13675c.super.getContext() == null && this.f39641j == null) {
            return null;
        }
        m21322cB();
        return this.f39641j;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13675c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13675c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39641j;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21322cB();
        m21321dB();
    }

    public void onAttach(Context context) {
        AbstractC13675c.super.onAttach(context);
        m21322cB();
        m21321dB();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13675c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
