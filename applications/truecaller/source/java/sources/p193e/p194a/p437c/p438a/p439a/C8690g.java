package p193e.p194a.p437c.p438a.p439a;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Provider;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C26986a1;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.c.a.a.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/a/g.class */
public final class C8690g implements C26986a1.AbstractC26987b {

    /* renamed from: a */
    public final Map<Class<? extends AbstractC27040y0>, Provider<AbstractC27040y0>> f26599a;

    @Inject
    public C8690g(Map<Class<? extends AbstractC27040y0>, Provider<AbstractC27040y0>> map) {
        l.e(map, "creators");
        this.f26599a = map;
    }

    @Override // p1727n3.p1868v.C26986a1.AbstractC26987b
    public <T extends AbstractC27040y0> T create(Class<T> cls) {
        Object obj;
        l.e(cls, "modelClass");
        Provider<AbstractC27040y0> provider = this.f26599a.get(cls);
        if (provider == null) {
            Iterator<T> it = this.f26599a.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                if (cls.isAssignableFrom((Class) ((Map.Entry) obj).getKey())) {
                    break;
                }
            }
            Map.Entry entry = (Map.Entry) obj;
            provider = entry != null ? (Provider) entry.getValue() : null;
        }
        if (provider != null) {
            Object obj2 = provider.get();
            Objects.requireNonNull(obj2, "null cannot be cast to non-null type T");
            return (T) obj2;
        }
        throw new IllegalArgumentException(C22128a.m8555w2("View Model class not supported ", cls));
    }
}
