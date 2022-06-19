package p193e.p194a.p717f.p718a.p721b.p725w;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import com.truecaller.incallui.callui.ongoing.backgroundCall.BackgroundCallFragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.f.a.b.w.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/w/f.class */
public abstract class AbstractC13627f extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f39482a;

    /* renamed from: b */
    public volatile f f39483b;

    /* renamed from: c */
    public final Object f39484c = new Object();

    /* renamed from: d */
    public boolean f39485d = false;

    /* renamed from: OA */
    public final void m21474OA() {
        if (this.f39482a == null) {
            this.f39482a = new ViewComponentManager$FragmentContextWrapper(AbstractC13627f.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m21473PA() {
        if (!this.f39485d) {
            this.f39485d = true;
            ((AbstractC13622a) m21472Yt()).mo11953b0((BackgroundCallFragment) this);
        }
    }

    /* renamed from: Yt */
    public final Object m21472Yt() {
        if (this.f39483b == null) {
            synchronized (this.f39484c) {
                if (this.f39483b == null) {
                    this.f39483b = new f(this);
                }
            }
        }
        return this.f39483b.Yt();
    }

    public Context getContext() {
        if (AbstractC13627f.super.getContext() == null && this.f39482a == null) {
            return null;
        }
        m21474OA();
        return this.f39482a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13627f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13627f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39482a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21474OA();
        m21473PA();
    }

    public void onAttach(Context context) {
        AbstractC13627f.super.onAttach(context);
        m21474OA();
        m21473PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13627f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
