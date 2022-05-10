package com.inmobi.ads;

import android.os.Handler;
import android.os.SystemClock;
import android.view.View;
import com.inmobi.ads.AbstractC8218cf;
import com.inmobi.ads.C8197c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.inmobi.ads.y */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/y.class */
public class C8315y {

    /* renamed from: b */
    public static final String f32341b = "y";

    /* renamed from: a */
    public final Map<View, C8318b> f32342a;

    /* renamed from: c */
    public final AbstractC8218cf f32343c;

    /* renamed from: d */
    public final Map<View, C8318b> f32344d;

    /* renamed from: e */
    public final Handler f32345e;

    /* renamed from: f */
    public final RunnableC8319c f32346f;

    /* renamed from: g */
    public final long f32347g;

    /* renamed from: h */
    public AbstractC8218cf.AbstractC8221c f32348h;

    /* renamed from: i */
    public AbstractC8317a f32349i;

    /* renamed from: com.inmobi.ads.y$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/y$a.class */
    public interface AbstractC8317a {
        /* renamed from: a */
        void mo5913a(View view, Object obj);
    }

    /* renamed from: com.inmobi.ads.y$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/y$b.class */
    public static final class C8318b {

        /* renamed from: a */
        public Object f32351a;

        /* renamed from: b */
        public int f32352b;

        /* renamed from: c */
        public int f32353c;

        /* renamed from: d */
        public long f32354d = Long.MAX_VALUE;

        public C8318b(Object obj, int i, int i2) {
            this.f32351a = obj;
            this.f32352b = i;
            this.f32353c = i2;
        }
    }

    /* renamed from: com.inmobi.ads.y$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/y$c.class */
    public static final class RunnableC8319c implements Runnable {

        /* renamed from: a */
        public final ArrayList<View> f32355a = new ArrayList<>();

        /* renamed from: b */
        public WeakReference<C8315y> f32356b;

        public RunnableC8319c(C8315y yVar) {
            this.f32356b = new WeakReference<>(yVar);
        }

        @Override // java.lang.Runnable
        public final void run() {
            C8315y yVar = this.f32356b.get();
            if (yVar != null) {
                for (Map.Entry entry : yVar.f32344d.entrySet()) {
                    View view = (View) entry.getKey();
                    C8318b bVar = (C8318b) entry.getValue();
                    if (C8315y.m5926a(bVar.f32354d, bVar.f32353c) && this.f32356b.get() != null) {
                        yVar.f32349i.mo5913a(view, bVar.f32351a);
                        this.f32355a.add(view);
                    }
                }
                Iterator<View> it = this.f32355a.iterator();
                while (it.hasNext()) {
                    yVar.m5925a(it.next());
                }
                this.f32355a.clear();
                if (!yVar.f32344d.isEmpty()) {
                    yVar.m5916d();
                }
            }
        }
    }

    public C8315y(C8197c.C8209l lVar, AbstractC8218cf cfVar, AbstractC8317a aVar) {
        this(new WeakHashMap(), new WeakHashMap(), cfVar, new Handler(), lVar, aVar);
    }

    public C8315y(Map<View, C8318b> map, Map<View, C8318b> map2, AbstractC8218cf cfVar, Handler handler, C8197c.C8209l lVar, AbstractC8317a aVar) {
        this.f32342a = map;
        this.f32344d = map2;
        this.f32343c = cfVar;
        this.f32347g = lVar.f32060d;
        AbstractC8218cf.AbstractC8221c cVar = new AbstractC8218cf.AbstractC8221c() { // from class: com.inmobi.ads.y.1
            @Override // com.inmobi.ads.AbstractC8218cf.AbstractC8221c
            /* renamed from: a */
            public final void mo5914a(List<View> list, List<View> list2) {
                for (View view : list) {
                    C8318b bVar = (C8318b) C8315y.this.f32342a.get(view);
                    if (bVar == null) {
                        C8315y.this.m5925a(view);
                    } else {
                        C8318b bVar2 = (C8318b) C8315y.this.f32344d.get(view);
                        if (bVar2 == null || !bVar.f32351a.equals(bVar2.f32351a)) {
                            bVar.f32354d = SystemClock.uptimeMillis();
                            C8315y.this.f32344d.put(view, bVar);
                        }
                    }
                }
                for (View view2 : list2) {
                    C8315y.this.f32344d.remove(view2);
                }
                C8315y.this.m5916d();
            }
        };
        this.f32348h = cVar;
        this.f32343c.f32087c = cVar;
        this.f32345e = handler;
        this.f32346f = new RunnableC8319c(this);
        this.f32349i = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5925a(View view) {
        this.f32342a.remove(view);
        this.f32344d.remove(view);
        this.f32343c.m6179a(view);
    }

    /* renamed from: a */
    public static /* synthetic */ boolean m5926a(long j, int i) {
        return SystemClock.uptimeMillis() - j >= ((long) i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m5916d() {
        if (!this.f32345e.hasMessages(0)) {
            this.f32345e.postDelayed(this.f32346f, this.f32347g);
        }
    }

    /* renamed from: a */
    public final View m5921a(Object obj) {
        View view;
        Iterator<Map.Entry<View, C8318b>> it = this.f32342a.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                view = null;
                break;
            }
            Map.Entry<View, C8318b> next = it.next();
            if (next.getValue().f32351a.equals(obj)) {
                view = next.getKey();
                break;
            }
        }
        if (view != null) {
            m5925a(view);
        }
        return view;
    }

    /* renamed from: a */
    public final void m5927a() {
        this.f32343c.m6172f();
        this.f32345e.removeCallbacksAndMessages(null);
        this.f32344d.clear();
    }

    /* renamed from: a */
    public final void m5924a(View view, Object obj, int i, int i2) {
        C8318b bVar = this.f32342a.get(view);
        if (bVar == null || !bVar.f32351a.equals(obj)) {
            m5925a(view);
            C8318b bVar2 = new C8318b(obj, i, i2);
            this.f32342a.put(view, bVar2);
            this.f32343c.m6178a(view, obj, bVar2.f32352b);
        }
    }

    /* renamed from: b */
    public final void m5920b() {
        for (Map.Entry<View, C8318b> entry : this.f32342a.entrySet()) {
            this.f32343c.m6178a(entry.getKey(), entry.getValue().f32351a, entry.getValue().f32352b);
        }
        m5916d();
        this.f32343c.mo5959d();
    }

    /* renamed from: c */
    public final void m5918c() {
        this.f32342a.clear();
        this.f32344d.clear();
        this.f32343c.m6172f();
        this.f32345e.removeMessages(0);
        this.f32343c.mo5958e();
        this.f32348h = null;
    }
}
