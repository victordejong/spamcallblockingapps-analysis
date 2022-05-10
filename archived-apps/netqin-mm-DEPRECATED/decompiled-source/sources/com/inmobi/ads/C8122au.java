package com.inmobi.ads;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.inmobi.ads.C8293n;
import com.inmobi.ads.NativeScrollableContainer;
import com.inmobi.ads.NativeTracker;
import com.inmobi.rendering.RenderView;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.inmobi.ads.au */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/au.class */
public final class C8122au implements NativeScrollableContainer.AbstractC8029a {

    /* renamed from: e */
    public static final String f31774e = "au";

    /* renamed from: n */
    public static Handler f31775n = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public AbstractC8172bh f31776a;

    /* renamed from: d */
    public C8154bf f31779d;

    /* renamed from: f */
    public final WeakReference<Context> f31780f;

    /* renamed from: g */
    public final C8109ao f31781g;

    /* renamed from: h */
    public final C8083ah f31782h;

    /* renamed from: i */
    public final C8197c f31783i;

    /* renamed from: j */
    public AbstractC8134c f31784j;

    /* renamed from: k */
    public AbstractC8132a f31785k;

    /* renamed from: l */
    public AbstractC8133b f31786l;

    /* renamed from: m */
    public AbstractC8137ax f31787m;

    /* renamed from: p */
    public RenderView f31789p;

    /* renamed from: b */
    public int f31777b = 0;

    /* renamed from: o */
    public boolean f31788o = false;

    /* renamed from: c */
    public final C8293n f31778c = new C8293n();

    /* renamed from: com.inmobi.ads.au$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/au$a.class */
    public interface AbstractC8132a {
        /* renamed from: a */
        void mo6357a(View view, C8103ak akVar);
    }

    /* renamed from: com.inmobi.ads.au$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/au$b.class */
    public interface AbstractC8133b {
        /* renamed from: a */
        void mo6356a(C8146bb bbVar);
    }

    /* renamed from: com.inmobi.ads.au$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/au$c.class */
    public interface AbstractC8134c {
        /* renamed from: a */
        void mo6355a(int i, C8103ak akVar);
    }

    public C8122au(Context context, C8197c cVar, C8083ah ahVar, C8109ao aoVar, AbstractC8134c cVar2, AbstractC8132a aVar, AbstractC8133b bVar) {
        this.f31780f = new WeakReference<>(context);
        this.f31782h = ahVar;
        this.f31781g = aoVar;
        this.f31784j = cVar2;
        this.f31785k = aVar;
        this.f31786l = bVar;
        this.f31783i = cVar;
        this.f31779d = C8154bf.m6308a(context);
    }

    /* renamed from: a */
    private C8136aw m6374a(C8136aw awVar, ViewGroup viewGroup) {
        C8136aw awVar2 = awVar == null ? (C8136aw) this.f31779d.m6305a(m6368c(), this.f31781g.f31722d, this.f31783i) : awVar;
        if (!(awVar2 == null || awVar == null)) {
            ViewParent parent = awVar2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(awVar2);
            }
            C8154bf bfVar = this.f31779d;
            for (int childCount = awVar2.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = awVar2.getChildAt(childCount);
                awVar2.removeViewAt(childCount);
                bfVar.m6304a(childAt);
            }
            C8154bf.m6303a(awVar2, this.f31781g.f31722d.f31678c);
        }
        C8154bf.m6289b(this.f31781g.f31722d.f31678c.f31701a.x);
        awVar2.setLayoutParams(C8154bf.m6295a(this.f31781g.f31722d, viewGroup));
        return awVar2;
    }

    /* renamed from: a */
    private void m6378a(View view, final C8103ak akVar) {
        boolean z;
        final List<C8293n.C8296a> a = this.f31778c.m5987a(view, akVar);
        if (a == null) {
            NativeTracker.TrackerEventType trackerEventType = NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CREATIVE_VIEW;
            Iterator<NativeTracker> it = akVar.f31696u.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (trackerEventType == it.next().f31407b) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                return;
            }
        }
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.inmobi.ads.au.3
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view2) {
                C8122au.this.f31778c.m5985a(a);
                C8083ah unused = C8122au.this.f31782h;
                C8103ak a2 = C8083ah.m6507a(C8122au.this.f31782h.m6484h(), akVar);
                C8103ak akVar2 = akVar;
                NativeTracker.TrackerEventType trackerEventType2 = NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_CREATIVE_VIEW;
                C8083ah ahVar = C8122au.this.f31782h;
                if (a2 == null) {
                    a2 = akVar;
                }
                akVar2.m6453a(trackerEventType2, ahVar.m6512a(a2));
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view2) {
                view2.removeOnAttachStateChangeListener(this);
                C8293n nVar = C8122au.this.f31778c;
                List<C8293n.C8296a> list = a;
                if (list != null) {
                    for (C8293n.C8296a aVar : list) {
                        aVar.f32289a.cancel();
                    }
                    nVar.f32281a.removeAll(list);
                }
            }
        });
    }

    /* renamed from: a */
    private void m6376a(final C8103ak akVar, View view) {
        if (akVar.f31683h) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.ads.au.6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    C8122au.this.f31785k.mo6357a(view2, akVar);
                }
            });
        }
    }

    /* renamed from: c */
    private Context m6368c() {
        return this.f31780f.get();
    }

    /* renamed from: d */
    private int m6366d() {
        if (this.f31777b == 0) {
            return 8388611;
        }
        return this.f31781g.m6417b() - 1 == this.f31777b ? 8388613 : 1;
    }

    @Override // com.inmobi.ads.NativeScrollableContainer.AbstractC8029a
    /* renamed from: a */
    public final int mo6379a(int i) {
        this.f31777b = i;
        this.f31784j.mo6355a(i, this.f31781g.m6436a(i));
        return m6366d();
    }

    /* renamed from: a */
    public final ViewGroup m6377a(ViewGroup viewGroup, C8105am amVar) {
        ViewGroup viewGroup2 = (ViewGroup) this.f31779d.m6305a(m6368c(), amVar, this.f31783i);
        if (viewGroup2 != null) {
            viewGroup2.setLayoutParams(C8154bf.m6295a(amVar, viewGroup));
        }
        return viewGroup2;
    }

    /* renamed from: a */
    public final C8136aw m6373a(C8136aw awVar, ViewGroup viewGroup, RenderView renderView) {
        this.f31789p = renderView;
        C8136aw a = m6374a(awVar, viewGroup);
        if (!this.f31788o) {
            m6371b(a, this.f31781g.f31722d);
        }
        return a;
    }

    /* renamed from: a */
    public final void m6380a() {
        this.f31788o = true;
        this.f31780f.clear();
        AbstractC8137ax axVar = this.f31787m;
        if (axVar != null) {
            axVar.destroy();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x0168 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x000b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0150  */
    /* JADX WARN: Type inference failed for: r0v217, types: [long] */
    /* JADX WARN: Type inference failed for: r0v267, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.ViewGroup m6371b(android.view.ViewGroup r8, com.inmobi.ads.C8105am r9) {
        /*
            Method dump skipped, instructions count: 1473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8122au.m6371b(android.view.ViewGroup, com.inmobi.ads.am):android.view.ViewGroup");
    }

    /* renamed from: b */
    public final C8136aw m6369b(C8136aw awVar, final ViewGroup viewGroup, RenderView renderView) {
        this.f31789p = renderView;
        final C8136aw a = m6374a(awVar, viewGroup);
        f31775n.post(new Runnable() { // from class: com.inmobi.ads.au.1
            @Override // java.lang.Runnable
            public final void run() {
                if (!C8122au.this.f31788o) {
                    C8122au auVar = C8122au.this;
                    auVar.m6371b(a, auVar.f31781g.f31722d);
                }
            }
        });
        return a;
    }
}
