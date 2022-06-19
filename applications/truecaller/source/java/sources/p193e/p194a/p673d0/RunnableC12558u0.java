package p193e.p194a.p673d0;

import s1.z.b.a;
/* renamed from: e.a.d0.u0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/u0.class */
public final class RunnableC12558u0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C12561v0 f36666a;

    /* renamed from: b */
    public final /* synthetic */ a f36667b;

    /* renamed from: e.a.d0.u0$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d0/u0$a.class */
    public static final class RunnableC12559a implements Runnable {
        public RunnableC12559a() {
            RunnableC12558u0.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            RunnableC12558u0.this.f36667b.invoke();
        }
    }

    public RunnableC12558u0(C12561v0 c12561v0, a aVar) {
        this.f36666a = c12561v0;
        this.f36667b = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f36666a.f36688c.getCallState() == 0) {
            this.f36666a.f36686a.postDelayed(new RunnableC12559a(), 5000L);
        } else {
            this.f36666a.f36686a.postDelayed(this, 10000L);
        }
    }
}
