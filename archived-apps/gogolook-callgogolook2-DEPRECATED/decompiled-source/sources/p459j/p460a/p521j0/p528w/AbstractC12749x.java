package p459j.p460a.p521j0.p528w;

import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import kotlin.Metadata;
import p459j.p460a.p521j0.p528w.AbstractC12741t;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p626l.C14978j;
import p626l.C14986p;
import p626l.p632u.C15012h0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0002\b&\u0018�� \u00182\u00020\u0001:\u0001\u0018B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\fJ\\\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0015\u001a\u00020\fH$J\u001e\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u00172\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\fH\u0002¨\u0006\u0019"}, m815d2 = {"Lgogolook/callgogolook2/phone/number/NumberDisplayInfoFactory;", "", "()V", "create", "Lgogolook/callgogolook2/phone/number/NumberDisplayInfo;", "number", "", "e164", "numberInfo", "Lgogolook/callgogolook2/gson/NumberInfo;", "contactName", "isIncomingCall", "", "createNumberDisplayInfo", IapProductRealmObject.STATE, "Lgogolook/callgogolook2/phone/number/NumberDisplayInfo$State;", "type", "Lgogolook/callgogolook2/phone/number/NumberDisplayInfo$Type;", "displayNumber", "displayRemoteNumber", "isCOO", "isFPN", "getSpoofMatchNumbers", "", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.w.x */
/* loaded from: classes3-dex2jar.jar:j/a/j0/w/x.class */
public abstract class AbstractC12749x {

    /* renamed from: a */
    public static final C12750a f28753a = new C12750a(null);

    /* renamed from: j.a.j0.w.x$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/w/x$a.class */
    public static final class C12750a {
        public C12750a() {
        }

        public /* synthetic */ C12750a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14978j<AbstractC12741t.EnumC12745d, Boolean> m5434a(NumberInfo numberInfo, String str, Set<String> set) {
            AbstractC12741t.EnumC12745d dVar;
            C15149k.m377b(numberInfo, "numberInfo");
            if (set == null) {
                set = C15012h0.m596a();
            }
            boolean z = false;
            Object[] array = set.toArray(new String[0]);
            if (array != null) {
                String[] strArr = (String[]) array;
                boolean z2 = true;
                if (numberInfo.m28354a((String[]) Arrays.copyOf(strArr, strArr.length))) {
                    dVar = AbstractC12741t.EnumC12745d.SPOOF;
                    z = true;
                } else if (numberInfo.m28306n0() && numberInfo.m28302p0()) {
                    dVar = AbstractC12741t.EnumC12745d.WHOSCALL_NUMBER;
                } else if (numberInfo.m28308m0()) {
                    dVar = AbstractC12741t.EnumC12745d.WHOSCALLCARD_V2_V3;
                } else if (str != null) {
                    dVar = AbstractC12741t.EnumC12745d.CONTACT;
                } else if (numberInfo.m28353a0()) {
                    dVar = AbstractC12741t.EnumC12745d.MYTAG;
                } else if (numberInfo.m28337d0()) {
                    dVar = AbstractC12741t.EnumC12745d.NOTE;
                } else if (numberInfo.m28375U()) {
                    dVar = AbstractC12741t.EnumC12745d.CS;
                } else if (numberInfo.m28310l0()) {
                    dVar = AbstractC12741t.EnumC12745d.WHOSCALLCARD_V1;
                } else {
                    if (numberInfo.m28371Y() && numberInfo.m28342c0()) {
                        String M = numberInfo.m28383M();
                        if ((M == null || M.length() == 0) || !C15149k.m384a((Object) numberInfo.m28383M(), (Object) "FPN")) {
                            z2 = false;
                        }
                        if (!z2) {
                            dVar = AbstractC12741t.EnumC12745d.MASSES;
                        }
                    }
                    if (numberInfo.m28370Z()) {
                        dVar = AbstractC12741t.EnumC12745d.MYSPAM;
                    } else if (numberInfo.m28329f0()) {
                        z = C15149k.m384a((Object) numberInfo.m28383M(), (Object) "FPN");
                        dVar = AbstractC12741t.EnumC12745d.SPAM;
                    } else {
                        dVar = null;
                    }
                }
                return new C14978j<>(dVar, Boolean.valueOf(z));
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
        }
    }

    /* renamed from: a */
    public abstract AbstractC12741t mo5437a(AbstractC12741t.EnumC12744c cVar, AbstractC12741t.EnumC12745d dVar, NumberInfo numberInfo, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2);

    /* renamed from: a */
    public final AbstractC12741t m5436a(String str, String str2, NumberInfo numberInfo, String str3, boolean z) {
        AbstractC12741t.EnumC12744c cVar;
        C15149k.m377b(str, "number");
        C15149k.m377b(str2, "e164");
        C15149k.m377b(numberInfo, "numberInfo");
        String a = C14108o4.m2493a(str2, true, false);
        if (a == null) {
            a = str;
        }
        String a2 = C14108o4.m2493a(str, true, true);
        if (a2 == null) {
            a2 = str;
        }
        C14978j<AbstractC12741t.EnumC12745d, Boolean> a3 = f28753a.m5434a(numberInfo, str3, m5435a(str, z));
        AbstractC12741t.EnumC12745d a4 = a3.m661a();
        boolean booleanValue = a3.m660b().booleanValue();
        AbstractC12741t.EnumC12744c cVar2 = AbstractC12741t.EnumC12744c.NO_INFO;
        if (numberInfo.m28294t0()) {
            cVar = AbstractC12741t.EnumC12744c.LOADING;
        } else if (numberInfo.m28298r0()) {
            cVar = AbstractC12741t.EnumC12744c.ERROR;
        } else {
            cVar = cVar2;
            if (!C14108o4.m2496a(str, C14108o4.EnumC14110b.CALL)) {
                boolean a5 = C12751y.f28754a.m5432a(numberInfo);
                if (a5) {
                    cVar = AbstractC12741t.EnumC12744c.OUTDATED;
                } else {
                    cVar = cVar2;
                    if (!a5) {
                        cVar = cVar2;
                        if (a4 != null) {
                            cVar = AbstractC12741t.EnumC12744c.INFO;
                        }
                    }
                }
            }
        }
        boolean z2 = numberInfo.m28300q0() || C14093n4.m2570e(str);
        boolean z3 = false;
        if (str.length() > 0) {
            z3 = false;
            if (C14093n4.m2569f(str)) {
                z3 = true;
            }
        }
        numberInfo.m28338d(z3);
        return mo5437a(cVar, a4, numberInfo, str, str2, a, a2, str3, z2, booleanValue);
    }

    /* renamed from: a */
    public final Set<String> m5435a(String str, boolean z) {
        HashSet hashSet = new HashSet();
        if (z) {
            hashSet.add(C14108o4.m2486c(str));
        }
        hashSet.add(C14108o4.m2494a(str, true));
        hashSet.add(C14108o4.m2494a(str, false));
        return hashSet;
    }
}
