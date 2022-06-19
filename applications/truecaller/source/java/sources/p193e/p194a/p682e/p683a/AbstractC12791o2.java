package p193e.p194a.p682e.p683a;

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
/* renamed from: e.a.e.a.o2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/o2.class */
public abstract class AbstractC12791o2 extends k implements b {

    /* renamed from: a */
    public ContextWrapper f37247a;

    /* renamed from: b */
    public volatile f f37248b;

    /* renamed from: c */
    public final Object f37249c = new Object();

    /* renamed from: d */
    public boolean f37250d = false;

    /* renamed from: OA */
    public final void m22656OA() {
        if (this.f37247a == null) {
            this.f37247a = new ViewComponentManager$FragmentContextWrapper(AbstractC12791o2.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m22655PA() {
        if (!this.f37250d) {
            this.f37250d = true;
            ((AbstractC12685b3) m22654Yt()).mo11972R0((C12858z2) this);
        }
    }

    /* renamed from: Yt */
    public final Object m22654Yt() {
        if (this.f37248b == null) {
            synchronized (this.f37249c) {
                if (this.f37248b == null) {
                    this.f37248b = new f(this);
                }
            }
        }
        return this.f37248b.Yt();
    }

    public Context getContext() {
        if (AbstractC12791o2.super.getContext() == null && this.f37247a == null) {
            return null;
        }
        m22656OA();
        return this.f37247a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC12791o2.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC12791o2.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f37247a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m22656OA();
        m22655PA();
    }

    public void onAttach(Context context) {
        AbstractC12791o2.super.onAttach(context);
        m22656OA();
        m22655PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC12791o2.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
