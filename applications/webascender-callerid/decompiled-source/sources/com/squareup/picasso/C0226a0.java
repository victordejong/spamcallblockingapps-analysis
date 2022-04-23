package com.squareup.picasso;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
/* renamed from: com.squareup.picasso.a0 */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a0.class */
class C0226a0 {

    /* renamed from: a */
    final HandlerThread f407a;

    /* renamed from: b */
    final AbstractC0237d f408b;

    /* renamed from: c */
    final Handler f409c;

    /* renamed from: d */
    long f410d;

    /* renamed from: e */
    long f411e;

    /* renamed from: f */
    long f412f;

    /* renamed from: g */
    long f413g;

    /* renamed from: h */
    long f414h;

    /* renamed from: i */
    long f415i;

    /* renamed from: j */
    long f416j;

    /* renamed from: k */
    long f417k;

    /* renamed from: l */
    int f418l;

    /* renamed from: m */
    int f419m;

    /* renamed from: n */
    int f420n;

    /* renamed from: com.squareup.picasso.a0$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a0$a.class */
    private static class HandlerC0227a extends Handler {

        /* renamed from: a */
        private final C0226a0 f421a;

        /* renamed from: com.squareup.picasso.a0$a$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a0$a$a.class */
        class RunnableC0228a implements Runnable {

            /* renamed from: f */
            final /* synthetic */ Message f422f;

            RunnableC0228a(HandlerC0227a aVar, Message message) {
                this.f422f = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unhandled stats message." + this.f422f.what);
            }
        }

        HandlerC0227a(Looper looper, C0226a0 a0Var) {
            super(looper);
            this.f421a = a0Var;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.f421a.m753j();
            } else if (i == 1) {
                this.f421a.m752k();
            } else if (i == 2) {
                this.f421a.m755h(message.arg1);
            } else if (i == 3) {
                this.f421a.m754i(message.arg1);
            } else if (i != 4) {
                Picasso.HANDLER.post(new RunnableC0228a(this, message));
            } else {
                this.f421a.m751l((Long) message.obj);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0226a0(AbstractC0237d dVar) {
        this.f408b = dVar;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        this.f407a = handlerThread;
        handlerThread.start();
        C0240f0.m707h(handlerThread.getLooper());
        this.f409c = new HandlerC0227a(handlerThread.getLooper(), this);
    }

    /* renamed from: g */
    private static long m756g(int i, long j) {
        return j / i;
    }

    /* renamed from: m */
    private void m750m(Bitmap bitmap, int i) {
        int i2 = C0240f0.m706i(bitmap);
        Handler handler = this.f409c;
        handler.sendMessage(handler.obtainMessage(i, i2, 0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public C0229b0 m762a() {
        return new C0229b0(this.f408b.m718a(), this.f408b.size(), this.f410d, this.f411e, this.f412f, this.f413g, this.f414h, this.f415i, this.f416j, this.f417k, this.f418l, this.f419m, this.f420n, System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m761b(Bitmap bitmap) {
        m750m(bitmap, 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m760c(Bitmap bitmap) {
        m750m(bitmap, 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m759d() {
        this.f409c.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m758e() {
        this.f409c.sendEmptyMessage(1);
    }

    /* renamed from: f */
    void m757f(long j) {
        Handler handler = this.f409c;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j)));
    }

    /* renamed from: h */
    void m755h(long j) {
        int i = this.f419m + 1;
        this.f419m = i;
        long j2 = this.f413g + j;
        this.f413g = j2;
        this.f416j = m756g(i, j2);
    }

    /* renamed from: i */
    void m754i(long j) {
        this.f420n++;
        long j2 = this.f414h + j;
        this.f414h = j2;
        this.f417k = m756g(this.f419m, j2);
    }

    /* renamed from: j */
    void m753j() {
        this.f410d++;
    }

    /* renamed from: k */
    void m752k() {
        this.f411e++;
    }

    /* renamed from: l */
    void m751l(Long l) {
        this.f418l++;
        long longValue = this.f412f + l.longValue();
        this.f412f = longValue;
        this.f415i = m756g(this.f418l, longValue);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public void m749n() {
        this.f407a.quit();
    }
}
