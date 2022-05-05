package androidx.core.p037g;

import android.os.Build;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
/* renamed from: androidx.core.g.aa */
/* loaded from: classes-dex2jar.jar:androidx/core/g/aa.class */
public final class C0712aa {

    /* renamed from: a */
    Runnable f3069a = null;

    /* renamed from: b */
    Runnable f3070b = null;

    /* renamed from: c */
    int f3071c = -1;

    /* renamed from: d */
    private WeakReference<View> f3072d;

    /* renamed from: androidx.core.g.aa$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/g/aa$a.class */
    static final class C0713a implements AbstractC0716ad {

        /* renamed from: a */
        C0712aa f3073a;

        /* renamed from: b */
        boolean f3074b;

        C0713a(C0712aa aaVar) {
            this.f3073a = aaVar;
        }

        @Override // androidx.core.p037g.AbstractC0716ad
        /* renamed from: a */
        public final void mo8442a(View view) {
            this.f3074b = false;
            AbstractC0716ad adVar = null;
            if (this.f3073a.f3071c >= 0) {
                view.setLayerType(2, null);
            }
            if (this.f3073a.f3069a != null) {
                Runnable runnable = this.f3073a.f3069a;
                this.f3073a.f3069a = null;
                runnable.run();
            }
            Object tag = view.getTag(2113929216);
            if (tag instanceof AbstractC0716ad) {
                adVar = (AbstractC0716ad) tag;
            }
            if (adVar != null) {
                adVar.mo8442a(view);
            }
        }

        @Override // androidx.core.p037g.AbstractC0716ad
        /* renamed from: b */
        public final void mo8441b(View view) {
            AbstractC0716ad adVar = null;
            if (this.f3073a.f3071c >= 0) {
                view.setLayerType(this.f3073a.f3071c, null);
                this.f3073a.f3071c = -1;
            }
            if (Build.VERSION.SDK_INT >= 16 || !this.f3074b) {
                if (this.f3073a.f3070b != null) {
                    Runnable runnable = this.f3073a.f3070b;
                    this.f3073a.f3070b = null;
                    runnable.run();
                }
                Object tag = view.getTag(2113929216);
                if (tag instanceof AbstractC0716ad) {
                    adVar = (AbstractC0716ad) tag;
                }
                if (adVar != null) {
                    adVar.mo8441b(view);
                }
                this.f3074b = true;
            }
        }

        @Override // androidx.core.p037g.AbstractC0716ad
        /* renamed from: c */
        public final void mo8440c(View view) {
            Object tag = view.getTag(2113929216);
            AbstractC0716ad adVar = tag instanceof AbstractC0716ad ? (AbstractC0716ad) tag : null;
            if (adVar != null) {
                adVar.mo8440c(view);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0712aa(View view) {
        this.f3072d = new WeakReference<>(view);
    }

    /* renamed from: a */
    private void m8450a(View view, AbstractC0716ad adVar) {
        if (adVar != null) {
            view.animate().setListener(new C0714ab(this, adVar, view));
        } else {
            view.animate().setListener(null);
        }
    }

    /* renamed from: a */
    public final long m8453a() {
        View view = this.f3072d.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    /* renamed from: a */
    public final C0712aa m8452a(float f) {
        View view = this.f3072d.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    /* renamed from: a */
    public final C0712aa m8451a(long j) {
        View view = this.f3072d.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    /* renamed from: a */
    public final C0712aa m8449a(Interpolator interpolator) {
        View view = this.f3072d.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    /* renamed from: a */
    public final C0712aa m8448a(AbstractC0716ad adVar) {
        View view = this.f3072d.get();
        if (view != null) {
            if (Build.VERSION.SDK_INT < 16) {
                view.setTag(2113929216, adVar);
                adVar = new C0713a(this);
            }
            m8450a(view, adVar);
        }
        return this;
    }

    /* renamed from: a */
    public final C0712aa m8447a(AbstractC0718af afVar) {
        View view = this.f3072d.get();
        if (view != null && Build.VERSION.SDK_INT >= 19) {
            C0715ac acVar = null;
            if (afVar != null) {
                acVar = new C0715ac(this, afVar, view);
            }
            view.animate().setUpdateListener(acVar);
        }
        return this;
    }

    /* renamed from: b */
    public final C0712aa m8445b(float f) {
        View view = this.f3072d.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }

    /* renamed from: b */
    public final C0712aa m8444b(long j) {
        View view = this.f3072d.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    /* renamed from: b */
    public final void m8446b() {
        View view = this.f3072d.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    /* renamed from: c */
    public final void m8443c() {
        View view = this.f3072d.get();
        if (view != null) {
            view.animate().start();
        }
    }
}
