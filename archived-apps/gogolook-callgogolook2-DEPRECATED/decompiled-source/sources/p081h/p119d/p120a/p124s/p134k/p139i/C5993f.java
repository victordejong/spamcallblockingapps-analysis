package p081h.p119d.p120a.p124s.p134k.p139i;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.UUID;
import p081h.p119d.p120a.C5770h;
import p081h.p119d.p120a.C5773i;
import p081h.p119d.p120a.C5776l;
import p081h.p119d.p120a.C5780o;
import p081h.p119d.p120a.p122q.C5796a;
import p081h.p119d.p120a.p124s.AbstractC5805b;
import p081h.p119d.p120a.p124s.AbstractC5806c;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.EnumC5827b;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.C5949a;
import p081h.p119d.p120a.p145w.p146i.AbstractC6063c;
import p081h.p119d.p120a.p145w.p147j.AbstractC6078h;
/* renamed from: h.d.a.s.k.i.f */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/f.class */
public class C5993f {

    /* renamed from: a */
    public final AbstractC5996c f14955a;

    /* renamed from: b */
    public final C5796a f14956b;

    /* renamed from: c */
    public final Handler f14957c;

    /* renamed from: d */
    public boolean f14958d;

    /* renamed from: e */
    public boolean f14959e;

    /* renamed from: f */
    public C5770h<C5796a, C5796a, Bitmap, Bitmap> f14960f;

    /* renamed from: g */
    public C5995b f14961g;

    /* renamed from: h */
    public boolean f14962h;

    /* renamed from: h.d.a.s.k.i.f$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/f$b.class */
    public static class C5995b extends AbstractC6078h<Bitmap> {

        /* renamed from: d */
        public final Handler f14963d;

        /* renamed from: e */
        public final int f14964e;

        /* renamed from: f */
        public final long f14965f;

        /* renamed from: g */
        public Bitmap f14966g;

        public C5995b(Handler handler, int i, long j) {
            this.f14963d = handler;
            this.f14964e = i;
            this.f14965f = j;
        }

        /* renamed from: a */
        public void m24065a(Bitmap bitmap, AbstractC6063c<? super Bitmap> cVar) {
            this.f14966g = bitmap;
            this.f14963d.sendMessageAtTime(this.f14963d.obtainMessage(1, this), this.f14965f);
        }

        @Override // p081h.p119d.p120a.p145w.p147j.AbstractC6082k
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo2507a(Object obj, AbstractC6063c cVar) {
            m24065a((Bitmap) obj, (AbstractC6063c<? super Bitmap>) cVar);
        }

        /* renamed from: b */
        public Bitmap m24063b() {
            return this.f14966g;
        }
    }

    /* renamed from: h.d.a.s.k.i.f$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/f$c.class */
    public interface AbstractC5996c {
        /* renamed from: a */
        void mo24062a(int i);
    }

    /* renamed from: h.d.a.s.k.i.f$d */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/f$d.class */
    public class C5997d implements Handler.Callback {
        public C5997d() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 1) {
                C5993f.this.m24070a((C5995b) message.obj);
                return true;
            } else if (i != 2) {
                return false;
            } else {
                C5776l.m24480a((C5995b) message.obj);
                return false;
            }
        }
    }

    /* renamed from: h.d.a.s.k.i.f$e */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/f$e.class */
    public static class C5998e implements AbstractC5806c {

        /* renamed from: a */
        public final UUID f14968a;

        public C5998e() {
            this(UUID.randomUUID());
        }

        public C5998e(UUID uuid) {
            this.f14968a = uuid;
        }

        @Override // p081h.p119d.p120a.p124s.AbstractC5806c
        /* renamed from: a */
        public void mo23889a(MessageDigest messageDigest) throws UnsupportedEncodingException {
            throw new UnsupportedOperationException("Not implemented");
        }

        @Override // p081h.p119d.p120a.p124s.AbstractC5806c
        public boolean equals(Object obj) {
            if (obj instanceof C5998e) {
                return ((C5998e) obj).f14968a.equals(this.f14968a);
            }
            return false;
        }

        @Override // p081h.p119d.p120a.p124s.AbstractC5806c
        public int hashCode() {
            return this.f14968a.hashCode();
        }
    }

    public C5993f(Context context, AbstractC5996c cVar, C5796a aVar, int i, int i2) {
        this(cVar, aVar, null, m24072a(context, aVar, i, i2, C5776l.m24484a(context).m24468e()));
    }

    public C5993f(AbstractC5996c cVar, C5796a aVar, Handler handler, C5770h<C5796a, C5796a, Bitmap, Bitmap> hVar) {
        this.f14958d = false;
        this.f14959e = false;
        Handler handler2 = handler == null ? new Handler(Looper.getMainLooper(), new C5997d()) : handler;
        this.f14955a = cVar;
        this.f14956b = aVar;
        this.f14957c = handler2;
        this.f14960f = hVar;
    }

    /* renamed from: a */
    public static C5770h<C5796a, C5796a, Bitmap, Bitmap> m24072a(Context context, C5796a aVar, int i, int i2, AbstractC5856c cVar) {
        C6001h hVar = new C6001h(cVar);
        C5999g gVar = new C5999g();
        AbstractC5805b a = C5949a.m24127a();
        C5773i a2 = C5776l.m24470c(context).m24455a(gVar, C5796a.class).m24434a((C5780o.C5783c) aVar).m24432a(Bitmap.class);
        a2.m24517a(a);
        a2.mo24503a((AbstractC5808e) hVar);
        a2.mo24499a(true);
        a2.mo24502a(EnumC5827b.NONE);
        a2.mo24495b(i, i2);
        return a2;
    }

    /* renamed from: a */
    public void m24073a() {
        m24066e();
        C5995b bVar = this.f14961g;
        if (bVar != null) {
            C5776l.m24480a(bVar);
            this.f14961g = null;
        }
        this.f14962h = true;
    }

    /* renamed from: a */
    public void m24071a(AbstractC5810g<Bitmap> gVar) {
        if (gVar != null) {
            this.f14960f = this.f14960f.mo24498a(gVar);
            return;
        }
        throw new NullPointerException("Transformation must not be null");
    }

    /* renamed from: a */
    public void m24070a(C5995b bVar) {
        if (this.f14962h) {
            this.f14957c.obtainMessage(2, bVar).sendToTarget();
            return;
        }
        C5995b bVar2 = this.f14961g;
        this.f14961g = bVar;
        this.f14955a.mo24062a(bVar.f14964e);
        if (bVar2 != null) {
            this.f14957c.obtainMessage(2, bVar2).sendToTarget();
        }
        this.f14959e = false;
        m24068c();
    }

    /* renamed from: b */
    public Bitmap m24069b() {
        C5995b bVar = this.f14961g;
        return bVar != null ? bVar.m24063b() : null;
    }

    /* renamed from: c */
    public final void m24068c() {
        if (this.f14958d && !this.f14959e) {
            this.f14959e = true;
            long uptimeMillis = SystemClock.uptimeMillis();
            long f = this.f14956b.m24367f();
            this.f14956b.m24377a();
            this.f14960f.mo24504a(new C5998e()).m24512b((C5770h<C5796a, C5796a, Bitmap, Bitmap>) new C5995b(this.f14957c, this.f14956b.m24370c(), uptimeMillis + f));
        }
    }

    /* renamed from: d */
    public void m24067d() {
        if (!this.f14958d) {
            this.f14958d = true;
            this.f14962h = false;
            m24068c();
        }
    }

    /* renamed from: e */
    public void m24066e() {
        this.f14958d = false;
    }
}
