package p081h.p160h.p179e.p192b.p193c.p194c;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p626l.p641z.p643d.C15149k;
/* renamed from: h.h.e.b.c.c.b */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/c/c/b.class */
public final class C6458b {

    /* renamed from: a */
    public final C6457a f16093a = new C6457a();

    /* renamed from: b */
    public final C6459c f16094b;

    /* renamed from: c */
    public final Map<String, Integer> f16095c;

    public C6458b(Map<String, Integer> map) {
        C15149k.m377b(map, "vocab");
        this.f16095c = map;
        this.f16094b = new C6459c(this.f16095c);
    }

    /* renamed from: a */
    public final List<String> m22537a(String str) {
        C15149k.m377b(str, "text");
        ArrayList arrayList = new ArrayList();
        for (String str2 : this.f16093a.m22540c(str)) {
            arrayList.addAll(this.f16094b.m22535a(str2));
        }
        return arrayList;
    }

    /* renamed from: a */
    public final List<Integer> m22536a(List<String> list) {
        C15149k.m377b(list, "tokens");
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            Integer num = this.f16095c.get(str);
            arrayList.add(Integer.valueOf(num != null ? num.intValue() : 0));
        }
        return arrayList;
    }
}
