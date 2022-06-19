package p193e.p194a.p372b0.p373a.p378c;

import com.truecaller.common.p156ui.C3700R;
import com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p373a.p378c.p380m.AbstractC8274a;
import p193e.p194a.p372b0.p373a.p378c.p380m.C8279b;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.b0.a.c.b */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/b.class */
public final class C8261b extends AbstractC20574a<AbstractC8265d> implements AbstractC8264c {

    /* renamed from: e */
    public final Map<Integer, List<GroupAvatarTilePosition>> f25491e;

    /* renamed from: h */
    public final AbstractC19233h0 f25494h;

    /* renamed from: d */
    public final c f25490d = g.a(false, 1);

    /* renamed from: f */
    public final s1.g f25492f = C25225a.m3978P1(new C8262a(0, this));

    /* renamed from: g */
    public final s1.g f25493g = C25225a.m3978P1(new C8262a(1, this));

    /* renamed from: e.a.b0.a.c.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b0/a/c/b$a.class */
    public static final class C8262a extends m implements a<Integer[]> {

        /* renamed from: b */
        public final /* synthetic */ int f25495b;

        /* renamed from: c */
        public final /* synthetic */ Object f25496c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8262a(int i, Object obj) {
            super(0);
            this.f25495b = i;
            this.f25496c = obj;
        }

        public final Object invoke() {
            int i = this.f25495b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                return new Integer[]{Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarTextBlue)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarTextGreen)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarTextViolet)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarTextPurple)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarTextYellow)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarTextAqua)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarTextTeal))};
            }
            return new Integer[]{Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarBackgroundBlue)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarBackgroundGreen)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarBackgroundViolet)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarBackgroundPurple)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarBackgroundYellow)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarBackgroundAqua)), Integer.valueOf(((C8261b) this.f25496c).f25494h.mo13758l(C3700R.attr.tcx_avatarBackgroundTeal))};
        }
    }

    @e(c = "com.truecaller.common.ui.groupavatar.GroupAvatarPresenter$onConfigsSet$1", f = "GroupAvatarXPresenter.kt", l = {Constants.ERR_WATERMARK_READ, 112}, m = "invokeSuspend")
    /* renamed from: e.a.b0.a.c.b$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/b$b.class */
    public static final class C8263b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f25497e;

        /* renamed from: f */
        public int f25498f;

        /* renamed from: h */
        public final /* synthetic */ List f25500h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8263b(List list, d dVar) {
            super(2, dVar);
            C8261b.this = r5;
            this.f25500h = list;
        }

        /* renamed from: i */
        public final d<s> m28712i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8263b(this.f25500h, dVar);
        }

        /* renamed from: k */
        public final Object m28711k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8263b(this.f25500h, dVar).m28710s(s.a);
        }

        /* renamed from: s */
        public final Object m28710s(Object obj) {
            c cVar;
            c cVar2;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f25498f;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    c cVar3 = C8261b.this.f25490d;
                    this.f25497e = cVar3;
                    this.f25498f = 1;
                    cVar = cVar3;
                    if (cVar3.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c cVar4 = (c) this.f25497e;
                    cVar2 = cVar4;
                    try {
                        C25225a.m3932a3(obj);
                        cVar = cVar4;
                        cVar2 = cVar;
                        s sVar = s.a;
                        cVar.c((Object) null);
                        return sVar;
                    } catch (Throwable th) {
                        th = th;
                        cVar = cVar2;
                        cVar.c((Object) null);
                        throw th;
                    }
                } else {
                    C25225a.m3932a3(obj);
                    cVar = (c) this.f25497e;
                }
                AbstractC8265d abstractC8265d = (AbstractC8265d) C8261b.this.f57683a;
                if (abstractC8265d != null) {
                    List<? extends AbstractC8274a> list = this.f25500h;
                    this.f25497e = cVar;
                    this.f25498f = 2;
                    if (abstractC8265d.mo28708a(list, this) == aVar) {
                        return aVar;
                    }
                }
                cVar2 = cVar;
                s sVar2 = s.a;
                cVar.c((Object) null);
                return sVar2;
            } catch (Throwable th2) {
                th = th2;
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8261b(f fVar, AbstractC19233h0 abstractC19233h0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC19233h0, "resourceProvider");
        this.f25494h = abstractC19233h0;
        GroupAvatarTilePosition groupAvatarTilePosition = GroupAvatarTilePosition.Left;
        GroupAvatarTilePosition groupAvatarTilePosition2 = GroupAvatarTilePosition.Right;
        k kVar = new k(2, s1.u.i.T(new GroupAvatarTilePosition[]{groupAvatarTilePosition, groupAvatarTilePosition2}));
        GroupAvatarTilePosition groupAvatarTilePosition3 = GroupAvatarTilePosition.TopLeft;
        GroupAvatarTilePosition groupAvatarTilePosition4 = GroupAvatarTilePosition.BottomLeft;
        this.f25491e = s1.u.i.W(new k[]{kVar, new k(3, s1.u.i.T(new GroupAvatarTilePosition[]{groupAvatarTilePosition3, groupAvatarTilePosition2, groupAvatarTilePosition4})), new k(4, s1.u.i.T(new GroupAvatarTilePosition[]{groupAvatarTilePosition3, GroupAvatarTilePosition.TopRight, groupAvatarTilePosition4, GroupAvatarTilePosition.BottomRight}))});
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        if (r9 != null) goto L10;
     */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p193e.p194a.p372b0.p373a.p378c.p380m.AbstractC8274a.C8277c m28713Ij(p193e.p194a.p372b0.p373a.p378c.p380m.C8279b r9, com.truecaller.common.p156ui.groupavatar.config.GroupAvatarTilePosition r10, int r11) {
        /*
            r8 = this;
            r0 = r9
            java.lang.String r0 = r0.f25522c
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L1e
            r0 = r9
            boolean r0 = s1.f0.r.p(r0)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L15
            goto L17
        L15:
            r0 = 0
            r9 = r0
        L17:
            r0 = r9
            if (r0 == 0) goto L1e
            goto L21
        L1e:
            java.lang.String r0 = ""
            r9 = r0
        L21:
            e.a.b0.a.c.m.a$c r0 = new e.a.b0.a.c.m.a$c
            r1 = r0
            r2 = r10
            r3 = r9
            r4 = r8
            s1.g r4 = r4.f25492f
            java.lang.Object r4 = r4.getValue()
            java.lang.Integer[] r4 = (java.lang.Integer[]) r4
            r5 = r11
            r4 = r4[r5]
            int r4 = r4.intValue()
            r5 = r8
            s1.g r5 = r5.f25493g
            java.lang.Object r5 = r5.getValue()
            java.lang.Integer[] r5 = (java.lang.Integer[]) r5
            r6 = r11
            r5 = r5[r6]
            int r5 = r5.intValue()
            r1.<init>(r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p373a.p378c.C8261b.m28713Ij(e.a.b0.a.c.m.b, com.truecaller.common.ui.groupavatar.config.GroupAvatarTilePosition, int):e.a.b0.a.c.m.a$c");
    }

    @Override // p193e.p194a.p372b0.p373a.p378c.AbstractC8264c
    /* renamed from: ub */
    public p1 mo28709ub(List<C8279b> list) {
        Object obj;
        l.e(list, "configs");
        if (list.size() >= 2) {
            if (list.size() > 4) {
                throw new IllegalArgumentException("Maximum size for group tiles is 4");
            }
            List list2 = (List) s1.u.i.H(this.f25491e, Integer.valueOf(list.size()));
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            int i = 0;
            for (Object obj2 : list) {
                if (i < 0) {
                    s1.u.i.N0();
                    throw null;
                }
                C8279b c8279b = (C8279b) obj2;
                String str = c8279b.f25521b;
                int abs = str != null ? Math.abs(str.hashCode() % ((Integer[]) this.f25492f.getValue()).length) : 0;
                GroupAvatarTilePosition groupAvatarTilePosition = (GroupAvatarTilePosition) list2.get(i);
                if (c8279b.f25523d) {
                    obj = new AbstractC8274a.C8278d(groupAvatarTilePosition);
                } else {
                    String str2 = c8279b.f25520a;
                    obj = str2 != null ? new AbstractC8274a.C8276b(groupAvatarTilePosition, str2, m28713Ij(c8279b, groupAvatarTilePosition, abs)) : c8279b.f25522c != null ? m28713Ij(c8279b, groupAvatarTilePosition, abs) : new AbstractC8274a.C8275a(groupAvatarTilePosition);
                }
                arrayList.add(obj);
                i++;
            }
            return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C8263b(arrayList, null), 3, (Object) null);
        }
        throw new IllegalArgumentException("Minimum size for group tiles is 2");
    }
}
