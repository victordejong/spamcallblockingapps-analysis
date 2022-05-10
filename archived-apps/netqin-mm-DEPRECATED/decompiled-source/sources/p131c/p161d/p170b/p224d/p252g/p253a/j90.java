package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeju;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.j90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/j90.class */
public final class j90 extends k90<FieldDescriptorType, Object> {
    public j90(int i) {
        super(i, null);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.k90
    /* renamed from: b */
    public final void mo26726b() {
        if (!m26732a()) {
            for (int i = 0; i < m26723c(); i++) {
                Map.Entry<FieldDescriptorType, Object> a = m26731a(i);
                if (((zzeju) a.getKey()).mo12392I()) {
                    a.setValue(Collections.unmodifiableList((List) a.getValue()));
                }
            }
            Iterator it = m26720d().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((zzeju) entry.getKey()).mo12392I()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.mo26726b();
    }
}
