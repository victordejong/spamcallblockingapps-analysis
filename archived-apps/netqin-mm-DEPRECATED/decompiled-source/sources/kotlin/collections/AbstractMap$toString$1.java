package kotlin.collections;

import java.util.Map;
import kotlin.jvm.internal.Lambda;
import p573f.p577r.AbstractC9958d;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:kotlin/collections/AbstractMap$toString$1.class */
public final class AbstractMap$toString$1 extends Lambda implements AbstractC10031l<Map.Entry<? extends K, ? extends V>, String> {
    public final /* synthetic */ AbstractC9958d this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractMap$toString$1(AbstractC9958d dVar) {
        super(1);
        this.this$0 = dVar;
    }

    public final String invoke(Map.Entry<? extends K, ? extends V> entry) {
        String a;
        C10059q.m1637b(entry, "it");
        a = this.this$0.m1731a(entry);
        return a;
    }
}
