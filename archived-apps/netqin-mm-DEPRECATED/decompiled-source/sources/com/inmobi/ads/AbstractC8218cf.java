package com.inmobi.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.inmobi.ads.cf */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/cf.class */
public abstract class AbstractC8218cf {

    /* renamed from: d */
    public static final String f32084d = "cf";

    /* renamed from: a */
    public boolean f32085a;

    /* renamed from: b */
    public final Map<View, C8222d> f32086b;

    /* renamed from: c */
    public AbstractC8221c f32087c;

    /* renamed from: e */
    public final ArrayList<View> f32088e;

    /* renamed from: f */
    public long f32089f;

    /* renamed from: g */
    public final AbstractC8219a f32090g;

    /* renamed from: h */
    public final RunnableC8220b f32091h;

    /* renamed from: i */
    public final Handler f32092i;

    /* renamed from: j */
    public boolean f32093j;

    /* renamed from: com.inmobi.ads.cf$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/cf$a.class */
    public interface AbstractC8219a {
        /* renamed from: a */
        boolean mo6170a(View view, View view2, int i, Object obj);
    }

    /* renamed from: com.inmobi.ads.cf$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/cf$b.class */
    public static final class RunnableC8220b implements Runnable {

        /* renamed from: c */
        public WeakReference<AbstractC8218cf> f32096c;

        /* renamed from: b */
        public final ArrayList<View> f32095b = new ArrayList<>();

        /* renamed from: a */
        public final ArrayList<View> f32094a = new ArrayList<>();

        public RunnableC8220b(AbstractC8218cf cfVar) {
            this.f32096c = new WeakReference<>(cfVar);
        }

        @Override // java.lang.Runnable
        public final void run() {
            AbstractC8221c cVar;
            AbstractC8218cf cfVar = this.f32096c.get();
            if (cfVar != null) {
                cfVar.f32093j = false;
                for (Map.Entry entry : cfVar.f32086b.entrySet()) {
                    View view = (View) entry.getKey();
                    if (cfVar.f32090g.mo6170a(((C8222d) entry.getValue()).f32099c, view, ((C8222d) entry.getValue()).f32097a, ((C8222d) entry.getValue()).f32100d)) {
                        this.f32094a.add(view);
                    } else {
                        this.f32095b.add(view);
                    }
                }
            }
            if (!(cfVar == null || (cVar = cfVar.f32087c) == null)) {
                cVar.mo5914a(this.f32094a, this.f32095b);
            }
            this.f32094a.clear();
            this.f32095b.clear();
            if (cfVar != null) {
                cfVar.mo5961b();
            }
        }
    }

    /* renamed from: com.inmobi.ads.cf$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/cf$c.class */
    public interface AbstractC8221c {
        /* renamed from: a */
        void mo5914a(List<View> list, List<View> list2);
    }

    /* renamed from: com.inmobi.ads.cf$d */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/cf$d.class */
    public static final class C8222d {

        /* renamed from: a */
        public int f32097a;

        /* renamed from: b */
        public long f32098b;

        /* renamed from: c */
        public View f32099c;

        /* renamed from: d */
        public Object f32100d;
    }

    public AbstractC8218cf(AbstractC8219a aVar) {
        this(new WeakHashMap(10), aVar, new Handler(Looper.getMainLooper()));
    }

    public AbstractC8218cf(Map<View, C8222d> map, AbstractC8219a aVar, Handler handler) {
        this.f32089f = 0L;
        this.f32085a = true;
        this.f32086b = map;
        this.f32090g = aVar;
        this.f32092i = handler;
        this.f32091h = new RunnableC8220b(this);
        this.f32088e = new ArrayList<>(50);
    }

    /* renamed from: a */
    public abstract int mo5962a();

    /* renamed from: a */
    public final View m6176a(Object obj) {
        View view = null;
        if (obj == null) {
            return null;
        }
        Iterator<Map.Entry<View, C8222d>> it = this.f32086b.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<View, C8222d> next = it.next();
            if (next.getValue().f32100d.equals(obj)) {
                view = next.getKey();
                break;
            }
        }
        if (view != null) {
            m6179a(view);
        }
        return view;
    }

    /* renamed from: a */
    public final void m6179a(View view) {
        if (this.f32086b.remove(view) != null) {
            this.f32089f--;
            if (this.f32086b.size() == 0) {
                mo5960c();
            }
        }
    }

    /* renamed from: a */
    public final void m6178a(View view, Object obj, int i) {
        C8222d dVar = this.f32086b.get(view);
        C8222d dVar2 = dVar;
        if (dVar == null) {
            dVar2 = new C8222d();
            this.f32086b.put(view, dVar2);
            this.f32089f++;
        }
        dVar2.f32097a = i;
        long j = this.f32089f;
        dVar2.f32098b = j;
        dVar2.f32099c = view;
        dVar2.f32100d = obj;
        if (j % 50 == 0) {
            for (Map.Entry<View, C8222d> entry : this.f32086b.entrySet()) {
                if (entry.getValue().f32098b < j - 50) {
                    this.f32088e.add(entry.getKey());
                }
            }
            Iterator<View> it = this.f32088e.iterator();
            while (it.hasNext()) {
                m6179a(it.next());
            }
            this.f32088e.clear();
        }
        if (1 == this.f32086b.size()) {
            mo5959d();
        }
    }

    /* renamed from: b */
    public abstract void mo5961b();

    /* renamed from: c */
    public void mo5960c() {
        this.f32091h.run();
        this.f32092i.removeCallbacksAndMessages(null);
        this.f32093j = false;
        this.f32085a = true;
    }

    /* renamed from: d */
    public void mo5959d() {
        this.f32085a = false;
        m6171g();
    }

    /* renamed from: e */
    public void mo5958e() {
        m6172f();
        this.f32087c = null;
        this.f32085a = true;
    }

    /* renamed from: f */
    public final void m6172f() {
        this.f32086b.clear();
        this.f32092i.removeMessages(0);
        this.f32093j = false;
    }

    /* renamed from: g */
    public final void m6171g() {
        if (!this.f32093j && !this.f32085a) {
            this.f32093j = true;
            this.f32092i.postDelayed(this.f32091h, mo5962a());
        }
    }
}
