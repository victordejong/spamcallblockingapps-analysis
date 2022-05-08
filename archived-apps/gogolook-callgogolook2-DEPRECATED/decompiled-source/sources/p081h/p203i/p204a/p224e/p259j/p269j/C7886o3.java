package p081h.p203i.p204a.p224e.p259j.p269j;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: h.i.a.e.j.j.o3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/o3.class */
public final class C7886o3 extends C7876n3<FieldDescriptorType, Object> {
    public C7886o3(int i) {
        super(i, null);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7876n3
    /* renamed from: b */
    public final void mo19113b() {
        if (!m19143a()) {
            for (int i = 0; i < m19135c(); i++) {
                Map.Entry<FieldDescriptorType, Object> a = m19142a(i);
                if (((AbstractC7809g1) a.getKey()).m19390Z()) {
                    a.setValue(Collections.unmodifiableList((List) a.getValue()));
                }
            }
            Iterator it = m19132d().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((AbstractC7809g1) entry.getKey()).m19390Z()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo19113b();
    }
}
