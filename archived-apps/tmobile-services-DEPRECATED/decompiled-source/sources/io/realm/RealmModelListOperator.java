package io.realm;

import io.realm.internal.OsList;
import io.realm.internal.OsObjectStore;
import io.realm.internal.RealmObjectProxy;
import java.util.Locale;
import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/RealmModelListOperator.class */
public final class RealmModelListOperator<T> extends ManagedListOperator<T> {
    @Nullable

    /* renamed from: d */
    private final String f19943d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RealmModelListOperator(BaseRealm baseRealm, OsList osList, @Nullable Class<T> cls, @Nullable String str) {
        super(baseRealm, osList, cls);
        this.f19943d = str;
    }

    /* renamed from: s */
    private void m2940s(int i) {
        int r = m3113r();
        if (i < 0 || r < i) {
            throw new IndexOutOfBoundsException("Invalid index " + i + ", size is " + this.f19832b.m2781O());
        }
    }

    /* renamed from: t */
    private <E extends RealmModel> E m2939t(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            if (realmObjectProxy instanceof DynamicRealmObject) {
                String str = this.f19943d;
                BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
                BaseRealm baseRealm = this.f19831a;
                if (d == baseRealm) {
                    String type = ((DynamicRealmObject) e).getType();
                    if (str.equals(type)) {
                        return e;
                    }
                    throw new IllegalArgumentException(String.format(Locale.US, "The object has a different type from list's. Type of the list is '%s', type of object is '%s'.", str, type));
                } else if (baseRealm.f19806g == realmObjectProxy.realmGet$proxyState().m3085d().f19806g) {
                    throw new IllegalArgumentException("Cannot copy DynamicRealmObject between Realm instances.");
                } else {
                    throw new IllegalStateException("Cannot copy an object to a Realm instance created in another thread.");
                }
            } else if (realmObjectProxy.realmGet$proxyState().m3084e() != null && realmObjectProxy.realmGet$proxyState().m3085d().m3163K().equals(this.f19831a.m3163K())) {
                if (this.f19831a == realmObjectProxy.realmGet$proxyState().m3085d()) {
                    return e;
                }
                throw new IllegalArgumentException("Cannot copy an object from another Realm instance.");
            }
        }
        Realm realm = (Realm) this.f19831a;
        return OsObjectStore.m2744b(realm.m3162N(), realm.m3164J().m2983p().m2682g(e.getClass())) != null ? (E) realm.m3045v0(e, new ImportFlag[0]) : (E) realm.m3046u0(e, new ImportFlag[0]);
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: c */
    public void mo2845c(Object obj) {
        this.f19832b.m2771j(((RealmObjectProxy) m2939t((RealmModel) obj)).realmGet$proxyState().m3084e().getObjectKey());
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: d */
    protected void mo2844d(@Nullable Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("RealmList does not accept null values.");
        } else if (!(obj instanceof RealmModel)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, "Unacceptable value type. Acceptable: %1$s, actual: %2$s .", "java.lang.String", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: e */
    public boolean mo2843e() {
        return true;
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: f */
    public T mo2842f(int i) {
        return (T) this.f19831a.m3165I(this.f19833c, this.f19943d, this.f19832b.m2766o(i));
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: i */
    protected void mo2942i(int i) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: j */
    public void mo2841j(int i, Object obj) {
        m2940s(i);
        this.f19832b.m2757x(i, ((RealmObjectProxy) m2939t((RealmModel) obj)).realmGet$proxyState().m3084e().getObjectKey());
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: p */
    protected void mo2941p(int i) {
        throw new RuntimeException("Should not reach here.");
    }

    @Override // io.realm.ManagedListOperator
    /* renamed from: q */
    protected void mo2840q(int i, Object obj) {
        this.f19832b.m2783M(i, ((RealmObjectProxy) m2939t((RealmModel) obj)).realmGet$proxyState().m3084e().getObjectKey());
    }
}
