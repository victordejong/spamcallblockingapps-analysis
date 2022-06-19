package p193e.p194a.p437c.p438a.p478h;

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
/* renamed from: e.a.c.a.h.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/h/f.class */
public abstract class AbstractC9104f extends e implements b {

    /* renamed from: a */
    public ContextWrapper f27770a;

    /* renamed from: b */
    public volatile f f27771b;

    /* renamed from: c */
    public final Object f27772c = new Object();

    /* renamed from: d */
    public boolean f27773d = false;

    /* renamed from: OA */
    public final void m27881OA() {
        if (this.f27770a == null) {
            this.f27770a = new ViewComponentManager$FragmentContextWrapper(AbstractC9104f.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m27880PA() {
        if (!this.f27773d) {
            this.f27773d = true;
            ((AbstractC9096b) m27879Yt()).mo11921m1((C9092a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m27879Yt() {
        if (this.f27771b == null) {
            synchronized (this.f27772c) {
                if (this.f27771b == null) {
                    this.f27771b = new f(this);
                }
            }
        }
        return this.f27771b.Yt();
    }

    public Context getContext() {
        if (AbstractC9104f.super.getContext() == null && this.f27770a == null) {
            return null;
        }
        m27881OA();
        return this.f27770a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC9104f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC9104f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f27770a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m27881OA();
        m27880PA();
    }

    public void onAttach(Context context) {
        AbstractC9104f.super.onAttach(context);
        m27881OA();
        m27880PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC9104f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
