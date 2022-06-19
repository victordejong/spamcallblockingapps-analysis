package p193e.p194a.p786g0.p787a;

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
/* renamed from: e.a.g0.a.h */
/* loaded from: classes14-dex2jar.jar:e/a/g0/a/h.class */
public abstract class AbstractC14333h extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f41432a;

    /* renamed from: b */
    public volatile f f41433b;

    /* renamed from: c */
    public final Object f41434c = new Object();

    /* renamed from: d */
    public boolean f41435d = false;

    /* renamed from: OA */
    public final void m20261OA() {
        if (this.f41432a == null) {
            this.f41432a = new ViewComponentManager$FragmentContextWrapper(AbstractC14333h.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m20260PA() {
        if (!this.f41435d) {
            this.f41435d = true;
            ((AbstractC14337l) m20259Yt()).mo11979P((C14320a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m20259Yt() {
        if (this.f41433b == null) {
            synchronized (this.f41434c) {
                if (this.f41433b == null) {
                    this.f41433b = new f(this);
                }
            }
        }
        return this.f41433b.Yt();
    }

    public Context getContext() {
        if (AbstractC14333h.super.getContext() == null && this.f41432a == null) {
            return null;
        }
        m20261OA();
        return this.f41432a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC14333h.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC14333h.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f41432a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m20261OA();
        m20260PA();
    }

    public void onAttach(Context context) {
        AbstractC14333h.super.onAttach(context);
        m20261OA();
        m20260PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC14333h.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
