package p193e.p194a.p619d.p657v.p659l.p660e;

import com.truecaller.voip.manager.VoipMsg;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.C11821a;
import p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12036a;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.l.e.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j.class */
public final class C12056j implements i0, AbstractC12055i {

    /* renamed from: a */
    public final a1<C11821a> f35301a = k1.a(new C11821a(false, false, false, 7));

    /* renamed from: b */
    public final f<VoipMsg> f35302b;

    /* renamed from: c */
    public final f<C12262i> f35303c;

    /* renamed from: d */
    public final /* synthetic */ i0 f35304d;

    @e(c = "com.truecaller.voip.groupcall.call.action.HandleCallSettingImpl$notifyChanges$1", f = "HandleCallSetting.kt", l = {78}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.l.e.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a.class */
    public static final class C12057a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35305e;

        /* renamed from: e.a.d.v.l.e.j$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$a.class */
        public static final class C12058a implements g<AbstractC12036a> {
            public C12058a() {
                C12057a.this = r4;
            }

            /* renamed from: a */
            public Object m23670a(Object obj, d dVar) {
                C11821a c11821a;
                AbstractC12036a abstractC12036a = (AbstractC12036a) obj;
                if (abstractC12036a instanceof AbstractC12036a.C12037a) {
                    c11821a = C11821a.m23967a((C11821a) C12056j.this.f35301a.getValue(), ((AbstractC12036a.C12037a) abstractC12036a).f35256a, false, false, 6);
                } else if (!(abstractC12036a instanceof AbstractC12036a.C12038b)) {
                    throw new s1.i();
                } else {
                    c11821a = C11821a.m23967a((C11821a) C12056j.this.f35301a.getValue(), false, ((AbstractC12036a.C12038b) abstractC12036a).f35257a, false, 5);
                }
                C12056j.this.f35301a.setValue(c11821a);
                return s.a;
            }
        }

        /* renamed from: e.a.d.v.l.e.j$a$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$b.class */
        public static final class C12059b implements f<VoipMsg> {

            /* renamed from: a */
            public final /* synthetic */ f f35308a;

            /* renamed from: e.a.d.v.l.e.j$a$b$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$b$a.class */
            public static final class C12060a implements g<VoipMsg> {

                /* renamed from: a */
                public final /* synthetic */ g f35309a;

                @e(c = "com.truecaller.voip.groupcall.call.action.HandleCallSettingImpl$notifyChanges$1$invokeSuspend$$inlined$filter$1$2", f = "HandleCallSetting.kt", l = {135}, m = "emit")
                /* renamed from: e.a.d.v.l.e.j$a$b$a$a */
                /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$b$a$a.class */
                public static final class C12061a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f35310d;

                    /* renamed from: e */
                    public int f35311e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C12061a(d dVar) {
                        super(dVar);
                        C12060a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m23667s(Object obj) {
                        this.f35310d = obj;
                        this.f35311e |= Integer.MIN_VALUE;
                        return C12060a.this.m23668a(null, this);
                    }
                }

                public C12060a(g gVar, C12059b c12059b) {
                    this.f35309a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m23668a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        s1.s r0 = s1.s.a
                        r8 = r0
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.p660e.C12056j.C12057a.C12059b.C12060a.C12061a
                        if (r0 == 0) goto L30
                        r0 = r7
                        e.a.d.v.l.e.j$a$b$a$a r0 = (p193e.p194a.p619d.p657v.p659l.p660e.C12056j.C12057a.C12059b.C12060a.C12061a) r0
                        r9 = r0
                        r0 = r9
                        int r0 = r0.f35311e
                        r10 = r0
                        r0 = r10
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L30
                        r0 = r9
                        r1 = r10
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f35311e = r1
                        r0 = r9
                        r7 = r0
                        goto L3a
                    L30:
                        e.a.d.v.l.e.j$a$b$a$a r0 = new e.a.d.v.l.e.j$a$b$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L3a:
                        r0 = r7
                        java.lang.Object r0 = r0.f35310d
                        r11 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r9 = r0
                        r0 = r7
                        int r0 = r0.f35311e
                        r10 = r0
                        r0 = r10
                        if (r0 == 0) goto L68
                        r0 = r10
                        r1 = 1
                        if (r0 != r1) goto L5e
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto Laa
                    L5e:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L68:
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f35309a
                        r11 = r0
                        r0 = r6
                        com.truecaller.voip.manager.VoipMsg r0 = (com.truecaller.voip.manager.VoipMsg) r0
                        com.truecaller.voip.manager.VoipMsgAction r0 = r0.getAction()
                        com.truecaller.voip.manager.VoipMsgAction r1 = com.truecaller.voip.manager.VoipMsgAction.USER_MUTE_CHANGED
                        if (r0 != r1) goto L86
                        r0 = 1
                        r12 = r0
                        goto L89
                    L86:
                        r0 = 0
                        r12 = r0
                    L89:
                        r0 = r12
                        java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                        boolean r0 = r0.booleanValue()
                        if (r0 == 0) goto Laa
                        r0 = r7
                        r1 = 1
                        r0.f35311e = r1
                        r0 = r11
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r9
                        if (r0 != r1) goto Laa
                        r0 = r9
                        return r0
                    Laa:
                        r0 = r8
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p659l.p660e.C12056j.C12057a.C12059b.C12060a.m23668a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C12059b(f fVar) {
                this.f35308a = fVar;
            }

            /* renamed from: c */
            public Object m23669c(g gVar, d dVar) {
                Object c = this.f35308a.c(new C12060a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* renamed from: e.a.d.v.l.e.j$a$c */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$c.class */
        public static final class C12062c implements f<AbstractC12036a.C12037a> {

            /* renamed from: a */
            public final /* synthetic */ f f35313a;

            /* renamed from: e.a.d.v.l.e.j$a$c$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$c$a.class */
            public static final class C12063a implements g<VoipMsg> {

                /* renamed from: a */
                public final /* synthetic */ g f35314a;

                @e(c = "com.truecaller.voip.groupcall.call.action.HandleCallSettingImpl$notifyChanges$1$invokeSuspend$$inlined$map$1$2", f = "HandleCallSetting.kt", l = {135}, m = "emit")
                /* renamed from: e.a.d.v.l.e.j$a$c$a$a */
                /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$c$a$a.class */
                public static final class C12064a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f35315d;

                    /* renamed from: e */
                    public int f35316e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C12064a(d dVar) {
                        super(dVar);
                        C12063a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m23664s(Object obj) {
                        this.f35315d = obj;
                        this.f35316e |= Integer.MIN_VALUE;
                        return C12063a.this.m23665a(null, this);
                    }
                }

                public C12063a(g gVar, C12062c c12062c) {
                    this.f35314a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m23665a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.p660e.C12056j.C12057a.C12062c.C12063a.C12064a
                        if (r0 == 0) goto L28
                        r0 = r7
                        e.a.d.v.l.e.j$a$c$a$a r0 = (p193e.p194a.p619d.p657v.p659l.p660e.C12056j.C12057a.C12062c.C12063a.C12064a) r0
                        r8 = r0
                        r0 = r8
                        int r0 = r0.f35316e
                        r9 = r0
                        r0 = r9
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L28
                        r0 = r8
                        r1 = r9
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f35316e = r1
                        r0 = r8
                        r7 = r0
                        goto L32
                    L28:
                        e.a.d.v.l.e.j$a$c$a$a r0 = new e.a.d.v.l.e.j$a$c$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L32:
                        r0 = r7
                        java.lang.Object r0 = r0.f35315d
                        r10 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r8 = r0
                        r0 = r7
                        int r0 = r0.f35316e
                        r9 = r0
                        r0 = r9
                        if (r0 == 0) goto L5f
                        r0 = r9
                        r1 = 1
                        if (r0 != r1) goto L55
                        r0 = r10
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto L90
                    L55:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L5f:
                        r0 = r10
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f35314a
                        r10 = r0
                        e.a.d.v.l.e.a$a r0 = new e.a.d.v.l.e.a$a
                        r1 = r0
                        r2 = r6
                        com.truecaller.voip.manager.VoipMsg r2 = (com.truecaller.voip.manager.VoipMsg) r2
                        com.truecaller.voip.manager.VoipMsgExtras r2 = r2.getExtras()
                        boolean r2 = r2.getMuted()
                        r1.<init>(r2)
                        r6 = r0
                        r0 = r7
                        r1 = 1
                        r0.f35316e = r1
                        r0 = r10
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r8
                        if (r0 != r1) goto L90
                        r0 = r8
                        return r0
                    L90:
                        s1.s r0 = s1.s.a
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p659l.p660e.C12056j.C12057a.C12062c.C12063a.m23665a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C12062c(f fVar) {
                this.f35313a = fVar;
            }

            /* renamed from: c */
            public Object m23666c(g gVar, d dVar) {
                Object c = this.f35313a.c(new C12063a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* renamed from: e.a.d.v.l.e.j$a$d */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$d.class */
        public static final class C12065d implements f<AbstractC12036a.C12038b> {

            /* renamed from: a */
            public final /* synthetic */ f f35318a;

            /* renamed from: e.a.d.v.l.e.j$a$d$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$d$a.class */
            public static final class C12066a implements g<C12262i> {

                /* renamed from: a */
                public final /* synthetic */ g f35319a;

                @e(c = "com.truecaller.voip.groupcall.call.action.HandleCallSettingImpl$notifyChanges$1$invokeSuspend$$inlined$map$2$2", f = "HandleCallSetting.kt", l = {136}, m = "emit")
                /* renamed from: e.a.d.v.l.e.j$a$d$a$a */
                /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/j$a$d$a$a.class */
                public static final class C12067a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f35320d;

                    /* renamed from: e */
                    public int f35321e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C12067a(d dVar) {
                        super(dVar);
                        C12066a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m23661s(Object obj) {
                        this.f35320d = obj;
                        this.f35321e |= Integer.MIN_VALUE;
                        return C12066a.this.m23662a(null, this);
                    }
                }

                public C12066a(g gVar, C12065d c12065d) {
                    this.f35319a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m23662a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.p660e.C12056j.C12057a.C12065d.C12066a.C12067a
                        if (r0 == 0) goto L28
                        r0 = r7
                        e.a.d.v.l.e.j$a$d$a$a r0 = (p193e.p194a.p619d.p657v.p659l.p660e.C12056j.C12057a.C12065d.C12066a.C12067a) r0
                        r8 = r0
                        r0 = r8
                        int r0 = r0.f35321e
                        r9 = r0
                        r0 = r9
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L28
                        r0 = r8
                        r1 = r9
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f35321e = r1
                        r0 = r8
                        r7 = r0
                        goto L32
                    L28:
                        e.a.d.v.l.e.j$a$d$a$a r0 = new e.a.d.v.l.e.j$a$d$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L32:
                        r0 = r7
                        java.lang.Object r0 = r0.f35320d
                        r10 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r8 = r0
                        r0 = r7
                        int r0 = r0.f35321e
                        r9 = r0
                        r0 = r9
                        if (r0 == 0) goto L5f
                        r0 = r9
                        r1 = 1
                        if (r0 != r1) goto L55
                        r0 = r10
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto La3
                    L55:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L5f:
                        r0 = r10
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f35319a
                        r10 = r0
                        r0 = r6
                        e.a.d.x.r.i r0 = (p193e.p194a.p619d.p663x.p665r.C12262i) r0
                        r6 = r0
                        r0 = r6
                        if (r0 == 0) goto L7b
                        r0 = r6
                        java.lang.String r0 = r0.f35823b
                        r6 = r0
                        goto L7d
                    L7b:
                        r0 = 0
                        r6 = r0
                    L7d:
                        e.a.d.v.l.e.a$b r0 = new e.a.d.v.l.e.a$b
                        r1 = r0
                        r2 = r6
                        com.truecaller.voip.manager.rtm.RtmChannelAttributeState r3 = com.truecaller.voip.manager.rtm.RtmChannelAttributeState.OnHold
                        java.lang.String r3 = r3.getValue()
                        boolean r2 = s1.z.c.l.a(r2, r3)
                        r1.<init>(r2)
                        r6 = r0
                        r0 = r7
                        r1 = 1
                        r0.f35321e = r1
                        r0 = r10
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r8
                        if (r0 != r1) goto La3
                        r0 = r8
                        return r0
                    La3:
                        s1.s r0 = s1.s.a
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p659l.p660e.C12056j.C12057a.C12065d.C12066a.m23662a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C12065d(f fVar) {
                this.f35318a = fVar;
            }

            /* renamed from: c */
            public Object m23663c(g gVar, d dVar) {
                Object c = this.f35318a.c(new C12066a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12057a(d dVar) {
            super(2, dVar);
            C12056j.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23673i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12057a(dVar);
        }

        /* renamed from: k */
        public final Object m23672k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12057a(dVar).m23671s(s.a);
        }

        /* renamed from: s */
        public final Object m23671s(Object obj) {
            a aVar = a.a;
            int i = this.f35305e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12056j c12056j = C12056j.this;
                q3.a.x2.o1.f F2 = s1.a.a.a.v0.f.d.F2(new f[]{new C12062c(new C12059b(c12056j.f35302b)), new C12065d(c12056j.f35303c)});
                C12058a c12058a = new C12058a();
                this.f35305e = 1;
                if (F2.c(c12058a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C12056j(i0 i0Var, f<VoipMsg> fVar, f<C12262i> fVar2) {
        l.e(i0Var, "coroutineScope");
        l.e(fVar, "rtcMessages");
        l.e(fVar2, "rtmChannelAttributes");
        this.f35304d = i0Var;
        this.f35302b = fVar;
        this.f35303c = fVar2;
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12055i
    /* renamed from: a */
    public p1 mo23675a() {
        return s1.a.a.a.v0.f.d.w2(this, (s1.w.f) null, (j0) null, new C12057a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p657v.p659l.p660e.AbstractC12055i
    /* renamed from: b */
    public i1 mo23674b() {
        return this.f35301a;
    }

    public s1.w.f getCoroutineContext() {
        return this.f35304d.getCoroutineContext();
    }
}
