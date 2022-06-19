package p193e.p194a.p773g.p774a.p776b;

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
/* renamed from: e.a.g.a.b.r */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/b/r.class */
public abstract class AbstractC14166r extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f40898a;

    /* renamed from: b */
    public volatile f f40899b;

    /* renamed from: c */
    public final Object f40900c = new Object();

    /* renamed from: d */
    public boolean f40901d = false;

    public AbstractC14166r(int i) {
        super(i);
    }

    /* renamed from: OA */
    public final void m20620OA() {
        if (this.f40898a == null) {
            this.f40898a = new ViewComponentManager$FragmentContextWrapper(AbstractC14166r.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m20619PA() {
        if (!this.f40901d) {
            this.f40901d = true;
            ((AbstractC14147f) m20618Yt()).mo11944e0((C14118a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m20618Yt() {
        if (this.f40899b == null) {
            synchronized (this.f40900c) {
                if (this.f40899b == null) {
                    this.f40899b = new f(this);
                }
            }
        }
        return this.f40899b.Yt();
    }

    public Context getContext() {
        if (AbstractC14166r.super.getContext() == null && this.f40898a == null) {
            return null;
        }
        m20620OA();
        return this.f40898a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC14166r.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC14166r.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f40898a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m20620OA();
        m20619PA();
    }

    public void onAttach(Context context) {
        AbstractC14166r.super.onAttach(context);
        m20620OA();
        m20619PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC14166r.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
