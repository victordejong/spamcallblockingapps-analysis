package p193e.p194a.p947k.p948a.p954e.p955k;

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
/* renamed from: e.a.k.a.e.k.g */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/k/g.class */
public abstract class AbstractC15677g extends k implements b {

    /* renamed from: a */
    public ContextWrapper f44242a;

    /* renamed from: b */
    public volatile f f44243b;

    /* renamed from: c */
    public final Object f44244c = new Object();

    /* renamed from: d */
    public boolean f44245d = false;

    /* renamed from: OA */
    public final void m18526OA() {
        if (this.f44242a == null) {
            this.f44242a = new ViewComponentManager$FragmentContextWrapper(AbstractC15677g.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18525PA() {
        if (!this.f44245d) {
            this.f44245d = true;
            ((AbstractC15672b) m18524Yt()).mo11993K0((C15668a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18524Yt() {
        if (this.f44243b == null) {
            synchronized (this.f44244c) {
                if (this.f44243b == null) {
                    this.f44243b = new f(this);
                }
            }
        }
        return this.f44243b.Yt();
    }

    public Context getContext() {
        if (AbstractC15677g.super.getContext() == null && this.f44242a == null) {
            return null;
        }
        m18526OA();
        return this.f44242a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15677g.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15677g.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44242a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18526OA();
        m18525PA();
    }

    public void onAttach(Context context) {
        AbstractC15677g.super.onAttach(context);
        m18526OA();
        m18525PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15677g.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
