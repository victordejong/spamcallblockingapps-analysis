package io.realm;

import io.realm.RealmObjectSchema;
import io.realm.internal.ColumnInfo;
import io.realm.internal.Table;
import io.realm.internal.fields.FieldDescriptor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/realm/ImmutableRealmObjectSchema.class */
public class ImmutableRealmObjectSchema extends RealmObjectSchema {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableRealmObjectSchema(BaseRealm baseRealm, RealmSchema realmSchema, Table table) {
        super(baseRealm, realmSchema, table, new RealmObjectSchema.DynamicColumnIndices(table));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImmutableRealmObjectSchema(BaseRealm baseRealm, RealmSchema realmSchema, Table table, ColumnInfo columnInfo) {
        super(baseRealm, realmSchema, table, columnInfo);
    }

    @Override // io.realm.RealmObjectSchema
    /* renamed from: a */
    public RealmObjectSchema mo2938a(String str, Class<?> cls, FieldAttribute... fieldAttributeArr) {
        throw new UnsupportedOperationException("This 'RealmObjectSchema' is immutable. Please use 'DynamicRealm.getSchema() to get a mutable instance.");
    }

    @Override // io.realm.RealmObjectSchema
    /* renamed from: g */
    FieldDescriptor mo2932g(String str, RealmFieldType... realmFieldTypeArr) {
        return FieldDescriptor.m2578d(m2929j(), m2928k(), str, realmFieldTypeArr);
    }

    @Override // io.realm.RealmObjectSchema
    /* renamed from: o */
    public RealmObjectSchema mo2924o(String str) {
        throw new UnsupportedOperationException("This 'RealmObjectSchema' is immutable. Please use 'DynamicRealm.getSchema() to get a mutable instance.");
    }

    @Override // io.realm.RealmObjectSchema
    /* renamed from: p */
    public RealmObjectSchema mo2923p(String str, boolean z) {
        throw new UnsupportedOperationException("This 'RealmObjectSchema' is immutable. Please use 'DynamicRealm.getSchema() to get a mutable instance.");
    }
}
