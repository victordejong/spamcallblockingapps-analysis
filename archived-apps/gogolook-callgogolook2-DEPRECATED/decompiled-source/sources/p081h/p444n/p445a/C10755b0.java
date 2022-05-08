package p081h.p444n.p445a;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
/* renamed from: h.n.a.b0 */
/* loaded from: classes2-dex2jar.jar:h/n/a/b0.class */
public class C10755b0 {

    /* renamed from: b */
    public final AbstractC10766d f24533b;

    /* renamed from: d */
    public long f24535d;

    /* renamed from: e */
    public long f24536e;

    /* renamed from: f */
    public long f24537f;

    /* renamed from: g */
    public long f24538g;

    /* renamed from: h */
    public long f24539h;

    /* renamed from: i */
    public long f24540i;

    /* renamed from: j */
    public long f24541j;

    /* renamed from: k */
    public long f24542k;

    /* renamed from: l */
    public int f24543l;

    /* renamed from: m */
    public int f24544m;

    /* renamed from: n */
    public int f24545n;

    /* renamed from: a */
    public final HandlerThread f24532a = new HandlerThread("Picasso-Stats", 10);

    /* renamed from: c */
    public final Handler f24534c = new HandlerC10756a(this.f24532a.getLooper(), this);

    /* renamed from: h.n.a.b0$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/b0$a.class */
    public static class HandlerC10756a extends Handler {

        /* renamed from: a */
        public final C10755b0 f24546a;

        /* renamed from: h.n.a.b0$a$a */
        /* loaded from: classes2-dex2jar.jar:h/n/a/b0$a$a.class */
        public class RunnableC10757a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Message f24547a;

            public RunnableC10757a(HandlerC10756a aVar, Message message) {
                this.f24547a = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unhandled stats message." + this.f24547a.what);
            }
        }

        public HandlerC10756a(Looper looper, C10755b0 b0Var) {
            super(looper);
            this.f24546a = b0Var;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f24546a.m10713d();
            } else if (i == 1) {
                this.f24546a.m10712e();
            } else if (i == 2) {
                this.f24546a.m10717b(message.arg1);
            } else if (i == 3) {
                this.f24546a.m10714c(message.arg1);
            } else if (i != 4) {
                C10798u.f24653p.post(new RunnableC10757a(this, message));
            } else {
                this.f24546a.m10719a((Long) message.obj);
            }
        }
    }

    public C10755b0(AbstractC10766d dVar) {
        this.f24533b = dVar;
        this.f24532a.start();
        C10770e0.m10675a(this.f24532a.getLooper());
    }

    /* renamed from: a */
    public static long m10723a(int i, long j) {
        return j / i;
    }

    /* renamed from: a */
    public C10765c0 m10724a() {
        return new C10765c0(this.f24533b.mo10629a(), this.f24533b.size(), this.f24535d, this.f24536e, this.f24537f, this.f24538g, this.f24539h, this.f24540i, this.f24541j, this.f24542k, this.f24543l, this.f24544m, this.f24545n, System.currentTimeMillis());
    }

    /* renamed from: a */
    public void m10722a(long j) {
        Handler handler = this.f24534c;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j)));
    }

    /* renamed from: a */
    public void m10721a(Bitmap bitmap) {
        m10720a(bitmap, 2);
    }

    /* renamed from: a */
    public final void m10720a(Bitmap bitmap, int i) {
        int a = C10770e0.m10676a(bitmap);
        Handler handler = this.f24534c;
        handler.sendMessage(handler.obtainMessage(i, a, 0));
    }

    /* renamed from: a */
    public void m10719a(Long l) {
        this.f24543l++;
        this.f24537f += l.longValue();
        this.f24540i = m10723a(this.f24543l, this.f24537f);
    }

    /* renamed from: b */
    public void m10718b() {
        this.f24534c.sendEmptyMessage(0);
    }

    /* renamed from: b */
    public void m10717b(long j) {
        this.f24544m++;
        this.f24538g += j;
        this.f24541j = m10723a(this.f24544m, this.f24538g);
    }

    /* renamed from: b */
    public void m10716b(Bitmap bitmap) {
        m10720a(bitmap, 3);
    }

    /* renamed from: c */
    public void m10715c() {
        this.f24534c.sendEmptyMessage(1);
    }

    /* renamed from: c */
    public void m10714c(long j) {
        this.f24545n++;
        this.f24539h += j;
        this.f24542k = m10723a(this.f24544m, this.f24539h);
    }

    /* renamed from: d */
    public void m10713d() {
        this.f24535d++;
    }

    /* renamed from: e */
    public void m10712e() {
        this.f24536e++;
    }
}
