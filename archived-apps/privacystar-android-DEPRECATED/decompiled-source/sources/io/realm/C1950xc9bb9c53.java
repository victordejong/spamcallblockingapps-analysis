package io.realm;

import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
/* renamed from: io.realm.io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo */
/* loaded from: classes2-dex2jar.jar:io/realm/io_realm_sync_permissions_ClassPermissionsRealmProxy$ClassPermissionsColumnInfo.class */
final class C1950xc9bb9c53 extends ColumnInfo {
    long maxColumnIndexValue;
    long nameIndex;
    long permissionsIndex;

    C1950xc9bb9c53(ColumnInfo columnInfo, boolean z) {
        super(columnInfo, z);
        copy(columnInfo, this);
    }

    C1950xc9bb9c53(OsSchemaInfo osSchemaInfo) {
        super(2);
        OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(C1949x3a7fdb6e.INTERNAL_CLASS_NAME);
        this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
        this.permissionsIndex = addColumnDetails("permissions", "permissions", objectSchemaInfo);
        this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
    }

    @Override // io.realm.internal.ColumnInfo
    protected final ColumnInfo copy(boolean z) {
        return new C1950xc9bb9c53(this, z);
    }

    @Override // io.realm.internal.ColumnInfo
    protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
        C1950xc9bb9c53 io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo = (C1950xc9bb9c53) columnInfo;
        C1950xc9bb9c53 io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo2 = (C1950xc9bb9c53) columnInfo2;
        io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo2.nameIndex = io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo.nameIndex;
        io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo2.permissionsIndex = io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo.permissionsIndex;
        io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo2.maxColumnIndexValue = io_realm_sync_permissions_classpermissionsrealmproxy_classpermissionscolumninfo.maxColumnIndexValue;
    }
}
