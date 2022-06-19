package p193e.p194a.p982k0.p989n.p991b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
import com.razorpay.AnalyticsConstants;
import com.truecaller.callrecording.C3624R;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.callrecording.p154ui.bubble.BubbleLayout;
import com.truecaller.callrecording.p154ui.bubble.BubblesService;
import java.util.Objects;
import java.util.Timer;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1872x.p1873a.C27062a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p372b0.p430q.C8574c0;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p982k0.p983a.AbstractC16285j;
import p193e.p194a.p982k0.p989n.p991b.AbstractC16378j;
import p193e.p194a.p982k0.p989n.p991b.C16372h;
import p193e.p194a.p982k0.p989n.p991b.C16375i;
import p193e.p194a.p982k0.p989n.p992c.AbstractC16399g;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.k0.n.b.k */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/k.class */
public final class C16380k implements AbstractC16378j, BubbleLayout.AbstractC3633c, i0 {

    /* renamed from: a */
    public C16375i f46060a;

    /* renamed from: b */
    public BubbleLayout f46061b;

    /* renamed from: c */
    public AbstractC16399g f46062c;

    /* renamed from: d */
    public Timer f46063d;

    /* renamed from: e */
    public final C16381a f46064e = new C16381a();

    /* renamed from: f */
    public final f f46065f;

    /* renamed from: g */
    public final f f46066g;

    /* renamed from: h */
    public final Context f46067h;

    /* renamed from: i */
    public final CallRecordingManager f46068i;

    /* renamed from: j */
    public final AbstractC16285j f46069j;

    /* renamed from: k */
    public final TelephonyManager f46070k;

    /* renamed from: e.a.k0.n.b.k$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/k$a.class */
    public static final class C16381a extends BroadcastReceiver {
        public C16381a() {
            C16380k.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(intent, "intent");
            int intExtra = intent.getIntExtra("ExtraPosY", 0);
            C16380k c16380k = C16380k.this;
            C16375i c16375i = c16380k.f46060a;
            if (c16375i != null) {
                int intValue = ((Number) c16380k.m17489d(intExtra).b).intValue();
                if (!c16375i.f46052b) {
                    return;
                }
                final BubblesService bubblesService = c16375i.f46053c;
                if (bubblesService.f10801b.isEmpty()) {
                    return;
                }
                final BubbleLayout bubbleLayout = bubblesService.f10801b.get(0);
                final WindowManager.LayoutParams m35735a = bubblesService.m35735a(bubbleLayout.getViewParams().x, intValue);
                bubbleLayout.setViewParams(m35735a);
                bubblesService.f10802c.post(new Runnable() { // from class: e.a.k0.n.b.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        BubblesService bubblesService2 = BubblesService.this;
                        BubbleLayout bubbleLayout2 = bubbleLayout;
                        WindowManager.LayoutParams layoutParams = m35735a;
                        Objects.requireNonNull(bubblesService2);
                        if (bubbleLayout2.isAttachedToWindow()) {
                            bubblesService2.m35734b().updateViewLayout(bubbleLayout2, layoutParams);
                        }
                    }
                });
            }
        }
    }

    @e(c = "com.truecaller.callrecording.ui.bubble.CallRecordingFloatingButtonManagerImpl$dismissCallRecordingButton$1$1", f = "CallRecordingFloatingButtonManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k0.n.b.k$b */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/k$b.class */
    public static final class C16382b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ BubbleLayout f46072e;

        /* renamed from: f */
        public final /* synthetic */ C16380k f46073f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16382b(BubbleLayout bubbleLayout, d dVar, C16380k c16380k) {
            super(2, dVar);
            this.f46072e = bubbleLayout;
            this.f46073f = c16380k;
        }

        /* renamed from: i */
        public final d<s> m17488i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16382b(this.f46072e, dVar, this.f46073f);
        }

        /* renamed from: k */
        public final Object m17487k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            BubbleLayout bubbleLayout = this.f46072e;
            C16380k c16380k = this.f46073f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            C16375i c16375i = c16380k.f46060a;
            if (c16375i != null) {
                c16375i.m17496b(bubbleLayout);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m17486s(Object obj) {
            C25225a.m3932a3(obj);
            C16375i c16375i = this.f46073f.f46060a;
            if (c16375i != null) {
                c16375i.m17496b(this.f46072e);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.callrecording.ui.bubble.CallRecordingFloatingButtonManagerImpl$maybeShowCallRecordingButton$1", f = "CallRecordingFloatingButtonManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k0.n.b.k$c */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/k$c.class */
    public static final class C16383c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f46075f;

        /* renamed from: g */
        public final /* synthetic */ AbstractC16378j.AbstractC16379a f46076g;

        /* renamed from: e.a.k0.n.b.k$c$a */
        /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/k$c$a.class */
        public static final class C16384a implements C16372h.AbstractC16374b {
            public C16384a() {
                C16383c.this = r4;
            }

            @Override // p193e.p194a.p982k0.p989n.p991b.C16372h.AbstractC16374b
            /* renamed from: a */
            public final boolean mo17482a() {
                return !C16380k.this.f46068i.mo17595b();
            }
        }

        /* renamed from: e.a.k0.n.b.k$c$b */
        /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/k$c$b.class */
        public static final class C16385b implements AbstractC16391p {
            public C16385b() {
                C16383c.this = r4;
            }

            @Override // p193e.p194a.p982k0.p989n.p991b.AbstractC16391p
            /* renamed from: a */
            public void mo17476a() {
                C16383c c16383c = C16383c.this;
                C16380k c16380k = C16380k.this;
                String str = c16383c.f46075f;
                AbstractC16378j.AbstractC16379a abstractC16379a = c16383c.f46076g;
                int i = C3624R.layout.floating_call_recording_button;
                LayoutInflater from = LayoutInflater.from(c16380k.f46067h);
                l.d(from, "LayoutInflater.from(context)");
                View inflate = C17422k.m16050u0(from, false).inflate(i, (ViewGroup) null);
                Objects.requireNonNull(inflate, "null cannot be cast to non-null type com.truecaller.callrecording.ui.bubble.BubbleLayout");
                BubbleLayout bubbleLayout = (BubbleLayout) inflate;
                c16380k.f46061b = bubbleLayout;
                View findViewById = bubbleLayout.findViewById(C3624R.C3626id.call_recording_control);
                Objects.requireNonNull(findViewById, "null cannot be cast to non-null type com.truecaller.callrecording.ui.floatingbutton.RecordingFloatingButtonControl");
                AbstractC16399g abstractC16399g = (AbstractC16399g) findViewById;
                abstractC16399g.setPhoneNumber(str);
                abstractC16399g.setErrorListener(new C16390o(c16380k, str));
                c16380k.f46062c = abstractC16399g;
                bubbleLayout.setOnBubbleClickListener(c16380k);
                bubbleLayout.setOnBubbleRemoveListener(new C16388m(c16380k, str, abstractC16379a));
                bubbleLayout.setOnBubbleMovedListener(new C16389n(c16380k, str, abstractC16379a));
                k<Integer, Integer> m17489d = c16380k.m17489d(c16380k.f46069j.mo17619k());
                int intValue = ((Number) m17489d.a).intValue();
                int intValue2 = ((Number) m17489d.b).intValue();
                C16375i c16375i = c16380k.f46060a;
                if (c16375i != null) {
                    BubbleLayout bubbleLayout2 = c16380k.f46061b;
                    if (c16375i.f46052b) {
                        BubblesService bubblesService = c16375i.f46053c;
                        WindowManager.LayoutParams m35735a = bubblesService.m35735a(intValue, intValue2);
                        bubbleLayout2.setWindowManager(bubblesService.m35734b());
                        bubbleLayout2.setViewParams(m35735a);
                        bubbleLayout2.setLayoutCoordinator(bubblesService.f10805f);
                        bubblesService.f10801b.add(bubbleLayout2);
                        bubblesService.f10802c.post(new RunnableC16366b(bubblesService, bubbleLayout2));
                    }
                }
                C27062a.m968b(c16380k.f46067h).m967c(c16380k.f46064e, new IntentFilter("BroadcastCallerIdPosY"));
                if (abstractC16379a != null) {
                    abstractC16379a.mo17495a();
                }
                Timer timer = new Timer("SafeRecordingCloser", false);
                timer.schedule(new C16387l(c16380k), DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD, DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD);
                c16380k.f46063d = timer;
                C16380k.this.f46068i.mo17601G();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16383c(String str, AbstractC16378j.AbstractC16379a abstractC16379a, d dVar) {
            super(2, dVar);
            C16380k.this = r5;
            this.f46075f = str;
            this.f46076g = abstractC16379a;
        }

        /* renamed from: i */
        public final d<s> m17485i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16383c(this.f46075f, this.f46076g, dVar);
        }

        /* renamed from: k */
        public final Object m17484k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16383c(this.f46075f, this.f46076g, dVar).m17483s(s.a);
        }

        /* renamed from: s */
        public final Object m17483s(Object obj) {
            s sVar = s.a;
            C25225a.m3932a3(obj);
            if (!C16380k.this.f46068i.mo17599I() || !C8574c0.m28349j(this.f46075f, C8604n.m28241d(C16380k.this.f46067h))) {
                AbstractC16378j.AbstractC16379a abstractC16379a = this.f46076g;
                if (abstractC16379a != null) {
                    abstractC16379a.mo17495a();
                }
                return sVar;
            }
            C16385b c16385b = new C16385b();
            C16380k c16380k = C16380k.this;
            C16375i.C16377b c16377b = new C16375i.C16377b(c16380k.f46067h);
            int i = C3624R.layout.bubble_trash_layout;
            C16375i c16375i = c16377b.f46059a;
            c16375i.f46054d = i;
            c16375i.f46055e = c16385b;
            c16375i.f46056f = new C16384a();
            c16375i.f46051a.bindService(new Intent(c16375i.f46051a, BubblesService.class), c16375i.f46057g, 1);
            c16380k.f46060a = c16375i;
            return sVar;
        }
    }

    @e(c = "com.truecaller.callrecording.ui.bubble.CallRecordingFloatingButtonManagerImpl$showBrandingView$1", f = "CallRecordingFloatingButtonManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.k0.n.b.k$d */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/k$d.class */
    public static final class C16386d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ boolean f46080f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16386d(boolean z, d dVar) {
            super(2, dVar);
            C16380k.this = r5;
            this.f46080f = z;
        }

        /* renamed from: i */
        public final d<s> m17481i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16386d(this.f46080f, dVar);
        }

        /* renamed from: k */
        public final Object m17480k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16380k c16380k = C16380k.this;
            boolean z = this.f46080f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            AbstractC16399g abstractC16399g = c16380k.f46062c;
            if (abstractC16399g != null) {
                abstractC16399g.mo17452mc(z);
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m17479s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC16399g abstractC16399g = C16380k.this.f46062c;
            if (abstractC16399g != null) {
                abstractC16399g.mo17452mc(this.f46080f);
            }
            return s.a;
        }
    }

    @Inject
    public C16380k(@Named("UI") f fVar, @Named("CPU") f fVar2, Context context, CallRecordingManager callRecordingManager, AbstractC16285j abstractC16285j, TelephonyManager telephonyManager) {
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(callRecordingManager, "callRecordingManager");
        l.e(abstractC16285j, "callRecordingMainModuleFacade");
        l.e(telephonyManager, "telephonyManager");
        this.f46065f = fVar;
        this.f46066g = fVar2;
        this.f46067h = context;
        this.f46068i = callRecordingManager;
        this.f46069j = abstractC16285j;
        this.f46070k = telephonyManager;
    }

    @Override // com.truecaller.callrecording.p154ui.bubble.BubbleLayout.AbstractC3633c
    /* renamed from: B1 */
    public boolean mo17494B1() {
        AbstractC16399g abstractC16399g = this.f46062c;
        return abstractC16399g != null ? abstractC16399g.mo17454B1() : false;
    }

    @Override // com.truecaller.callrecording.p154ui.bubble.BubbleLayout.AbstractC3633c
    /* renamed from: C1 */
    public void mo17493C1(BubbleLayout bubbleLayout) {
        AbstractC16399g abstractC16399g = this.f46062c;
        if (abstractC16399g != null) {
            abstractC16399g.mo17452mc(true);
            abstractC16399g.mo17453Vi();
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p991b.AbstractC16378j
    /* renamed from: a */
    public void mo17492a(boolean z) {
        if (this.f46068i.mo17599I()) {
            s1.a.a.a.v0.f.d.w2(this, this.f46065f, (j0) null, new C16386d(z, null), 2, (Object) null);
        }
    }

    @Override // p193e.p194a.p982k0.p989n.p991b.AbstractC16378j
    /* renamed from: b */
    public void mo17491b(String str, AbstractC16378j.AbstractC16379a abstractC16379a) {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16383c(str, abstractC16379a, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p982k0.p989n.p991b.AbstractC16378j
    /* renamed from: c */
    public void mo17490c() {
        BubbleLayout bubbleLayout = this.f46061b;
        if (bubbleLayout != null) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16382b(bubbleLayout, null, this), 3, (Object) null);
        }
    }

    /* renamed from: d */
    public final k<Integer, Integer> m17489d(int i) {
        float dimension = this.f46067h.getResources().getDimension(C3624R.dimen.call_recording_floating_button_padding);
        float dimension2 = this.f46067h.getResources().getDimension(C3624R.dimen.call_recording_floating_button_width);
        float dimension3 = this.f46067h.getResources().getDimension(C3624R.dimen.call_recording_floating_button_height);
        Resources resources = this.f46067h.getResources();
        l.d(resources, "context.resources");
        return new k<>(Integer.valueOf((int) ((resources.getDisplayMetrics().widthPixels - dimension2) - dimension)), Integer.valueOf(Math.max(0, (int) ((i - dimension3) - (dimension * 2)))));
    }

    public f getCoroutineContext() {
        return this.f46066g;
    }
}
