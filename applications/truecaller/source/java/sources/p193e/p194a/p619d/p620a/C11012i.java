package p193e.p194a.p619d.p620a;

import android.content.Context;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.core.widget.NestedScrollView;
import com.truecaller.voip.C4781R;
import java.util.ArrayList;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p620a.EnumC11024k;
import p193e.p194a.p619d.p654s.C11794j;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import p193e.p194a.p619d.p661w.AbstractC12111g;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.debug.DebugInvitationFragment$listenInvitation$1", f = "DebugInvitationFragment.kt", l = {135}, m = "invokeSuspend")
/* renamed from: e.a.d.a.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/i.class */
public final class C11012i extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32584e;

    /* renamed from: f */
    public final /* synthetic */ C10981b f32585f;

    /* renamed from: e.a.d.a.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$a.class */
    public static final class C11013a implements g<C10975a0> {
        public C11013a() {
            C11012i.this = r4;
        }

        /* renamed from: a */
        public Object m25409a(Object obj, d dVar) {
            EnumC11024k enumC11024k;
            C10975a0 c10975a0 = (C10975a0) obj;
            C10981b c10981b = C11012i.this.f32585f;
            C11794j c11794j = (C11794j) c10981b.f32530h.m34468b(c10981b, C10981b.f32525j[0]);
            l.d(c11794j, "binding");
            l.e(c10975a0, "$this$populateView");
            l.e(c11794j, "binding");
            EnumC11024k[] values = EnumC11024k.values();
            ArrayList arrayList = new ArrayList(7);
            for (int i = 0; i < 7; i++) {
                arrayList.add(values[i].name());
            }
            NestedScrollView nestedScrollView = c11794j.f34677a;
            l.d(nestedScrollView, "root");
            Context context = nestedScrollView.getContext();
            int i2 = C4781R.layout.voip_debug_spinner_item;
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, i2, arrayList);
            arrayAdapter.setDropDownViewResource(i2);
            Spinner spinner = c11794j.f34680d;
            spinner.setAdapter((SpinnerAdapter) arrayAdapter);
            EnumC11024k.C11025a c11025a = EnumC11024k.f32603c;
            AbstractC12114h abstractC12114h = (AbstractC12114h) c10975a0.f32512c.getValue();
            l.e(abstractC12114h, "state");
            EnumC11024k[] values2 = EnumC11024k.values();
            int i3 = 0;
            while (true) {
                if (i3 >= 7) {
                    enumC11024k = null;
                    break;
                }
                enumC11024k = values2[i3];
                if (l.a(enumC11024k.f32604a, abstractC12114h)) {
                    break;
                }
                i3++;
            }
            int i4 = 0;
            if (enumC11024k != null) {
                i4 = enumC11024k.ordinal();
            }
            spinner.setSelection(i4);
            spinner.setOnItemSelectedListener(new C10992c0(arrayAdapter, c10975a0));
            return s.a;
        }
    }

    /* renamed from: e.a.d.a.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$b.class */
    public static final class C11014b implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f32587a;

        /* renamed from: e.a.d.a.i$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$b$a.class */
        public static final class C11015a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f32588a;

            @e(c = "com.truecaller.voip.debug.DebugInvitationFragment$listenInvitation$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "DebugInvitationFragment.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.a.i$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$b$a$a.class */
            public static final class C11016a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f32589d;

                /* renamed from: e */
                public int f32590e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11016a(d dVar) {
                    super(dVar);
                    C11015a.this = r4;
                }

                /* renamed from: s */
                public final Object m25406s(Object obj) {
                    this.f32589d = obj;
                    this.f32590e |= Integer.MIN_VALUE;
                    return C11015a.this.m25407a(null, this);
                }
            }

            public C11015a(g gVar, C11014b c11014b) {
                this.f32588a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25407a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C11012i.C11014b.C11015a.C11016a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.a.i$b$a$a r0 = (p193e.p194a.p619d.p620a.C11012i.C11014b.C11015a.C11016a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f32590e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f32590e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.a.i$b$a$a r0 = new e.a.d.a.i$b$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f32589d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f32590e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L90
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
                    q3.a.x2.g r0 = r0.f32588a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p661w.AbstractC12111g.C12112a
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f32590e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto L90
                    r0 = r9
                    return r0
                L90:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C11012i.C11014b.C11015a.m25407a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11014b(f fVar) {
            this.f32587a = fVar;
        }

        /* renamed from: c */
        public Object m25408c(g gVar, d dVar) {
            Object c = this.f32587a.c(new C11015a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* renamed from: e.a.d.a.i$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$c.class */
    public static final class C11017c implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f32592a;

        /* renamed from: e.a.d.a.i$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$c$a.class */
        public static final class C11018a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f32593a;

            @e(c = "com.truecaller.voip.debug.DebugInvitationFragment$listenInvitation$1$invokeSuspend$$inlined$filterIsInstance$2$2", f = "DebugInvitationFragment.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.a.i$c$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$c$a$a.class */
            public static final class C11019a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f32594d;

                /* renamed from: e */
                public int f32595e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11019a(d dVar) {
                    super(dVar);
                    C11018a.this = r4;
                }

                /* renamed from: s */
                public final Object m25403s(Object obj) {
                    this.f32594d = obj;
                    this.f32595e |= Integer.MIN_VALUE;
                    return C11018a.this.m25404a(null, this);
                }
            }

            public C11018a(g gVar, C11017c c11017c) {
                this.f32593a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25404a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C11012i.C11017c.C11018a.C11019a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.a.i$c$a$a r0 = (p193e.p194a.p619d.p620a.C11012i.C11017c.C11018a.C11019a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f32595e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f32595e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.a.i$c$a$a r0 = new e.a.d.a.i$c$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f32594d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f32595e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L90
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
                    q3.a.x2.g r0 = r0.f32593a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C10975a0
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f32595e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto L90
                    r0 = r9
                    return r0
                L90:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C11012i.C11017c.C11018a.m25404a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11017c(f fVar) {
            this.f32592a = fVar;
        }

        /* renamed from: c */
        public Object m25405c(g gVar, d dVar) {
            Object c = this.f32592a.c(new C11018a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* renamed from: e.a.d.a.i$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$d.class */
    public static final class C11020d implements f<AbstractC12093b> {

        /* renamed from: a */
        public final /* synthetic */ f f32597a;

        /* renamed from: e.a.d.a.i$d$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$d$a.class */
        public static final class C11021a implements g<AbstractC12111g.C12112a> {

            /* renamed from: a */
            public final /* synthetic */ g f32598a;

            @e(c = "com.truecaller.voip.debug.DebugInvitationFragment$listenInvitation$1$invokeSuspend$$inlined$map$1$2", f = "DebugInvitationFragment.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.a.i$d$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/a/i$d$a$a.class */
            public static final class C11022a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f32599d;

                /* renamed from: e */
                public int f32600e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11022a(d dVar) {
                    super(dVar);
                    C11021a.this = r4;
                }

                /* renamed from: s */
                public final Object m25400s(Object obj) {
                    this.f32599d = obj;
                    this.f32600e |= Integer.MIN_VALUE;
                    return C11021a.this.m25401a(null, this);
                }
            }

            public C11021a(g gVar, C11020d c11020d) {
                this.f32598a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25401a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C11012i.C11020d.C11021a.C11022a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.d.a.i$d$a$a r0 = (p193e.p194a.p619d.p620a.C11012i.C11020d.C11021a.C11022a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f32600e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f32600e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.d.a.i$d$a$a r0 = new e.a.d.a.i$d$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f32599d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f32600e
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L5f
                    r0 = r9
                    r1 = 1
                    if (r0 != r1) goto L55
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L86
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
                    q3.a.x2.g r0 = r0.f32598a
                    r10 = r0
                    r0 = r6
                    e.a.d.w.g$a r0 = (p193e.p194a.p619d.p661w.AbstractC12111g.C12112a) r0
                    e.a.d.w.b r0 = r0.f35449a
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f32600e = r1
                    r0 = r10
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r8
                    if (r0 != r1) goto L86
                    r0 = r8
                    return r0
                L86:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C11012i.C11020d.C11021a.m25401a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11020d(f fVar) {
            this.f32597a = fVar;
        }

        /* renamed from: c */
        public Object m25402c(g gVar, d dVar) {
            Object c = this.f32597a.c(new C11021a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11012i(C10981b c10981b, d dVar) {
        super(2, dVar);
        this.f32585f = c10981b;
    }

    /* renamed from: i */
    public final d<s> m25412i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11012i(this.f32585f, dVar);
    }

    /* renamed from: k */
    public final Object m25411k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11012i(this.f32585f, dVar).m25410s(s.a);
    }

    /* renamed from: s */
    public final Object m25410s(Object obj) {
        a aVar = a.a;
        int i = this.f32584e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC12095d abstractC12095d = this.f32585f.f32528f;
            if (abstractC12095d == null) {
                l.l("invitationManager");
                throw null;
            }
            C11017c c11017c = new C11017c(new C11020d(new C11014b(abstractC12095d.getState())));
            C11013a c11013a = new C11013a();
            this.f32584e = 1;
            if (c11017c.c(c11013a, this) == aVar) {
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
