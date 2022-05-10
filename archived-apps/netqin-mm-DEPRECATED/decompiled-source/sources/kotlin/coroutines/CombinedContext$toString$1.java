package kotlin.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/coroutines/CombinedContext$toString$1.class */
public final class CombinedContext$toString$1 extends Lambda implements AbstractC10035p<String, CoroutineContext.AbstractC10476a, String> {
    public static final CombinedContext$toString$1 INSTANCE = new CombinedContext$toString$1();

    public CombinedContext$toString$1() {
        super(2);
    }

    public final String invoke(String str, CoroutineContext.AbstractC10476a aVar) {
        String str2;
        C10059q.m1637b(str, "acc");
        C10059q.m1637b(aVar, "element");
        if (str.length() == 0) {
            str2 = aVar.toString();
        } else {
            str2 = str + ", " + aVar;
        }
        return str2;
    }
}
