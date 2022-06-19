package p193e.p194a.p682e.p683a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import com.truecaller.p183ui.dialogs.QaPremiumReportDialog;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import n3.b.a.q;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.a.w2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/w2.class */
public abstract class AbstractC12839w2 extends q implements b {

    /* renamed from: a */
    public ContextWrapper f37346a;

    /* renamed from: b */
    public volatile f f37347b;

    /* renamed from: c */
    public final Object f37348c = new Object();

    /* renamed from: d */
    public boolean f37349d = false;

    /* renamed from: OA */
    public final void m22619OA() {
        if (this.f37346a == null) {
            this.f37346a = new ViewComponentManager$FragmentContextWrapper(AbstractC12839w2.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m22618PA() {
        if (!this.f37349d) {
            this.f37349d = true;
            ((AbstractC12861z3) m22617Yt()).mo11938g1((QaPremiumReportDialog) this);
        }
    }

    /* renamed from: Yt */
    public final Object m22617Yt() {
        if (this.f37347b == null) {
            synchronized (this.f37348c) {
                if (this.f37347b == null) {
                    this.f37347b = new f(this);
                }
            }
        }
        return this.f37347b.Yt();
    }

    public Context getContext() {
        if (AbstractC12839w2.super.getContext() == null && this.f37346a == null) {
            return null;
        }
        m22619OA();
        return this.f37346a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC12839w2.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC12839w2.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f37346a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m22619OA();
        m22618PA();
    }

    public void onAttach(Context context) {
        AbstractC12839w2.super.onAttach(context);
        m22619OA();
        m22618PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC12839w2.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
