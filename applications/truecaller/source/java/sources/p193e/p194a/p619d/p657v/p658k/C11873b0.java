package p193e.p194a.p619d.p657v.p658k;

import com.truecaller.voip.groupcall.action.InviteResult;
import io.agora.rtc.Constants;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p663x.p664q.AbstractC12236h;
import p193e.p194a.p619d.p663x.p665r.AbstractC12261h;
import q3.a.b3.c;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.x2.i1;
import s1.s;
import s1.u.t;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.b0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/b0.class */
public final class C11873b0 implements i0, AbstractC11861a0 {

    /* renamed from: a */
    public final C11464r<Map<Integer, AbstractC12015z>> f34861a = new C11464r<>(t.a);

    /* renamed from: b */
    public final c f34862b;

    /* renamed from: c */
    public final AbstractC11598i f34863c;

    /* renamed from: d */
    public final AbstractC12261h f34864d;

    /* renamed from: e */
    public final AbstractC11556y0 f34865e;

    /* renamed from: f */
    public final AbstractC11963n0 f34866f;

    /* renamed from: g */
    public final AbstractC11405f0 f34867g;

    /* renamed from: h */
    public final AbstractC12236h f34868h;

    /* renamed from: i */
    public final /* synthetic */ i0 f34869i;

    @e(c = "com.truecaller.voip.groupcall.action.InviteToGroupCallImpl$inviteByNumbers$1", f = "InviteToGroupCall.kt", l = {50}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.b0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/b0$a.class */
    public static final class C11874a extends i implements p<i0, d<? super InviteResult>, Object> {

        /* renamed from: e */
        public int f34870e;

        /* renamed from: g */
        public final /* synthetic */ Set f34872g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11874a(Set set, d dVar) {
            super(2, dVar);
            C11873b0.this = r5;
            this.f34872g = set;
        }

        /* renamed from: i */
        public final d<s> m23903i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11874a(this.f34872g, dVar);
        }

        /* renamed from: k */
        public final Object m23902k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11874a(this.f34872g, dVar).m23901s(s.a);
        }

        /* renamed from: s */
        public final Object m23901s(Object obj) {
            a aVar = a.a;
            int i = this.f34870e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11873b0 c11873b0 = C11873b0.this;
                Set<String> set = this.f34872g;
                this.f34870e = 1;
                Object m23907b = c11873b0.m23907b(set, this);
                obj = m23907b;
                if (m23907b == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.InviteToGroupCallImpl", f = "InviteToGroupCall.kt", l = {229, 76, 79, 95, 125}, m = "inviteByNumbersInternal")
    /* renamed from: e.a.d.v.k.b0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/b0$b.class */
    public static final class C11875b extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34873d;

        /* renamed from: e */
        public int f34874e;

        /* renamed from: g */
        public Object f34876g;

        /* renamed from: h */
        public Object f34877h;

        /* renamed from: i */
        public Object f34878i;

        /* renamed from: j */
        public Object f34879j;

        /* renamed from: k */
        public Object f34880k;

        /* renamed from: l */
        public Object f34881l;

        /* renamed from: m */
        public Object f34882m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11875b(d dVar) {
            super(dVar);
            C11873b0.this = r4;
        }

        /* renamed from: s */
        public final Object m23900s(Object obj) {
            this.f34873d = obj;
            this.f34874e |= Integer.MIN_VALUE;
            return C11873b0.this.m23907b(null, this);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.InviteToGroupCallImpl", f = "InviteToGroupCall.kt", l = {Constants.ERR_MODULE_NOT_FOUND, 167, 175, 192}, m = "inviteInternal")
    /* renamed from: e.a.d.v.k.b0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/b0$c.class */
    public static final class C11876c extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34883d;

        /* renamed from: e */
        public int f34884e;

        /* renamed from: g */
        public Object f34886g;

        /* renamed from: h */
        public Object f34887h;

        /* renamed from: i */
        public Object f34888i;

        /* renamed from: j */
        public Object f34889j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11876c(d dVar) {
            super(dVar);
            C11873b0.this = r4;
        }

        /* renamed from: s */
        public final Object m23899s(Object obj) {
            this.f34883d = obj;
            this.f34884e |= Integer.MIN_VALUE;
            return C11873b0.this.m23906c(null, this);
        }
    }

    @Inject
    public C11873b0(i0 i0Var, c cVar, AbstractC11598i abstractC11598i, AbstractC12261h abstractC12261h, AbstractC11556y0 abstractC11556y0, AbstractC11963n0 abstractC11963n0, AbstractC11405f0 abstractC11405f0, AbstractC12236h abstractC12236h) {
        l.e(i0Var, "coroutineScope");
        l.e(cVar, "remotePeersMutex");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(abstractC12261h, "rtmChannel");
        l.e(abstractC11556y0, "idProvider");
        l.e(abstractC11963n0, "manageInviteOwners");
        l.e(abstractC11405f0, "analyticsUtil");
        l.e(abstractC12236h, "rtcManager");
        this.f34869i = i0Var;
        this.f34862b = cVar;
        this.f34863c = abstractC11598i;
        this.f34864d = abstractC12261h;
        this.f34865e = abstractC11556y0;
        this.f34866f = abstractC11963n0;
        this.f34867g = abstractC11405f0;
        this.f34868h = abstractC12236h;
    }

    /* JADX WARN: Code restructure failed: missing block: B:320:0x07f4, code lost:
        r0 = s1.u.i.V0(r0);
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:322:0x07fd, code lost:
        r0 = r12.f34861a;
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:324:0x0806, code lost:
        r8.f34876g = r12;
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:326:0x080e, code lost:
        r8.f34877h = r13;
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:328:0x0816, code lost:
        r8.f34878i = r6;
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:330:0x081d, code lost:
        r8.f34879j = r14;
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:332:0x0825, code lost:
        r8.f34880k = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:334:0x082c, code lost:
        r8.f34881l = null;
        r8.f34882m = null;
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:336:0x0837, code lost:
        r8.f34874e = 5;
        r0 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:340:0x084c, code lost:
        if (p193e.p194a.p1129p5.p1132s0.C19291g.m13580V1(r0, r0, r8) != r0) goto L343;
     */
    /* JADX WARN: Code restructure failed: missing block: B:342:0x0851, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:343:0x0852, code lost:
        r7 = r6;
        r6 = r12;
        r12 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x0979, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x097b, code lost:
        r7 = r6;
        r6 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x02d6, code lost:
        if (r12 != null) goto L73;
     */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x04dd  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0581  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x05ec  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0648  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x06c5  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x06d1  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0743  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0517 A[EDGE_INSN: B:398:0x0517->B:165:0x0517 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0575 A[EDGE_INSN: B:401:0x0575->B:186:0x0575 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x069c A[EDGE_INSN: B:402:0x069c->B:243:0x069c ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:407:0x07f2 A[EDGE_INSN: B:407:0x07f2->B:319:0x07f2 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01e5 A[Catch: all -> 0x0991, TRY_LEAVE, TryCatch #0 {all -> 0x0991, blocks: (B:45:0x01dc, B:47:0x01e5, B:50:0x01f2, B:52:0x022b, B:54:0x0233, B:55:0x0256, B:57:0x028f, B:59:0x0297), top: B:382:0x01dc }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01f2 A[Catch: all -> 0x0991, TRY_ENTER, TryCatch #0 {all -> 0x0991, blocks: (B:45:0x01dc, B:47:0x01e5, B:50:0x01f2, B:52:0x022b, B:54:0x0233, B:55:0x0256, B:57:0x028f, B:59:0x0297), top: B:382:0x01dc }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23907b(java.util.Set<java.lang.String> r6, s1.w.d<? super com.truecaller.voip.groupcall.action.InviteResult> r7) {
        /*
            Method dump skipped, instructions count: 2471
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11873b0.m23907b(java.util.Set, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0282 A[LOOP:2: B:51:0x0278->B:53:0x0282, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x02f6 A[LOOP:3: B:55:0x02ec->B:57:0x02f6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0403 A[LOOP:5: B:70:0x03f9->B:72:0x0403, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0457  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x04c0 A[LOOP:7: B:85:0x04b7->B:87:0x04c0, LOOP_END] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23906c(java.util.Set<java.lang.String> r7, s1.w.d<? super java.util.Map<java.lang.String, ? extends com.truecaller.voip.groupcall.action.InviteError>> r8) {
        /*
            Method dump skipped, instructions count: 1252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11873b0.m23906c(java.util.Set, s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f34869i.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11861a0
    /* renamed from: i */
    public i1 mo23905i() {
        return this.f34861a;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11861a0
    /* renamed from: o */
    public n0<InviteResult> mo23904o(Set<String> set) {
        l.e(set, "numbers");
        return s1.a.a.a.v0.f.d.H(this, (f) null, (j0) null, new C11874a(set, null), 3, (Object) null);
    }
}
