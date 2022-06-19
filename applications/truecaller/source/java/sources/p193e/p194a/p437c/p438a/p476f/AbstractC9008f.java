package p193e.p194a.p437c.p438a.p476f;

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
/* renamed from: e.a.c.a.f.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/f/f.class */
public abstract class AbstractC9008f extends k implements b {

    /* renamed from: a */
    public ContextWrapper f27353a;

    /* renamed from: b */
    public volatile f f27354b;

    /* renamed from: c */
    public final Object f27355c = new Object();

    /* renamed from: d */
    public boolean f27356d = false;

    /* renamed from: OA */
    public final void m27890OA() {
        if (this.f27353a == null) {
            this.f27353a = new ViewComponentManager$FragmentContextWrapper(AbstractC9008f.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m27889PA() {
        if (!this.f27356d) {
            this.f27356d = true;
            ((AbstractC9005c) m27888Yt()).mo11916o0((C9001b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m27888Yt() {
        if (this.f27354b == null) {
            synchronized (this.f27355c) {
                if (this.f27354b == null) {
                    this.f27354b = new f(this);
                }
            }
        }
        return this.f27354b.Yt();
    }

    public Context getContext() {
        if (AbstractC9008f.super.getContext() == null && this.f27353a == null) {
            return null;
        }
        m27890OA();
        return this.f27353a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC9008f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC9008f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f27353a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m27890OA();
        m27889PA();
    }

    public void onAttach(Context context) {
        AbstractC9008f.super.onAttach(context);
        m27890OA();
        m27889PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC9008f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
