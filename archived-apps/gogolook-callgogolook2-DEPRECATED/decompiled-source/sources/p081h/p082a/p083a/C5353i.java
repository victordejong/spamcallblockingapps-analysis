package p081h.p082a.p083a;

import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import p081h.p082a.p083a.p092o.C5528d;
/* renamed from: h.a.a.i */
/* loaded from: classes-dex2jar.jar:h/a/a/i.class */
public class C5353i {

    /* renamed from: a */
    public boolean f13372a = false;

    /* renamed from: b */
    public final Set<AbstractC5355b> f13373b = new ArraySet();

    /* renamed from: c */
    public Map<String, C5528d> f13374c = new HashMap();

    /* renamed from: h.a.a.i$a */
    /* loaded from: classes-dex2jar.jar:h/a/a/i$a.class */
    public class C5354a implements Comparator<Pair<String, Float>> {
        public C5354a(C5353i iVar) {
        }

        /* renamed from: a */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float floatValue = pair.second.floatValue();
            float floatValue2 = pair2.second.floatValue();
            if (floatValue2 > floatValue) {
                return 1;
            }
            return floatValue > floatValue2 ? -1 : 0;
        }
    }

    /* renamed from: h.a.a.i$b */
    /* loaded from: classes-dex2jar.jar:h/a/a/i$b.class */
    public interface AbstractC5355b {
        /* renamed from: a */
        void m25571a(float f);
    }

    public C5353i() {
        new C5354a(this);
    }

    /* renamed from: a */
    public void m25574a(String str, float f) {
        if (this.f13372a) {
            C5528d dVar = this.f13374c.get(str);
            C5528d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new C5528d();
                this.f13374c.put(str, dVar2);
            }
            dVar2.m25264a(f);
            if (str.equals("root")) {
                for (AbstractC5355b bVar : this.f13373b) {
                    bVar.m25571a(f);
                }
            }
        }
    }

    /* renamed from: a */
    public void m25573a(boolean z) {
        this.f13372a = z;
    }
}
