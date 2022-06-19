package androidx.lifecycle;

import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.s */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/s.class */
public class C0342s {

    /* renamed from: a */
    private Map<String, Integer> f1718a = new HashMap();

    /* renamed from: a */
    public boolean m5422a(String str, int i) {
        Integer num = this.f1718a.get(str);
        boolean z = false;
        int intValue = num != null ? num.intValue() : 0;
        if ((intValue & i) != 0) {
            z = true;
        }
        this.f1718a.put(str, Integer.valueOf(i | intValue));
        return !z;
    }
}
