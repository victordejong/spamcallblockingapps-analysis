package p459j.p460a.p474c0.p488f.p489p;

import gogolook.callgogolook2.gson.RuleData;
import gogolook.callgogolook2.gson.SmsFilterRulesHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import p459j.p460a.p474c0.p475c.p478y.C11636q;
import p459j.p460a.p474c0.p488f.p489p.AbstractC11844a;
import p459j.p460a.p474c0.p488f.p490q.C11876e;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p582w0.C14131q4;
import p459j.p460a.p582w0.p589f5.C14005a;
import p626l.p631e0.C14967x;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u001b2\u00020\u0001:\u0001\u001bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J*\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J*\u0010\r\u001a\u0004\u0018\u00010\u00062\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002J\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u0002J\u0012\u0010\u0012\u001a\u00020\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0006H\u0002J\u0016\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u000bH\u0016J\u0010\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u0017H\u0016J\u001a\u0010\u001a\u001a\u00020\b2\b\b\u0001\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u0017H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001c"}, m815d2 = {"Lgogolook/callgogolook2/messaging/sms/infer/KeywordInferMethod;", "Lgogolook/callgogolook2/messaging/sms/infer/InferMethod;", "inferCallback", "Lgogolook/callgogolook2/messaging/sms/infer/InferMethod$InferCallback;", "(Lgogolook/callgogolook2/messaging/sms/infer/InferMethod$InferCallback;)V", "checkKeywordAndPatternRules", "", "source", "", "text", "keywordAndPatternRuleList", "", "Lgogolook/callgogolook2/gson/RuleData;", "checkKeywordRules", "keywordRuleList", "compareResultActions", "result1", "result2", "getFilterTypeByResultAction", "resultAction", "inferBatch", "", "smsList", "Lgogolook/callgogolook2/messaging/datamodel/data/UnfilteredMessageData;", "inferSingle", "sms", "inferSmsWithKeywordAndPattern", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.f.p.b */
/* loaded from: classes2-dex2jar.jar:j/a/c0/f/p/b.class */
public final class C11846b implements AbstractC11844a {

    /* renamed from: a */
    public final AbstractC11844a.AbstractC11845a f26560a;

    /* renamed from: j.a.c0.f.p.b$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/f/p/b$a.class */
    public static final class C11847a {
        public C11847a() {
        }

        public /* synthetic */ C11847a(C15145g gVar) {
            this();
        }
    }

    static {
        new C11847a(null);
    }

    public C11846b(AbstractC11844a.AbstractC11845a aVar) {
        C15149k.m377b(aVar, "inferCallback");
        this.f26560a = aVar;
    }

    /* renamed from: a */
    public final int m8046a(int i, C11636q qVar) {
        String str;
        String c = qVar.m8741c();
        boolean z = false;
        if (c == null || c.length() == 0) {
            return 1;
        }
        List<RuleData> a = SmsFilterRulesHelper.m28188a(SmsFilterRulesHelper.KEYWORD_AND_PATTERN);
        String str2 = null;
        if (a == null || !C12810o.m5243c(qVar.m8741c())) {
            str = null;
        } else {
            String c2 = qVar.m8741c();
            if (c2 != null) {
                str = m8045a(i, c2, a);
            } else {
                C15149k.m378b();
                throw null;
            }
        }
        List<RuleData> a2 = SmsFilterRulesHelper.m28188a(SmsFilterRulesHelper.KEYWORD);
        if (a2 == null || a2.isEmpty()) {
            z = true;
        }
        if (!z) {
            String c3 = qVar.m8741c();
            if (c3 != null) {
                str2 = m8042b(i, c3, a2);
            } else {
                C15149k.m378b();
                throw null;
            }
        }
        return m8044a(m8043a(str, str2));
    }

    /* renamed from: a */
    public final int m8044a(String str) {
        return (str != null && str.hashCode() == 3273800 && str.equals("junk")) ? 2 : 1;
    }

    /* renamed from: a */
    public final String m8045a(int i, String str, List<RuleData> list) {
        List<String> c;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        String str2 = null;
        for (RuleData ruleData : list) {
            List<String> b = ruleData.m28193b();
            boolean z = false;
            if (b != null) {
                z = false;
                for (String str3 : b) {
                    if (C14967x.m705a((CharSequence) str, (CharSequence) str3, false, 2, (Object) null)) {
                        arrayList.add(str3);
                        z = true;
                    }
                }
            }
            List<String> e = C14131q4.m2404e(str);
            if (z) {
                C15149k.m383a((Object) e, "urlList");
                if ((true ^ e.isEmpty()) && (c = ruleData.m28192c()) != null) {
                    Iterator<T> it = c.iterator();
                    String str4 = str2;
                    while (true) {
                        str2 = str4;
                        if (it.hasNext()) {
                            String str5 = (String) it.next();
                            Iterator<T> it2 = e.iterator();
                            String str6 = str4;
                            while (true) {
                                str4 = str6;
                                if (it2.hasNext()) {
                                    String str7 = (String) it2.next();
                                    C15149k.m383a((Object) str7, "url");
                                    if (C14005a.m2887a(str7, str5)) {
                                        str6 = ruleData.m28194a();
                                        arrayList2.add(str5);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!(str2 == null || i == 1)) {
            C11851d.m8035a(SmsFilterRulesHelper.KEYWORD_AND_PATTERN, C15029u.m545a(arrayList, null, "[", "]", 0, null, null, 57, null), C15029u.m545a(arrayList2, null, "[", "]", 0, null, null, 57, null), str2);
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0067, code lost:
        if (r4.length() == 0) goto L_0x006a;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m8043a(java.lang.String r3, java.lang.String r4) {
        /*
            r2 = this;
            r0 = r3
            if (r0 == 0) goto L_0x0015
            r0 = r3
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0010
            goto L_0x0015
        L_0x0010:
            r0 = 0
            r5 = r0
            goto L_0x0017
        L_0x0015:
            r0 = 1
            r5 = r0
        L_0x0017:
            r0 = r5
            if (r0 == 0) goto L_0x003c
            r0 = r4
            if (r0 == 0) goto L_0x0030
            r0 = r4
            int r0 = r0.length()
            if (r0 != 0) goto L_0x002b
            goto L_0x0030
        L_0x002b:
            r0 = 0
            r5 = r0
            goto L_0x0032
        L_0x0030:
            r0 = 1
            r5 = r0
        L_0x0032:
            r0 = r5
            if (r0 != 0) goto L_0x003c
            r0 = r4
            r6 = r0
            goto L_0x006d
        L_0x003c:
            r0 = r3
            if (r0 == 0) goto L_0x0051
            r0 = r3
            int r0 = r0.length()
            if (r0 != 0) goto L_0x004c
            goto L_0x0051
        L_0x004c:
            r0 = 0
            r5 = r0
            goto L_0x0053
        L_0x0051:
            r0 = 1
            r5 = r0
        L_0x0053:
            r0 = r3
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L_0x006d
            r0 = r4
            if (r0 == 0) goto L_0x006a
            r0 = r3
            r6 = r0
            r0 = r4
            int r0 = r0.length()
            if (r0 != 0) goto L_0x006d
        L_0x006a:
            r0 = r3
            r6 = r0
        L_0x006d:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p488f.p489p.C11846b.m8043a(java.lang.String, java.lang.String):java.lang.String");
    }

    @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a
    /* renamed from: a */
    public void mo8040a(C11636q qVar) {
        C15149k.m377b(qVar, "sms");
        int a = m8046a(0, qVar);
        AbstractC11844a.AbstractC11845a aVar = this.f26560a;
        float f = 1.0f;
        float f2 = 1 == a ? 1.0f : 0.0f;
        if (1 == a) {
            f = 0.0f;
        }
        aVar.mo7962a(new C11876e.C11879c(a, Float.valueOf(f2), Float.valueOf(f)));
    }

    @Override // p459j.p460a.p474c0.p488f.p489p.AbstractC11844a
    /* renamed from: a */
    public void mo8038a(List<C11636q> list) {
        C15149k.m377b(list, "smsList");
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ArrayList<C11636q> arrayList = new ArrayList();
        for (Object obj : list) {
            String b = ((C11636q) obj).m8742b();
            boolean z = false;
            if (b != null) {
                z = false;
                if (b.length() > 0) {
                    z = true;
                }
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        for (C11636q qVar : arrayList) {
            String b2 = qVar.m8742b();
            if (b2 != null) {
                concurrentHashMap.put(b2, Integer.valueOf(m8046a(1, qVar)));
            } else {
                C15149k.m378b();
                throw null;
            }
        }
        AbstractC11844a.AbstractC11845a aVar = this.f26560a;
        aVar.mo7962a(new C11876e.C11877a(concurrentHashMap));
        aVar.onComplete();
    }

    /* renamed from: b */
    public final String m8042b(int i, String str, List<RuleData> list) {
        ArrayList arrayList = new ArrayList();
        String str2 = null;
        for (RuleData ruleData : list) {
            List<String> b = ruleData.m28193b();
            if (b != null) {
                Iterator<T> it = b.iterator();
                String str3 = str2;
                while (true) {
                    str2 = str3;
                    if (it.hasNext()) {
                        String str4 = (String) it.next();
                        if (C14967x.m705a((CharSequence) str, (CharSequence) str4, false, 2, (Object) null)) {
                            str3 = ruleData.m28194a();
                            arrayList.add(str4);
                        }
                    }
                }
            }
        }
        if (!(str2 == null || i == 1)) {
            C11851d.m8035a(SmsFilterRulesHelper.KEYWORD, C15029u.m545a(arrayList, null, "[", "]", 0, null, null, 57, null), null, str2);
        }
        return str2;
    }
}
