package p193e.p194a.p619d.p661w.p662j;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import io.agora.rtc.Constants;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p661w.C12130i;
import q3.a.i0;
import q3.a.j;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenNotAnswered$1", f = "ConnectInvitation.kt", l = {Constants.ERR_WATERMARKR_INFO}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/l.class */
public final class C12171l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35556e;

    /* renamed from: f */
    public final /* synthetic */ C12153h f35557f;

    @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenNotAnswered$1$answered$1", f = "ConnectInvitation.kt", l = {128}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.j.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/l$a.class */
    public static final class C12172a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f35558e;

        @e(c = "com.truecaller.voip.invitation.action.ConnectInvitationImpl$endWhenNotAnswered$1$answered$1$1", f = "ConnectInvitation.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.w.j.l$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/l$a$a.class */
        public static final class C12173a extends i implements p<AbstractC12114h, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f35560e;

            public C12173a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m23508i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C12173a c12173a = new C12173a(dVar);
                c12173a.f35560e = obj;
                return c12173a;
            }

            /* renamed from: k */
            public final Object m23507k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return Boolean.valueOf(((AbstractC12114h) obj) instanceof AbstractC12114h.AbstractC12116b);
            }

            /* renamed from: s */
            public final Object m23506s(Object obj) {
                C25225a.m3932a3(obj);
                return Boolean.valueOf(((AbstractC12114h) this.f35560e) instanceof AbstractC12114h.AbstractC12116b);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12172a(d dVar) {
            super(2, dVar);
            C12171l.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23511i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12172a(dVar);
        }

        /* renamed from: k */
        public final Object m23510k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12172a(dVar).m23509s(s.a);
        }

        /* renamed from: s */
        public final Object m23509s(Object obj) {
            a aVar = a.a;
            int i = this.f35558e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12130i c12130i = C12171l.this.f35557f.f35511e;
                C12173a c12173a = new C12173a(null);
                this.f35558e = 1;
                if (s1.a.a.a.v0.f.d.N0(c12130i, c12173a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12171l(C12153h c12153h, d dVar) {
        super(2, dVar);
        this.f35557f = c12153h;
    }

    /* renamed from: i */
    public final d<s> m23514i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12171l(this.f35557f, dVar);
    }

    /* renamed from: k */
    public final Object m23513k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12171l(this.f35557f, dVar).m23512s(s.a);
    }

    /* renamed from: s */
    public final Object m23512s(Object obj) {
        a aVar = a.a;
        int i = this.f35556e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12172a c12172a = new C12172a(null);
            this.f35556e = 1;
            Object c = j.c((long) DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, c12172a, this);
            obj = c;
            if (c == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Boolean bool = (Boolean) obj;
        if (!(bool != null ? bool.booleanValue() : false)) {
            this.f35557f.f35514h.mo23505e(AbstractC12114h.AbstractC12116b.C12126j.f35462b);
        }
        return s.a;
    }
}
