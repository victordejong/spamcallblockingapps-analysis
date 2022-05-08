package io.realm;

import io.realm.internal.ColumnIndices;
import io.realm.internal.RealmProxyMediator;
import io.realm.internal.Table;
import java.util.LinkedHashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/ImmutableRealmSchema.class */
public class ImmutableRealmSchema extends RealmSchema {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableRealmSchema(BaseRealm baseRealm, ColumnIndices columnIndices) {
        super(baseRealm, columnIndices);
    }

    @Override // io.realm.RealmSchema
    /* renamed from: d */
    public RealmObjectSchema mo2857d(String str) {
        throw new UnsupportedOperationException("This 'RealmSchema' is immutable. Please use 'DynamicRealm.getSchema() to get a mutable instance.");
    }

    @Override // io.realm.RealmSchema
    /* renamed from: e */
    public RealmObjectSchema mo2856e(String str) {
        m2859b(str, "Null or empty class names are not allowed");
        String v = Table.m2631v(str);
        if (!this.f19973e.m3162N().hasTable(v)) {
            return null;
        }
        return new ImmutableRealmObjectSchema(this.f19973e, this, this.f19973e.m3162N().getTable(v), m2853h(str));
    }

    @Override // io.realm.RealmSchema
    /* renamed from: f */
    public Set<RealmObjectSchema> mo2855f() {
        RealmProxyMediator p = this.f19973e.m3164J().m2983p();
        Set<Class<? extends RealmModel>> f = p.mo2561f();
        LinkedHashSet linkedHashSet = new LinkedHashSet(f.size());
        for (Class<? extends RealmModel> cls : f) {
            linkedHashSet.add(mo2856e(p.m2682g(cls)));
        }
        return linkedHashSet;
    }
}
