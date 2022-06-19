package p193e.p194a.p773g.p774a.p775a;

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
/* renamed from: e.a.g.a.a.m */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/a/m.class */
public abstract class AbstractC14116m extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f40789a;

    /* renamed from: b */
    public volatile f f40790b;

    /* renamed from: c */
    public final Object f40791c = new Object();

    /* renamed from: d */
    public boolean f40792d = false;

    /* renamed from: OA */
    public final void m20727OA() {
        if (this.f40789a == null) {
            this.f40789a = new ViewComponentManager$FragmentContextWrapper(AbstractC14116m.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m20726PA() {
        if (!this.f40792d) {
            this.f40792d = true;
            ((AbstractC14102f) m20725Yt()).mo11959Y0((C14074a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m20725Yt() {
        if (this.f40790b == null) {
            synchronized (this.f40791c) {
                if (this.f40790b == null) {
                    this.f40790b = new f(this);
                }
            }
        }
        return this.f40790b.Yt();
    }

    public Context getContext() {
        if (AbstractC14116m.super.getContext() == null && this.f40789a == null) {
            return null;
        }
        m20727OA();
        return this.f40789a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC14116m.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC14116m.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f40789a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m20727OA();
        m20726PA();
    }

    public void onAttach(Context context) {
        AbstractC14116m.super.onAttach(context);
        m20727OA();
        m20726PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC14116m.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
