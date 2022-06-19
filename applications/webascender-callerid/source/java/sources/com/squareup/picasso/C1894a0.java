package com.squareup.picasso;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
/* renamed from: com.squareup.picasso.a0 */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a0.class */
public class C1894a0 {

    /* renamed from: a */
    final HandlerThread f5086a;

    /* renamed from: b */
    final AbstractC1905d f5087b;

    /* renamed from: c */
    final Handler f5088c;

    /* renamed from: d */
    long f5089d;

    /* renamed from: e */
    long f5090e;

    /* renamed from: f */
    long f5091f;

    /* renamed from: g */
    long f5092g;

    /* renamed from: h */
    long f5093h;

    /* renamed from: i */
    long f5094i;

    /* renamed from: j */
    long f5095j;

    /* renamed from: k */
    long f5096k;

    /* renamed from: l */
    int f5097l;

    /* renamed from: m */
    int f5098m;

    /* renamed from: n */
    int f5099n;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.squareup.picasso.a0$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a0$a.class */
    public static class HandlerC1895a extends Handler {

        /* renamed from: a */
        private final C1894a0 f5100a;

        /* renamed from: com.squareup.picasso.a0$a$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a0$a$a.class */
        class RunnableC1896a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Message f5101f;

            RunnableC1896a(HandlerC1895a handlerC1895a, Message message) {
                this.f5101f = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unhandled stats message." + this.f5101f.what);
            }
        }

        HandlerC1895a(Looper looper, C1894a0 c1894a0) {
            super(looper);
            this.f5100a = c1894a0;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f5100a.m753j();
            } else if (i == 1) {
                this.f5100a.m752k();
            } else if (i == 2) {
                this.f5100a.m755h(message.arg1);
            } else if (i == 3) {
                this.f5100a.m754i(message.arg1);
            } else if (i != 4) {
                Picasso.HANDLER.post(new RunnableC1896a(this, message));
            } else {
                this.f5100a.m751l((Long) message.obj);
            }
        }
    }

    public C1894a0(AbstractC1905d abstractC1905d) {
        this.f5087b = abstractC1905d;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        this.f5086a = handlerThread;
        handlerThread.start();
        C1908f0.m707h(handlerThread.getLooper());
        this.f5088c = new HandlerC1895a(handlerThread.getLooper(), this);
    }

    /* renamed from: g */
    private static long m756g(int i, long j) {
        return j / i;
    }

    /* renamed from: m */
    private void m750m(Bitmap bitmap, int i) {
        int m706i = C1908f0.m706i(bitmap);
        Handler handler = this.f5088c;
        handler.sendMessage(handler.obtainMessage(i, m706i, 0));
    }

    /* renamed from: a */
    public C1897b0 m762a() {
        return new C1897b0(this.f5087b.m718a(), this.f5087b.size(), this.f5089d, this.f5090e, this.f5091f, this.f5092g, this.f5093h, this.f5094i, this.f5095j, this.f5096k, this.f5097l, this.f5098m, this.f5099n, System.currentTimeMillis());
    }

    /* renamed from: b */
    public void m761b(Bitmap bitmap) {
        m750m(bitmap, 2);
    }

    /* renamed from: c */
    public void m760c(Bitmap bitmap) {
        m750m(bitmap, 3);
    }

    /* renamed from: d */
    public void m759d() {
        this.f5088c.sendEmptyMessage(0);
    }

    /* renamed from: e */
    public void m758e() {
        this.f5088c.sendEmptyMessage(1);
    }

    /* renamed from: f */
    void m757f(long j) {
        Handler handler = this.f5088c;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j)));
    }

    /* renamed from: h */
    void m755h(long j) {
        int i = this.f5098m + 1;
        this.f5098m = i;
        long j2 = this.f5092g + j;
        this.f5092g = j2;
        this.f5095j = m756g(i, j2);
    }

    /* renamed from: i */
    void m754i(long j) {
        this.f5099n++;
        long j2 = this.f5093h + j;
        this.f5093h = j2;
        this.f5096k = m756g(this.f5098m, j2);
    }

    /* renamed from: j */
    void m753j() {
        this.f5089d++;
    }

    /* renamed from: k */
    void m752k() {
        this.f5090e++;
    }

    /* renamed from: l */
    void m751l(Long l) {
        this.f5097l++;
        long longValue = this.f5091f + l.longValue();
        this.f5091f = longValue;
        this.f5094i = m756g(this.f5097l, longValue);
    }

    /* renamed from: n */
    public void m749n() {
        this.f5086a.quit();
    }
}
