package com.uphyca.stetho_realm;

import android.database.sqlite.SQLiteException;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcResult;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsMethod;
import com.facebook.stetho.json.ObjectMapper;
import com.facebook.stetho.json.annotation.JsonProperty;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.uphyca.stetho_realm.RealmPeerManager;
import io.realm.internal.OsList;
import io.realm.internal.Row;
import io.realm.internal.Table;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database.class */
public class Database implements ChromeDevtoolsDomain {
    private static final String NULL = "[null]";
    private final boolean ascendingOrder;
    private DateFormat dateTimeFormatter;
    private final long limit;
    private final ObjectMapper objectMapper = new ObjectMapper();
    private final RealmPeerManager realmPeerManager;
    private final boolean withMetaTables;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.uphyca.stetho_realm.Database$2 */
    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$2.class */
    public static /* synthetic */ class C20922 {
        static final /* synthetic */ int[] $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            int[] iArr = new int[StethoRealmFieldType.values().length];
            $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType = iArr;
            try {
                iArr[StethoRealmFieldType.INTEGER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType[StethoRealmFieldType.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType[StethoRealmFieldType.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType[StethoRealmFieldType.BINARY.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType[StethoRealmFieldType.FLOAT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType[StethoRealmFieldType.DOUBLE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType[StethoRealmFieldType.OLD_DATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType[StethoRealmFieldType.DATE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType[StethoRealmFieldType.OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$uphyca$stetho_realm$Database$StethoRealmFieldType[StethoRealmFieldType.LIST.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$AddDatabaseEvent.class */
    public static class AddDatabaseEvent {
        @JsonProperty(required = true)
        public DatabaseObject database;
    }

    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$DatabaseObject.class */
    public static class DatabaseObject {
        @JsonProperty(required = true)
        public String domain;
        @JsonProperty(required = true)

        /* renamed from: id */
        public String f14939id;
        @JsonProperty(required = true)
        public String name;
        @JsonProperty(required = true)
        public String version;
    }

    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$Error.class */
    public static class Error {
        @JsonProperty(required = true)
        public int code;
        @JsonProperty(required = true)
        public String message;
    }

    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$ExecuteSQLRequest.class */
    private static class ExecuteSQLRequest {
        @JsonProperty(required = true)
        public String databaseId;
        @JsonProperty(required = true)
        public String query;

        private ExecuteSQLRequest() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$ExecuteSQLResponse.class */
    public static class ExecuteSQLResponse implements JsonRpcResult {
        @JsonProperty
        public List<String> columnNames;
        @JsonProperty
        public Error sqlError;
        @JsonProperty
        public List<Object> values;

        private ExecuteSQLResponse() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$GetDatabaseTableNamesRequest.class */
    private static class GetDatabaseTableNamesRequest {
        @JsonProperty(required = true)
        public String databaseId;

        private GetDatabaseTableNamesRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$GetDatabaseTableNamesResponse.class */
    private static class GetDatabaseTableNamesResponse implements JsonRpcResult {
        @JsonProperty(required = true)
        public List<String> tableNames;

        private GetDatabaseTableNamesResponse() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$RowFetcher.class */
    public static class RowFetcher {
        private static RowFetcher sInstance = new RowFetcher();

        RowFetcher() {
        }

        static RowFetcher getInstance() {
            return sInstance;
        }

        Row getRow(Table table, long j) {
            return table.m2642k(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$RowWrapper.class */
    public static class RowWrapper {
        private final Row row;

        RowWrapper(Row row) {
            this.row = row;
        }

        static RowWrapper wrap(Row row) {
            return new RowWrapper(row);
        }

        byte[] getBinaryByteArray(long j) {
            return this.row.getBinaryByteArray(j);
        }

        boolean getBoolean(long j) {
            return this.row.getBoolean(j);
        }

        StethoRealmFieldType getColumnType(long j) {
            String name = this.row.getColumnType(j).name();
            return name.equals("INTEGER") ? StethoRealmFieldType.INTEGER : name.equals("BOOLEAN") ? StethoRealmFieldType.BOOLEAN : name.equals("STRING") ? StethoRealmFieldType.STRING : name.equals("BINARY") ? StethoRealmFieldType.BINARY : name.equals("UNSUPPORTED_TABLE") ? StethoRealmFieldType.UNSUPPORTED_TABLE : name.equals("UNSUPPORTED_MIXED") ? StethoRealmFieldType.UNSUPPORTED_MIXED : name.equals("UNSUPPORTED_DATE") ? StethoRealmFieldType.OLD_DATE : name.equals("DATE") ? StethoRealmFieldType.DATE : name.equals("FLOAT") ? StethoRealmFieldType.FLOAT : name.equals("DOUBLE") ? StethoRealmFieldType.DOUBLE : name.equals("OBJECT") ? StethoRealmFieldType.OBJECT : name.equals("LIST") ? StethoRealmFieldType.LIST : StethoRealmFieldType.UNKNOWN;
        }

        Date getDate(long j) {
            return this.row.getDate(j);
        }

        double getDouble(long j) {
            return this.row.getDouble(j);
        }

        float getFloat(long j) {
            return this.row.getFloat(j);
        }

        long getIndex() {
            return this.row.getIndex();
        }

        long getLink(long j) {
            return this.row.getLink(j);
        }

        OsList getLinkList(long j) {
            return this.row.getModelList(j);
        }

        long getLong(long j) {
            return this.row.getLong(j);
        }

        String getString(long j) {
            return this.row.getString(j);
        }

        boolean isNull(long j) {
            return this.row.isNull(j);
        }

        boolean isNullLink(long j) {
            return this.row.isNullLink(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/Database$StethoRealmFieldType.class */
    public enum StethoRealmFieldType {
        INTEGER(0),
        BOOLEAN(1),
        STRING(2),
        BINARY(4),
        UNSUPPORTED_TABLE(5),
        UNSUPPORTED_MIXED(6),
        OLD_DATE(7),
        DATE(8),
        FLOAT(9),
        DOUBLE(10),
        OBJECT(12),
        LIST(13),
        UNKNOWN(-1);
        
        private final int nativeValue;

        StethoRealmFieldType(int i) {
            this.nativeValue = i;
        }

        public int getValue() {
            return this.nativeValue;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Database(String str, RealmFilesProvider realmFilesProvider, boolean z, long j, boolean z2, byte[] bArr, Map<String, byte[]> map) {
        this.realmPeerManager = new RealmPeerManager(str, realmFilesProvider, bArr, map);
        this.withMetaTables = z;
        this.limit = j;
        this.ascendingOrder = z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.uphyca.stetho_realm.Database$RowFetcher] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r20v0, types: [long] */
    /* JADX WARN: Type inference failed for: r20v3 */
    /* JADX WARN: Type inference failed for: r20v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.Object> flattenRows(io.realm.internal.Table r7, long r8, boolean r10) {
        /*
            Method dump skipped, instructions count: 807
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.uphyca.stetho_realm.Database.flattenRows(io.realm.internal.Table, long, boolean):java.util.List");
    }

    private String formatDate(Date date) {
        if (this.dateTimeFormatter == null) {
            this.dateTimeFormatter = SimpleDateFormat.getDateTimeInstance(1, 1);
        }
        return this.dateTimeFormatter.format(date) + " (" + date.getTime() + ')';
    }

    private String formatList(OsList osList) {
        StringBuilder sb = new StringBuilder(osList.m2767n().m2633t());
        sb.append("{");
        long O = osList.m2781O();
        for (long j = 0; j < O; j++) {
            sb.append(osList.m2766o(j).getIndex());
            sb.append(',');
        }
        if (O != 0) {
            sb.setLength(sb.length() - 1);
        }
        sb.append("}");
        return sb.toString();
    }

    @ChromeDevtoolsMethod
    public void disable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.realmPeerManager.removePeer(jsonRpcPeer);
    }

    @ChromeDevtoolsMethod
    public void enable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.realmPeerManager.addPeer(jsonRpcPeer);
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult executeSQL(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        ExecuteSQLRequest executeSQLRequest = (ExecuteSQLRequest) this.objectMapper.convertValue(jSONObject, ExecuteSQLRequest.class);
        try {
            return (JsonRpcResult) this.realmPeerManager.executeSQL(executeSQLRequest.databaseId, executeSQLRequest.query, new RealmPeerManager.ExecuteResultHandler<ExecuteSQLResponse>() { // from class: com.uphyca.stetho_realm.Database.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.uphyca.stetho_realm.RealmPeerManager.ExecuteResultHandler
                public ExecuteSQLResponse handleInsert(long j) throws SQLiteException {
                    ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
                    executeSQLResponse.columnNames = Collections.singletonList("ID of last inserted row");
                    executeSQLResponse.values = Collections.singletonList(Long.valueOf(j));
                    return executeSQLResponse;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.uphyca.stetho_realm.RealmPeerManager.ExecuteResultHandler
                public ExecuteSQLResponse handleRawQuery() throws SQLiteException {
                    ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
                    executeSQLResponse.columnNames = Collections.singletonList(FirebaseAnalytics.Param.SUCCESS);
                    executeSQLResponse.values = Collections.singletonList("true");
                    return executeSQLResponse;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.uphyca.stetho_realm.RealmPeerManager.ExecuteResultHandler
                public ExecuteSQLResponse handleSelect(Table table, boolean z) throws SQLiteException {
                    ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
                    ArrayList arrayList = new ArrayList();
                    if (z) {
                        arrayList.add("<index>");
                    }
                    int i = 0;
                    while (true) {
                        long j = i;
                        if (j < table.m2639n()) {
                            arrayList.add(table.m2637p(j));
                            i++;
                        } else {
                            executeSQLResponse.columnNames = arrayList;
                            Database database = Database.this;
                            executeSQLResponse.values = database.flattenRows(table, database.limit, z);
                            return executeSQLResponse;
                        }
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.uphyca.stetho_realm.RealmPeerManager.ExecuteResultHandler
                public ExecuteSQLResponse handleUpdateDelete(int i) throws SQLiteException {
                    ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
                    executeSQLResponse.columnNames = Collections.singletonList("Modified rows");
                    executeSQLResponse.values = Collections.singletonList(Integer.valueOf(i));
                    return executeSQLResponse;
                }
            });
        } catch (SQLiteException e) {
            Error error = new Error();
            error.code = 0;
            error.message = e.getMessage();
            ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
            executeSQLResponse.sqlError = error;
            return executeSQLResponse;
        }
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult getDatabaseTableNames(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        GetDatabaseTableNamesRequest getDatabaseTableNamesRequest = (GetDatabaseTableNamesRequest) this.objectMapper.convertValue(jSONObject, GetDatabaseTableNamesRequest.class);
        GetDatabaseTableNamesResponse getDatabaseTableNamesResponse = new GetDatabaseTableNamesResponse();
        getDatabaseTableNamesResponse.tableNames = this.realmPeerManager.getDatabaseTableNames(getDatabaseTableNamesRequest.databaseId, this.withMetaTables);
        return getDatabaseTableNamesResponse;
    }
}
