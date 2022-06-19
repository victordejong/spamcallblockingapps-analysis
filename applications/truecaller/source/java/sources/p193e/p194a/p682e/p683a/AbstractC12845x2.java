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
/* renamed from: e.a.e.a.x2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/x2.class */
public abstract class AbstractC12845x2 extends k implements b {

    /* renamed from: a */
    public ContextWrapper f37360a;

    /* renamed from: b */
    public volatile f f37361b;

    /* renamed from: c */
    public final Object f37362c = new Object();

    /* renamed from: d */
    public boolean f37363d = false;

    /* renamed from: OA */
    public final void m22610OA() {
        if (this.f37360a == null) {
            this.f37360a = new ViewComponentManager$FragmentContextWrapper(AbstractC12845x2.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m22609PA() {
        if (!this.f37363d) {
            this.f37363d = true;
            ((AbstractC12686b4) m22608Yt()).mo11911q((C12676a4) this);
        }
    }

    /* renamed from: Yt */
    public final Object m22608Yt() {
        if (this.f37361b == null) {
            synchronized (this.f37362c) {
                if (this.f37361b == null) {
                    this.f37361b = new f(this);
                }
            }
        }
        return this.f37361b.Yt();
    }

    public Context getContext() {
        if (AbstractC12845x2.super.getContext() == null && this.f37360a == null) {
            return null;
        }
        m22610OA();
        return this.f37360a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC12845x2.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC12845x2.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f37360a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m22610OA();
        m22609PA();
    }

    public void onAttach(Context context) {
        AbstractC12845x2.super.onAttach(context);
        m22610OA();
        m22609PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC12845x2.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
