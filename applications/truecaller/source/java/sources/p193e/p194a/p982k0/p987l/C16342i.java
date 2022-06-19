package p193e.p194a.p982k0.p987l;

import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
import java.util.Timer;
import java.util.TimerTask;
import javax.inject.Inject;
import p193e.p194a.p1129p5.p1135v0.AbstractC19331a;
import p193e.p194a.p1129p5.p1135v0.AbstractC19335b;
import p193e.p194a.p982k0.p987l.AbstractC16340h;
import s1.z.c.l;
/* renamed from: e.a.k0.l.i */
/* loaded from: classes7-dex2jar.jar:e/a/k0/l/i.class */
public final class C16342i implements AbstractC16340h {

    /* renamed from: a */
    public Timer f45991a;

    /* renamed from: b */
    public AbstractC16340h.AbstractC16341a f45992b;

    /* renamed from: c */
    public final AbstractC19335b f45993c;

    /* renamed from: e.a.k0.l.i$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/l/i$a.class */
    public static final class C16343a extends TimerTask {
        public C16343a() {
            C16342i.this = r4;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            C16342i c16342i = C16342i.this;
            if (c16342i.f45993c.mo13442d() instanceof AbstractC19331a.C19332a) {
                AbstractC16340h.AbstractC16341a abstractC16341a = c16342i.f45992b;
                if (abstractC16341a != null) {
                    abstractC16341a.mo17517c();
                }
                c16342i.stop();
            }
        }
    }

    @Inject
    public C16342i(AbstractC19335b abstractC19335b) {
        l.e(abstractC19335b, "telephonyManager");
        this.f45993c = abstractC19335b;
    }

    @Override // p193e.p194a.p982k0.p987l.AbstractC16340h
    /* renamed from: a */
    public void mo17516a(AbstractC16340h.AbstractC16341a abstractC16341a) {
        synchronized (this) {
            l.e(abstractC16341a, "listener");
            stop();
            this.f45992b = abstractC16341a;
            Timer timer = new Timer("SafeRecordingCloser", false);
            timer.schedule(new C16343a(), DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD, DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD);
            this.f45991a = timer;
        }
    }

    @Override // p193e.p194a.p982k0.p987l.AbstractC16340h
    public void stop() {
        this.f45992b = null;
        Timer timer = this.f45991a;
        if (timer != null) {
            timer.cancel();
        }
        this.f45991a = null;
    }
}
