package p459j.p460a.p604y0.p610e;

import android.util.SparseArray;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p631e0.AbstractC14945i;
import p626l.p631e0.C14949k;
import p626l.p631e0.EnumC14954m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0006\u0018�� (2\u00020\u0001:\u0001(B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u001aH\u0002J\u000e\u0010!\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\"\u001a\u00020#2\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010$\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\u0016\u0010%\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0014J\u0015\u0010&\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001b\u001a\u00020\u0014¢\u0006\u0002\u0010'R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\u0007R\u000e\u0010\f\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006)"}, m815d2 = {"Lgogolook/callgogolook2/vas/setting/VasInfoManager;", "", "()V", "regexForCancelKeyword", "Lkotlin/text/Regex;", "regexForPeriod", "getRegexForPeriod", "()Lkotlin/text/Regex;", "regexForPrice", "getRegexForPrice", "regexForPriceNumber", "getRegexForPriceNumber", "regexForPromotionBlockKeyword", "regexForPromotionKeyword", "regexForSubscriptionBlockKeyword", "regexForSubscriptionKeyword", "regexForVasName", "containCancelKeyword", "", "content", "", "containPromotionBlockKeyword", "containPromotionKeyword", "containSubscriptionBlockKeyword", "containSubscriptionKeyword", "getMatchedVasInfo", "Lgogolook/callgogolook2/vas/setting/VasInfo;", "number", "getVasCancelType", "", "e164", "getVasNameRegexPattern", "vasInfo", "getVasPeriod", "getVasPrice", "", "getVasPromotionType", "getVasSubscriptionType", "isVasNumber", "(Ljava/lang/String;)Ljava/lang/Boolean;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.e.b */
/* loaded from: classes3-dex2jar.jar:j/a/y0/e/b.class */
public final class C14568b {

    /* renamed from: k */
    public static final int f32544k = 0;

    /* renamed from: p */
    public static final int f32549p = 0;

    /* renamed from: a */
    public final C14949k f32556a;

    /* renamed from: b */
    public final C14949k f32557b;

    /* renamed from: c */
    public final C14949k f32558c;

    /* renamed from: d */
    public final C14949k f32559d;

    /* renamed from: e */
    public final C14949k f32560e;

    /* renamed from: f */
    public C14949k f32561f;

    /* renamed from: g */
    public final C14949k f32562g;

    /* renamed from: h */
    public final C14949k f32563h;

    /* renamed from: i */
    public final C14949k f32564i;

    /* renamed from: v */
    public static final C14576h f32555v = new C14576h(null);

    /* renamed from: j */
    public static final AbstractC14974f f32543j = C14975g.m662a(C14569a.f32565a);

    /* renamed from: l */
    public static final int f32545l = 1;

    /* renamed from: m */
    public static final int f32546m = 2;

    /* renamed from: n */
    public static final int f32547n = 3;

    /* renamed from: o */
    public static final int f32548o = 1;

    /* renamed from: q */
    public static final int f32550q = 1;

    /* renamed from: r */
    public static final AbstractC14974f f32551r = C14975g.m662a(C14571c.f32567a);

    /* renamed from: s */
    public static final AbstractC14974f f32552s = C14975g.m662a(C14574f.f32570a);

    /* renamed from: t */
    public static final AbstractC14974f f32553t = C14975g.m662a(C14573e.f32569a);

    /* renamed from: u */
    public static final AbstractC14974f f32554u = C14975g.m662a(C14572d.f32568a);

    /* renamed from: j.a.y0.e.b$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/b$a.class */
    public static final class C14569a extends AbstractC15150l implements AbstractC15107a<C14568b> {

        /* renamed from: a */
        public static final C14569a f32565a = new C14569a();

        public C14569a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C14568b invoke() {
            return new C14568b(null);
        }
    }

    /* renamed from: j.a.y0.e.b$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/b$b.class */
    public static final class C14570b extends AbstractC15150l implements AbstractC15107a<SparseArray<String>> {

        /* renamed from: a */
        public static final C14570b f32566a = new C14570b();

        public C14570b() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final SparseArray<String> invoke() {
            return C14577c.f32580h.m1085a();
        }
    }

    /* renamed from: j.a.y0.e.b$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/b$c.class */
    public static final class C14571c extends AbstractC15150l implements AbstractC15107a<HashMap<String, List<? extends C14567a>>> {

        /* renamed from: a */
        public static final C14571c f32567a = new C14571c();

        public C14571c() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final HashMap<String, List<? extends C14567a>> invoke() {
            return C14577c.f32580h.m1076b();
        }
    }

    /* renamed from: j.a.y0.e.b$d */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/b$d.class */
    public static final class C14572d extends AbstractC15150l implements AbstractC15107a<HashMap<String, String>> {

        /* renamed from: a */
        public static final C14572d f32568a = new C14572d();

        public C14572d() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final HashMap<String, String> invoke() {
            return C14577c.f32580h.m1071c();
        }
    }

    /* renamed from: j.a.y0.e.b$e */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/b$e.class */
    public static final class C14573e extends AbstractC15150l implements AbstractC15107a<SparseArray<String>> {

        /* renamed from: a */
        public static final C14573e f32569a = new C14573e();

        public C14573e() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final SparseArray<String> invoke() {
            return C14577c.f32580h.m1069d();
        }
    }

    /* renamed from: j.a.y0.e.b$f */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/b$f.class */
    public static final class C14574f extends AbstractC15150l implements AbstractC15107a<SparseArray<String>> {

        /* renamed from: a */
        public static final C14574f f32570a = new C14574f();

        public C14574f() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final SparseArray<String> invoke() {
            return C14577c.f32580h.m1067e();
        }
    }

    /* renamed from: j.a.y0.e.b$g */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/b$g.class */
    public static final class C14575g extends AbstractC15150l implements AbstractC15107a<ArrayList<String>> {

        /* renamed from: a */
        public static final C14575g f32571a = new C14575g();

        public C14575g() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ArrayList<String> invoke() {
            return C14577c.f32580h.m1065f();
        }
    }

    /* renamed from: j.a.y0.e.b$h */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/e/b$h.class */
    public static final class C14576h {

        /* renamed from: a */
        public static final /* synthetic */ AbstractC14906i[] f32572a;

        static {
            C15157s sVar = new C15157s(C15131a0.m419a(C14576h.class), Transition.MATCH_INSTANCE_STR, "getInstance()Lgogolook/callgogolook2/vas/setting/VasInfoManager;");
            C15131a0.m412a(sVar);
            C15157s sVar2 = new C15157s(C15131a0.m419a(C14576h.class), "vasInfoMap", "getVasInfoMap()Ljava/util/HashMap;");
            C15131a0.m412a(sVar2);
            C15157s sVar3 = new C15157s(C15131a0.m419a(C14576h.class), "vasPrice", "getVasPrice()Landroid/util/SparseArray;");
            C15131a0.m412a(sVar3);
            C15157s sVar4 = new C15157s(C15131a0.m419a(C14576h.class), "vasPricePrefix", "getVasPricePrefix()Ljava/util/ArrayList;");
            C15131a0.m412a(sVar4);
            C15157s sVar5 = new C15157s(C15131a0.m419a(C14576h.class), "vasPeriod", "getVasPeriod()Landroid/util/SparseArray;");
            C15131a0.m412a(sVar5);
            C15157s sVar6 = new C15157s(C15131a0.m419a(C14576h.class), "vasCancelWord", "getVasCancelWord()Landroid/util/SparseArray;");
            C15131a0.m412a(sVar6);
            C15157s sVar7 = new C15157s(C15131a0.m419a(C14576h.class), "vasKeyword", "getVasKeyword()Ljava/util/HashMap;");
            C15131a0.m412a(sVar7);
            f32572a = new AbstractC14906i[]{sVar, sVar2, sVar3, sVar4, sVar5, sVar6, sVar7};
        }

        public C14576h() {
        }

        public /* synthetic */ C14576h(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14568b m1093a() {
            AbstractC14974f fVar = C14568b.f32543j;
            AbstractC14906i iVar = f32572a[0];
            return (C14568b) fVar.getValue();
        }

        /* renamed from: a */
        public final String m1092a(int i) {
            HashMap<String, String> c = m1088c();
            Set<String> keySet = c != null ? c.keySet() : null;
            StringBuilder sb = new StringBuilder();
            sb.append("(^$");
            if (keySet != null) {
                for (String str : keySet) {
                    C15149k.m383a((Object) str, "s");
                    int parseInt = Integer.parseInt(str);
                    HashMap<String, String> c2 = m1088c();
                    String str2 = c2 != null ? c2.get(str) : null;
                    if ((parseInt & i) == i) {
                        sb.append("|");
                        sb.append(str2);
                    }
                }
            }
            sb.append(")");
            String sb2 = sb.toString();
            C15149k.m383a((Object) sb2, "stringBuilder.toString()");
            return sb2;
        }

        /* renamed from: b */
        public final HashMap<String, List<C14567a>> m1089b() {
            AbstractC14974f fVar = C14568b.f32551r;
            AbstractC14906i iVar = f32572a[1];
            return (HashMap) fVar.getValue();
        }

        /* renamed from: c */
        public final HashMap<String, String> m1088c() {
            AbstractC14974f fVar = C14568b.f32554u;
            AbstractC14906i iVar = f32572a[6];
            return (HashMap) fVar.getValue();
        }

        /* renamed from: d */
        public final SparseArray<String> m1087d() {
            AbstractC14974f fVar = C14568b.f32553t;
            AbstractC14906i iVar = f32572a[4];
            return (SparseArray) fVar.getValue();
        }

        /* renamed from: e */
        public final SparseArray<String> m1086e() {
            AbstractC14974f fVar = C14568b.f32552s;
            AbstractC14906i iVar = f32572a[2];
            return (SparseArray) fVar.getValue();
        }
    }

    static {
        C14975g.m662a(C14575g.f32571a);
        C14975g.m662a(C14570b.f32566a);
    }

    public C14568b() {
        this.f32556a = new C14949k(f32555v.m1092a(1), EnumC14954m.IGNORE_CASE);
        this.f32557b = new C14949k(f32555v.m1092a(2), EnumC14954m.IGNORE_CASE);
        this.f32558c = new C14949k(f32555v.m1092a(4), EnumC14954m.IGNORE_CASE);
        this.f32559d = new C14949k(f32555v.m1092a(8), EnumC14954m.IGNORE_CASE);
        this.f32560e = new C14949k(f32555v.m1092a(16), EnumC14954m.IGNORE_CASE);
        this.f32562g = new C14949k("(R[$|S]\\s?\\d+[\\.,]?\\d+)");
        this.f32563h = new C14949k("\\d+[\\.,]?\\d+");
        this.f32564i = new C14949k("^\\bsemanal\\b|\\bsemana\\b|\\bsem\\b|\\bdia\\b|\\bmês\\b|\\bmes\\b|\\bavulsa\\b$", EnumC14954m.IGNORE_CASE);
    }

    public /* synthetic */ C14568b(C15145g gVar) {
        this();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0070, code lost:
        return r7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p459j.p460a.p604y0.p610e.C14567a m1108a(java.lang.String r7, java.lang.String r8) {
        /*
            r6 = this;
            r0 = r7
            java.lang.String r1 = "number"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r8
            java.lang.String r1 = "content"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            j.a.y0.e.b$h r0 = p459j.p460a.p604y0.p610e.C14568b.f32555v
            java.util.HashMap r0 = p459j.p460a.p604y0.p610e.C14568b.C14576h.m1091a(r0)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0071
            r0 = r9
            r1 = r7
            java.lang.Object r0 = r0.get(r1)
            java.util.List r0 = (java.util.List) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0071
            r0 = r7
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x002b:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x006d
            r0 = r9
            java.lang.Object r0 = r0.next()
            j.a.y0.e.a r0 = (p459j.p460a.p604y0.p610e.C14567a) r0
            r7 = r0
            r0 = r6
            l.e0.k r1 = new l.e0.k
            r2 = r1
            r3 = r6
            r4 = r7
            java.lang.String r3 = r3.m1110a(r4)
            l.e0.m r4 = p626l.p631e0.EnumC14954m.IGNORE_CASE
            r2.<init>(r3, r4)
            r0.f32561f = r1
            r0 = r6
            l.e0.k r0 = r0.f32561f
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0068
            r0 = r10
            r1 = r8
            boolean r0 = r0.m750a(r1)
            if (r0 == 0) goto L_0x002b
            goto L_0x006f
        L_0x0068:
            p626l.p641z.p643d.C15149k.m378b()
            r0 = 0
            throw r0
        L_0x006d:
            r0 = 0
            r7 = r0
        L_0x006f:
            r0 = r7
            return r0
        L_0x0071:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p604y0.p610e.C14568b.m1108a(java.lang.String, java.lang.String):j.a.y0.e.a");
    }

    /* renamed from: a */
    public final String m1110a(C14567a aVar) {
        StringBuilder sb = new StringBuilder();
        if (aVar.m1115a() != null) {
            sb.append("\\b" + aVar.m1115a() + "\\b");
        }
        String[] b = aVar.m1114b();
        if (b != null) {
            for (String str : b) {
                sb.append("|");
                sb.append("\\b" + str + "\\b");
            }
        }
        String sb2 = sb.toString();
        C15149k.m383a((Object) sb2, "StringBuilder().apply {\n…   }\n        }.toString()");
        return sb2;
    }

    /* renamed from: a */
    public final boolean m1109a(String str) {
        C15149k.m377b(str, "content");
        return this.f32560e.m750a(str);
    }

    /* renamed from: b */
    public final int m1105b(String str, String str2) {
        C15149k.m377b(str, "e164");
        C15149k.m377b(str2, "content");
        return (!C15149k.m384a((Object) m1094h(str), (Object) true) || !m1109a(str2)) ? f32544k : f32548o;
    }

    /* renamed from: b */
    public final boolean m1106b(String str) {
        C15149k.m377b(str, "content");
        C14949k kVar = this.f32559d;
        return (kVar != null ? Boolean.valueOf(kVar.m750a(str)) : null).booleanValue();
    }

    /* renamed from: c */
    public final int m1102c(String str, String str2) {
        C15149k.m377b(str, "e164");
        C15149k.m377b(str2, "content");
        int i = f32544k;
        Boolean h = m1094h(str);
        boolean c = m1103c(str2);
        boolean b = m1106b(str2);
        int i2 = i;
        if (h != null) {
            i2 = i;
            if (h.booleanValue()) {
                i2 = c ? b ? f32546m : f32547n : f32545l;
            }
        }
        return i2;
    }

    /* renamed from: c */
    public final boolean m1103c(String str) {
        C15149k.m377b(str, "content");
        C14949k kVar = this.f32558c;
        return (kVar != null ? Boolean.valueOf(kVar.m750a(str)) : null).booleanValue();
    }

    /* renamed from: d */
    public final int m1099d(String str, String str2) {
        C15149k.m377b(str, "e164");
        C15149k.m377b(str2, "content");
        int i = f32544k;
        Boolean h = m1094h(str);
        boolean e = m1097e(str2);
        boolean d = m1100d(str2);
        int i2 = i;
        if (h != null) {
            i2 = i;
            if (h.booleanValue()) {
                i2 = e ? d ? f32546m : f32547n : f32545l;
            }
        }
        return i2;
    }

    /* renamed from: d */
    public final boolean m1100d(String str) {
        C15149k.m377b(str, "content");
        C14949k kVar = this.f32557b;
        return (kVar != null ? Boolean.valueOf(kVar.m750a(str)) : null).booleanValue();
    }

    /* renamed from: e */
    public final boolean m1097e(String str) {
        C15149k.m377b(str, "content");
        C14949k kVar = this.f32556a;
        return (kVar != null ? Boolean.valueOf(kVar.m750a(str)) : null).booleanValue();
    }

    /* renamed from: f */
    public final String m1096f(String str) {
        C15149k.m377b(str, "content");
        AbstractC14945i a = C14949k.m747a(this.f32564i, str, 0, 2, null);
        return a != null ? a.getValue() : "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [double] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double m1095g(java.lang.String r8) {
        /*
            r7 = this;
            r0 = r8
            java.lang.String r1 = "content"
            p626l.p641z.p643d.C15149k.m377b(r0, r1)
            r0 = r7
            l.e0.k r0 = r0.f32562g
            r1 = r8
            r2 = 0
            r3 = 2
            r4 = 0
            l.e0.i r0 = p626l.p631e0.C14949k.m747a(r0, r1, r2, r3, r4)
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0068
            r0 = r7
            l.e0.k r0 = r0.f32563h
            r1 = r8
            java.lang.String r1 = r1.getValue()
            r2 = 0
            r3 = 2
            r4 = 0
            l.e0.i r0 = p626l.p631e0.C14949k.m747a(r0, r1, r2, r3, r4)
            r8 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0068
            r0 = r8
            java.lang.String r0 = r0.getValue()
            r8 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0068
            r0 = r8
            java.lang.String r1 = ","
            java.lang.String r2 = "."
            r3 = 0
            r4 = 4
            r5 = 0
            java.lang.String r0 = p626l.p631e0.C14966w.m718a(r0, r1, r2, r3, r4, r5)
            r8 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0068
            r0 = r8
            java.lang.Double r0 = p626l.p631e0.C14964u.m729d(r0)
            r8 = r0
            r0 = r9
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0068
            r0 = r8
            double r0 = r0.doubleValue()
            r11 = r0
        L_0x0068:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p604y0.p610e.C14568b.m1095g(java.lang.String):double");
    }

    /* renamed from: h */
    public final Boolean m1094h(String str) {
        C15149k.m377b(str, "number");
        HashMap b = f32555v.m1089b();
        return b != null ? Boolean.valueOf(b.containsKey(str)) : null;
    }
}
