package p193e.p194a.p773g.p774a.p777c;

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
/* renamed from: e.a.g.a.c.f */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/c/f.class */
public abstract class AbstractC14181f extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f40927a;

    /* renamed from: b */
    public volatile f f40928b;

    /* renamed from: c */
    public final Object f40929c = new Object();

    /* renamed from: d */
    public boolean f40930d = false;

    /* renamed from: OA */
    public final void m20600OA() {
        if (this.f40927a == null) {
            this.f40927a = new ViewComponentManager$FragmentContextWrapper(AbstractC14181f.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m20599PA() {
        if (!this.f40930d) {
            this.f40930d = true;
            ((AbstractC14176b) m20598Yt()).mo11922m0((C14170a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m20598Yt() {
        if (this.f40928b == null) {
            synchronized (this.f40929c) {
                if (this.f40928b == null) {
                    this.f40928b = new f(this);
                }
            }
        }
        return this.f40928b.Yt();
    }

    public Context getContext() {
        if (AbstractC14181f.super.getContext() == null && this.f40927a == null) {
            return null;
        }
        m20600OA();
        return this.f40927a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC14181f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC14181f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f40927a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m20600OA();
        m20599PA();
    }

    public void onAttach(Context context) {
        AbstractC14181f.super.onAttach(context);
        m20600OA();
        m20599PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC14181f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
