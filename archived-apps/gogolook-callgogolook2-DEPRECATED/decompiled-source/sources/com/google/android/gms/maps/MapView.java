package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.C6795e;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p252e.AbstractC7104a;
import p081h.p203i.p204a.p224e.p252e.AbstractC7111e;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
import p081h.p203i.p204a.p224e.p282l.AbstractC8866e;
import p081h.p203i.p204a.p224e.p282l.BinderC8933m;
import p081h.p203i.p204a.p224e.p282l.C8865d;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8875c;
import p081h.p203i.p204a.p224e.p282l.p283j.AbstractC8885h;
import p081h.p203i.p204a.p224e.p282l.p283j.C8872a0;
import p081h.p203i.p204a.p224e.p282l.p283j.C8905z;
import p081h.p203i.p204a.p224e.p282l.p284k.C8909d;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapView.class */
public class MapView extends FrameLayout {

    /* renamed from: a */
    public final C3577b f6995a;

    /* renamed from: com.google.android.gms.maps.MapView$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapView$a.class */
    public static final class C3576a implements AbstractC8885h {

        /* renamed from: a */
        public final ViewGroup f6996a;

        /* renamed from: b */
        public final AbstractC8875c f6997b;

        /* renamed from: c */
        public View f6998c;

        public C3576a(ViewGroup viewGroup, AbstractC8875c cVar) {
            C7021t.m21290a(cVar);
            this.f6997b = cVar;
            C7021t.m21290a(viewGroup);
            this.f6996a = viewGroup;
        }

        /* renamed from: a */
        public final void m31762a(AbstractC8866e eVar) {
            try {
                this.f6997b.mo16827a(new BinderC8933m(this, eVar));
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onCreate(Bundle bundle) {
            try {
                Bundle bundle2 = new Bundle();
                C8905z.m16811a(bundle, bundle2);
                this.f6997b.onCreate(bundle2);
                C8905z.m16811a(bundle2, bundle);
                this.f6998c = (View) BinderC7110d.m21059A(this.f6997b.mo16826d());
                this.f6996a.removeAllViews();
                this.f6996a.addView(this.f6998c);
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onDestroy() {
            try {
                this.f6997b.onDestroy();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onPause() {
            try {
                this.f6997b.onPause();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onResume() {
            try {
                this.f6997b.onResume();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onStart() {
            try {
                this.f6997b.onStart();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7109c
        public final void onStop() {
            try {
                this.f6997b.onStop();
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        }
    }

    /* renamed from: com.google.android.gms.maps.MapView$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/MapView$b.class */
    public static final class C3577b extends AbstractC7104a<C3576a> {

        /* renamed from: e */
        public final ViewGroup f6999e;

        /* renamed from: f */
        public final Context f7000f;

        /* renamed from: g */
        public AbstractC7111e<C3576a> f7001g;

        /* renamed from: h */
        public final GoogleMapOptions f7002h;

        /* renamed from: i */
        public final List<AbstractC8866e> f7003i = new ArrayList();

        public C3577b(ViewGroup viewGroup, Context context, GoogleMapOptions googleMapOptions) {
            this.f6999e = viewGroup;
            this.f7000f = context;
            this.f7002h = googleMapOptions;
        }

        @Override // p081h.p203i.p204a.p224e.p252e.AbstractC7104a
        /* renamed from: a */
        public final void mo21067a(AbstractC7111e<C3576a> eVar) {
            this.f7001g = eVar;
            if (this.f7001g != null && m21075a() == null) {
                try {
                    C8865d.m16858a(this.f7000f);
                    AbstractC8875c a = C8872a0.m16850a(this.f7000f).mo16842a(BinderC7110d.m21058a(this.f7000f), this.f7002h);
                    if (a != null) {
                        this.f7001g.mo21056a(new C3576a(this.f6999e, a));
                        for (AbstractC8866e eVar2 : this.f7003i) {
                            m21075a().m31762a(eVar2);
                        }
                        this.f7003i.clear();
                    }
                } catch (RemoteException e) {
                    throw new C8909d(e);
                } catch (C6795e e2) {
                }
            }
        }

        /* renamed from: a */
        public final void m31761a(AbstractC8866e eVar) {
            if (m21075a() != null) {
                m21075a().m31762a(eVar);
            } else {
                this.f7003i.add(eVar);
            }
        }
    }

    public MapView(Context context) {
        super(context);
        this.f6995a = new C3577b(this, context, null);
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6995a = new C3577b(this, context, GoogleMapOptions.m31788a(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6995a = new C3577b(this, context, GoogleMapOptions.m31788a(context, attributeSet));
        setClickable(true);
    }

    public MapView(Context context, GoogleMapOptions googleMapOptions) {
        super(context);
        this.f6995a = new C3577b(this, context, googleMapOptions);
        setClickable(true);
    }

    /* renamed from: a */
    public final void m31769a() {
        this.f6995a.m21066b();
    }

    /* renamed from: a */
    public final void m31768a(Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            this.f6995a.m21073a(bundle);
            if (this.f6995a.m21075a() == null) {
                AbstractC7104a.m21071a(this);
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }

    /* renamed from: a */
    public void m31767a(AbstractC8866e eVar) {
        C7021t.m21288a("getMapAsync() must be called on the main thread");
        this.f6995a.m31761a(eVar);
    }

    /* renamed from: b */
    public final void m31766b() {
        this.f6995a.m21064c();
    }

    /* renamed from: c */
    public final void m31765c() {
        this.f6995a.m21063d();
    }

    /* renamed from: d */
    public final void m31764d() {
        this.f6995a.m21062e();
    }

    /* renamed from: e */
    public final void m31763e() {
        this.f6995a.m21061f();
    }
}
