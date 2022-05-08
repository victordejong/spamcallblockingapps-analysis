package io.realm;

import com.google.android.gms.actions.SearchIntents;
import io.realm.internal.ColumnInfo;
import io.realm.internal.OsObjectSchemaInfo;
import io.realm.internal.OsSchemaInfo;
/* loaded from: classes2-dex2jar.jar:io/realm/io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo.class */
final class io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo extends ColumnInfo {
    long errorMessageIndex;
    long matchesPropertyIndex;
    long maxColumnIndexValue;
    long nameIndex;
    long queryIndex;
    long queryParseCounterIndex;
    long statusIndex;

    io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo(ColumnInfo columnInfo, boolean z) {
        super(columnInfo, z);
        copy(columnInfo, this);
    }

    io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo(OsSchemaInfo osSchemaInfo) {
        super(6);
        OsObjectSchemaInfo objectSchemaInfo = osSchemaInfo.getObjectSchemaInfo(io_realm_sync_SubscriptionRealmProxy$ClassNameHelper.INTERNAL_CLASS_NAME);
        this.nameIndex = addColumnDetails("name", "name", objectSchemaInfo);
        this.statusIndex = addColumnDetails("status", "status", objectSchemaInfo);
        this.errorMessageIndex = addColumnDetails("errorMessage", "error_message", objectSchemaInfo);
        this.matchesPropertyIndex = addColumnDetails("matchesProperty", "matches_property", objectSchemaInfo);
        this.queryIndex = addColumnDetails(SearchIntents.EXTRA_QUERY, SearchIntents.EXTRA_QUERY, objectSchemaInfo);
        this.queryParseCounterIndex = addColumnDetails("queryParseCounter", "query_parse_counter", objectSchemaInfo);
        this.maxColumnIndexValue = objectSchemaInfo.getMaxColumnIndex();
    }

    @Override // io.realm.internal.ColumnInfo
    protected final ColumnInfo copy(boolean z) {
        return new io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo(this, z);
    }

    @Override // io.realm.internal.ColumnInfo
    protected final void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2) {
        io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo = (io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo) columnInfo;
        io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2 = (io_realm_sync_SubscriptionRealmProxy$SubscriptionColumnInfo) columnInfo2;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.nameIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.nameIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.statusIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.statusIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.errorMessageIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.errorMessageIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.matchesPropertyIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.matchesPropertyIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.queryIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.queryIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.queryParseCounterIndex = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.queryParseCounterIndex;
        io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo2.maxColumnIndexValue = io_realm_sync_subscriptionrealmproxy_subscriptioncolumninfo.maxColumnIndexValue;
    }
}
