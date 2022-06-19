package p193e.p194a.p619d.p620a;

import android.content.Context;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.truecaller.voip.C4781R;
import java.util.ArrayList;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p620a.EnumC10990c;
import p193e.p194a.p619d.p620a.EnumC11010h;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11514a;
import p193e.p194a.p619d.p637c0.p640x1.C11519b;
import p193e.p194a.p619d.p654s.C11793i;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p657v.C11821a;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.g;
import s1.a.l;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
@e(c = "com.truecaller.voip.debug.DebugGroupCallFragment$listenGroupCall$1", f = "DebugGroupCallFragment.kt", l = {162}, m = "invokeSuspend")
/* renamed from: e.a.d.a.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/e.class */
public final class C10995e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32555e;

    /* renamed from: f */
    public final /* synthetic */ C10968a f32556f;

    /* renamed from: e.a.d.a.e$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$a.class */
    public static final class C10996a implements g<C11041v> {
        public C10996a() {
            C10995e.this = r4;
        }

        /* renamed from: a */
        public Object m25427a(Object obj, d dVar) {
            EnumC11010h enumC11010h;
            EnumC10990c enumC10990c;
            C11041v c11041v = (C11041v) obj;
            C10968a c10968a = C10995e.this.f32556f;
            l[] lVarArr = C10968a.f32488i;
            C11793i m25458SA = c10968a.m25458SA();
            s1.z.c.l.d(m25458SA, "binding");
            s1.z.c.l.e(c11041v, "$this$populateView");
            s1.z.c.l.e(m25458SA, "binding");
            EnumC11010h[] values = EnumC11010h.values();
            ArrayList arrayList = new ArrayList(3);
            for (int i = 0; i < 3; i++) {
                arrayList.add(values[i].name());
            }
            NestedScrollView nestedScrollView = m25458SA.f34668a;
            s1.z.c.l.d(nestedScrollView, "root");
            Context context = nestedScrollView.getContext();
            int i2 = C4781R.layout.voip_debug_spinner_item;
            ArrayAdapter arrayAdapter = new ArrayAdapter(context, i2, arrayList);
            arrayAdapter.setDropDownViewResource(i2);
            Spinner spinner = m25458SA.f34674g;
            spinner.setAdapter((SpinnerAdapter) arrayAdapter);
            EnumC11010h.C11011a c11011a = EnumC11010h.f32582c;
            AbstractC11840h abstractC11840h = (AbstractC11840h) c11041v.f32661c.getValue();
            s1.z.c.l.e(abstractC11840h, "state");
            EnumC11010h[] values2 = EnumC11010h.values();
            int i3 = 0;
            while (true) {
                if (i3 >= 3) {
                    enumC11010h = null;
                    break;
                }
                enumC11010h = values2[i3];
                if (s1.z.c.l.a(enumC11010h.f32583a, abstractC11840h)) {
                    break;
                }
                i3++;
            }
            spinner.setSelection(enumC11010h != null ? enumC11010h.ordinal() : 0);
            spinner.setOnItemSelectedListener(new C11060z(arrayAdapter, c11041v));
            EnumC10990c[] values3 = EnumC10990c.values();
            ArrayList arrayList2 = new ArrayList(4);
            for (int i4 = 0; i4 < 4; i4++) {
                arrayList2.add(values3[i4].name());
            }
            NestedScrollView nestedScrollView2 = m25458SA.f34668a;
            s1.z.c.l.d(nestedScrollView2, "root");
            Context context2 = nestedScrollView2.getContext();
            int i5 = C4781R.layout.voip_debug_spinner_item;
            ArrayAdapter arrayAdapter2 = new ArrayAdapter(context2, i5, arrayList2);
            arrayAdapter2.setDropDownViewResource(i5);
            Spinner spinner2 = m25458SA.f34673f;
            spinner2.setAdapter((SpinnerAdapter) arrayAdapter2);
            EnumC10990c.C10991a c10991a = EnumC10990c.f32549c;
            AbstractC11514a abstractC11514a = ((C11519b) c11041v.f32662d.getValue()).f33811a;
            Objects.requireNonNull(c10991a);
            s1.z.c.l.e(abstractC11514a, "route");
            EnumC10990c[] values4 = EnumC10990c.values();
            int i6 = 0;
            while (true) {
                if (i6 >= 4) {
                    enumC10990c = null;
                    break;
                }
                enumC10990c = values4[i6];
                if (s1.z.c.l.a(enumC10990c.f32550a, abstractC11514a)) {
                    break;
                }
                i6++;
            }
            spinner2.setSelection(enumC10990c != null ? enumC10990c.ordinal() : 0);
            spinner2.setOnItemSelectedListener(new C11059y(arrayAdapter2, c11041v));
            SwitchMaterial switchMaterial = m25458SA.f34676i;
            switchMaterial.setChecked(((C11821a) c11041v.f32663e.getValue()).f34737a);
            switchMaterial.setOnCheckedChangeListener(new C25350m(0, c11041v));
            SwitchMaterial switchMaterial2 = m25458SA.f34675h;
            switchMaterial2.setChecked(((C11821a) c11041v.f32663e.getValue()).f34738b);
            switchMaterial2.setOnCheckedChangeListener(new C25350m(1, c11041v));
            C10968a c10968a2 = C10995e.this.f32556f;
            Objects.requireNonNull(c10968a2);
            a w2 = s1.a.a.a.v0.f.d.w2(c10968a2, (f) null, (j0) null, new C11006f(c10968a2, c11041v, null), 3, (Object) null);
            return w2 == a.a ? w2 : s.a;
        }
    }

    /* renamed from: e.a.d.a.e$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$b.class */
    public static final class C10997b implements q3.a.x2.f<Object> {

        /* renamed from: a */
        public final /* synthetic */ q3.a.x2.f f32558a;

        /* renamed from: e.a.d.a.e$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$b$a.class */
        public static final class C10998a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f32559a;

            @e(c = "com.truecaller.voip.debug.DebugGroupCallFragment$listenGroupCall$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "DebugGroupCallFragment.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.a.e$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$b$a$a.class */
            public static final class C10999a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f32560d;

                /* renamed from: e */
                public int f32561e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C10999a(d dVar) {
                    super(dVar);
                    C10998a.this = r4;
                }

                /* renamed from: s */
                public final Object m25424s(Object obj) {
                    this.f32560d = obj;
                    this.f32561e |= Integer.MIN_VALUE;
                    return C10998a.this.m25425a(null, this);
                }
            }

            public C10998a(g gVar, C10997b c10997b) {
                this.f32559a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25425a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C10995e.C10997b.C10998a.C10999a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.a.e$b$a$a r0 = (p193e.p194a.p619d.p620a.C10995e.C10997b.C10998a.C10999a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f32561e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f32561e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.a.e$b$a$a r0 = new e.a.d.a.e$b$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f32560d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f32561e
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
                    q3.a.x2.g r0 = r0.f32559a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11836a
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f32561e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C10995e.C10997b.C10998a.m25425a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C10997b(q3.a.x2.f fVar) {
            this.f32558a = fVar;
        }

        /* renamed from: c */
        public Object m25426c(g gVar, d dVar) {
            Object c = this.f32558a.c(new C10998a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* renamed from: e.a.d.a.e$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$c.class */
    public static final class C11000c implements q3.a.x2.f<Object> {

        /* renamed from: a */
        public final /* synthetic */ q3.a.x2.f f32563a;

        /* renamed from: e.a.d.a.e$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$c$a.class */
        public static final class C11001a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f32564a;

            @e(c = "com.truecaller.voip.debug.DebugGroupCallFragment$listenGroupCall$1$invokeSuspend$$inlined$filterIsInstance$2$2", f = "DebugGroupCallFragment.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.a.e$c$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$c$a$a.class */
            public static final class C11002a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f32565d;

                /* renamed from: e */
                public int f32566e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11002a(d dVar) {
                    super(dVar);
                    C11001a.this = r4;
                }

                /* renamed from: s */
                public final Object m25421s(Object obj) {
                    this.f32565d = obj;
                    this.f32566e |= Integer.MIN_VALUE;
                    return C11001a.this.m25422a(null, this);
                }
            }

            public C11001a(g gVar, C11000c c11000c) {
                this.f32564a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25422a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C10995e.C11000c.C11001a.C11002a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.a.e$c$a$a r0 = (p193e.p194a.p619d.p620a.C10995e.C11000c.C11001a.C11002a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f32566e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f32566e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.a.e$c$a$a r0 = new e.a.d.a.e$c$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f32565d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f32566e
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
                    q3.a.x2.g r0 = r0.f32564a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C11041v
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f32566e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C10995e.C11000c.C11001a.m25422a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11000c(q3.a.x2.f fVar) {
            this.f32563a = fVar;
        }

        /* renamed from: c */
        public Object m25423c(g gVar, d dVar) {
            Object c = this.f32563a.c(new C11001a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* renamed from: e.a.d.a.e$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$d.class */
    public static final class C11003d implements q3.a.x2.f<AbstractC11822b> {

        /* renamed from: a */
        public final /* synthetic */ q3.a.x2.f f32568a;

        /* renamed from: e.a.d.a.e$d$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$d$a.class */
        public static final class C11004a implements g<AbstractC11835f.C11836a> {

            /* renamed from: a */
            public final /* synthetic */ g f32569a;

            @e(c = "com.truecaller.voip.debug.DebugGroupCallFragment$listenGroupCall$1$invokeSuspend$$inlined$map$1$2", f = "DebugGroupCallFragment.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.a.e$d$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/a/e$d$a$a.class */
            public static final class C11005a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f32570d;

                /* renamed from: e */
                public int f32571e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11005a(d dVar) {
                    super(dVar);
                    C11004a.this = r4;
                }

                /* renamed from: s */
                public final Object m25418s(Object obj) {
                    this.f32570d = obj;
                    this.f32571e |= Integer.MIN_VALUE;
                    return C11004a.this.m25419a(null, this);
                }
            }

            public C11004a(g gVar, C11003d c11003d) {
                this.f32569a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25419a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C10995e.C11003d.C11004a.C11005a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.d.a.e$d$a$a r0 = (p193e.p194a.p619d.p620a.C10995e.C11003d.C11004a.C11005a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f32571e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f32571e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.d.a.e$d$a$a r0 = new e.a.d.a.e$d$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f32570d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f32571e
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
                    q3.a.x2.g r0 = r0.f32569a
                    r10 = r0
                    r0 = r6
                    e.a.d.v.f$a r0 = (p193e.p194a.p619d.p657v.AbstractC11835f.C11836a) r0
                    e.a.d.v.b r0 = r0.f34807a
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f32571e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C10995e.C11003d.C11004a.m25419a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11003d(q3.a.x2.f fVar) {
            this.f32568a = fVar;
        }

        /* renamed from: c */
        public Object m25420c(g gVar, d dVar) {
            Object c = this.f32568a.c(new C11004a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10995e(C10968a c10968a, d dVar) {
        super(2, dVar);
        this.f32556f = c10968a;
    }

    /* renamed from: i */
    public final d<s> m25430i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C10995e(this.f32556f, dVar);
    }

    /* renamed from: k */
    public final Object m25429k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C10995e(this.f32556f, dVar).m25428s(s.a);
    }

    /* renamed from: s */
    public final Object m25428s(Object obj) {
        a aVar = a.a;
        int i = this.f32555e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC11824d abstractC11824d = this.f32556f.f32491f;
            if (abstractC11824d == null) {
                s1.z.c.l.l("groupCallManager");
                throw null;
            }
            C11000c c11000c = new C11000c(new C11003d(new C10997b(abstractC11824d.getState())));
            C10996a c10996a = new C10996a();
            this.f32555e = 1;
            if (c11000c.c(c10996a, this) == aVar) {
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
