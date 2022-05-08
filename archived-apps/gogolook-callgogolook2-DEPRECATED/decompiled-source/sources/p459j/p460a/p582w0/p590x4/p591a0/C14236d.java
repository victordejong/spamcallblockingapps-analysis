package p459j.p460a.p582w0.p590x4.p591a0;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p081h.p160h.p179e.p180a.p183i.C6357a;
import p081h.p160h.p179e.p180a.p183i.C6359b;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p582w0.C14060l2;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� \t2\u00020\u0001:\u0001\tB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\n"}, m815d2 = {"Lgogolook/callgogolook2/util/analytics/delegate/GfEventDelegate;", "Lgogolook/callgogolook2/util/analytics/delegate/IEventDelegate;", "eventName", "", "(Ljava/lang/String;)V", "commit", "", "eventValues", "Lgogolook/callgogolook2/util/analytics/delegate/EventValues;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.w0.x4.a0.d */
/* loaded from: classes3-dex2jar.jar:j/a/w0/x4/a0/d.class */
public final class C14236d implements AbstractC14238e {

    /* renamed from: b */
    public static final C14237a f31788b = new C14237a(null);

    /* renamed from: a */
    public final String f31789a;

    /* renamed from: j.a.w0.x4.a0.d$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/x4/a0/d$a.class */
    public static final class C14237a {
        public C14237a() {
        }

        public /* synthetic */ C14237a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final void m2089a(String str, C14231a aVar) {
            C13565v g = C13565v.m3921g();
            C15149k.m383a((Object) g, "DevelopMode.getInstance()");
            if (g.m23335b()) {
                aVar.m2101a(str);
            }
        }

        /* renamed from: a */
        public final void m2088a(String str, List<String> list, List<Integer> list2) {
            C6357a.m23028a(str, list, list2, C6359b.m23013a());
        }
    }

    public C14236d(String str) {
        C15149k.m377b(str, "eventName");
        this.f31789a = str;
    }

    @Override // p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e
    /* renamed from: a */
    public void mo2087a(C14231a aVar) throws IllegalArgumentException {
        C15149k.m377b(aVar, "eventValues");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry<String, Object> entry : aVar.m2098c().entrySet()) {
            Object value = entry.getValue();
            if (value instanceof Integer) {
                arrayList2.add(value);
            } else if (value instanceof String) {
                arrayList.add(value);
            } else {
                C14060l2.m2705a(new IllegalArgumentException("GfEventDelegate not support current data type: key: " + entry.getKey() + ", value: " + entry.getValue() + ", type: " + entry.getClass()));
            }
        }
        f31788b.m2088a(this.f31789a, arrayList, arrayList2);
        f31788b.m2089a(this.f31789a, aVar);
    }
}
