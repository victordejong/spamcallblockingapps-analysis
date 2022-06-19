package p193e.p194a.p997k3;

import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.data.entity.SpamData;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.k3.c */
/* loaded from: classes8-dex2jar.jar:e/a/k3/c.class */
public class C16449c {

    /* renamed from: a */
    public final C16450a f46192a;

    /* renamed from: e.a.k3.c$a */
    /* loaded from: classes8-dex2jar.jar:e/a/k3/c$a.class */
    public static final class C16450a {

        /* renamed from: a */
        public final Map<Long, SpamCategoryModel> f46193a;

        public C16450a(Map<Long, SpamCategoryModel> map) {
            l.e(map, "spamCategoryTable");
            this.f46193a = map;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C16450a) && l.a(this.f46193a, ((C16450a) obj).f46193a);
            }
            return true;
        }

        public int hashCode() {
            Map<Long, SpamCategoryModel> map = this.f46193a;
            return map != null ? map.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("MetaInfoHolder(spamCategoryTable=");
            m8728C.append(this.f46193a);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C16449c(C16450a c16450a) {
        l.e(c16450a, "extraMetaInfo");
        this.f46192a = c16450a;
    }

    /* renamed from: a */
    public List<SpamCategoryModel> mo17388a(String str) {
        ArrayList arrayList = new ArrayList();
        for (Number number : SpamData.Companion.m35459a(str)) {
            SpamCategoryModel spamCategoryModel = this.f46192a.f46193a.get(Long.valueOf(number.longValue()));
            if (spamCategoryModel != null) {
                arrayList.add(spamCategoryModel);
            }
        }
        return arrayList;
    }
}
