package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzht;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.f.s4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/s4.class */
public final class C4588s4 extends C4567p4<FieldDescriptorType, Object> {
    public C4588s4(int i) {
        super(i, null);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p258f.C4567p4
    /* renamed from: a */
    public final void mo25240a() {
        if (!m25331b()) {
            for (int i = 0; i < m25328c(); i++) {
                Map.Entry<FieldDescriptorType, Object> a = m25336a(i);
                if (((zzht) a.getKey()).zzd()) {
                    a.setValue(Collections.unmodifiableList((List) a.getValue()));
                }
            }
            Iterator it = m25325d().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzht) entry.getKey()).zzd()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo25240a();
    }
}
