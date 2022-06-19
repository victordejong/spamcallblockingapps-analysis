package p193e.p194a.p619d.p637c0.p640x1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioDeviceInfo;
import com.razorpay.AnalyticsConstants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.y;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.c0.x1.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/i.class */
public final class C11550i extends BroadcastReceiver implements i0 {

    /* renamed from: a */
    public boolean f33882a;

    /* renamed from: b */
    public a<s> f33883b;

    /* renamed from: c */
    public boolean f33884c;

    /* renamed from: d */
    public final y f33885d = d.j((p1) null, 1, (Object) null);

    /* renamed from: e */
    public final f f33886e;

    /* renamed from: f */
    public final Context f33887f;

    @e(c = "com.truecaller.voip.util.audio.WiredHeadsetMonitor$onReceive$1", f = "WiredHeadsetMonitor.kt", l = {44}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.x1.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/x1/i$a.class */
    public static final class C11551a extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f33888e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11551a(s1.w.d dVar) {
            super(2, dVar);
            C11550i.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m24500i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11551a(dVar);
        }

        /* renamed from: k */
        public final Object m24499k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11551a(dVar).m24498s(s.a);
        }

        /* renamed from: s */
        public final Object m24498s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f33888e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f33888e = 1;
                if (d.D0(1000L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            a<s> aVar2 = C11550i.this.f33883b;
            if (aVar2 != null) {
                s sVar = (s) aVar2.invoke();
            }
            return s.a;
        }
    }

    public C11550i(f fVar, Context context) {
        l.e(fVar, "uiContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f33886e = fVar;
        this.f33887f = context;
    }

    /* renamed from: a */
    public final void m24501a() {
        AudioDeviceInfo audioDeviceInfo;
        AudioDeviceInfo[] devices = C19291g.m13630F(this.f33887f).getDevices(2);
        l.d(devices, "devices");
        int length = devices.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                audioDeviceInfo = null;
                break;
            }
            audioDeviceInfo = devices[i];
            l.d(audioDeviceInfo, "it");
            int type = audioDeviceInfo.getType();
            if (type == 3 || type == 4 || type == 22) {
                break;
            }
            i++;
        }
        if (audioDeviceInfo != null) {
            z = true;
        }
        this.f33882a = z;
    }

    public f getCoroutineContext() {
        return this.f33886e.plus(this.f33885d);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        m24501a();
        a<s> aVar = this.f33883b;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
        d.w2(this, (f) null, (j0) null, new C11551a(null), 3, (Object) null);
    }
}
