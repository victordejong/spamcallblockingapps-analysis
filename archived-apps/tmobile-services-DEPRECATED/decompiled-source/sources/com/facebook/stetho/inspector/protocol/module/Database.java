package com.facebook.stetho.inspector.protocol.module;

import android.annotation.TargetApi;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import com.facebook.stetho.common.LogUtil;
import com.facebook.stetho.common.Util;
import com.facebook.stetho.inspector.helper.ChromePeerManager;
import com.facebook.stetho.inspector.helper.ObjectIdMapper;
import com.facebook.stetho.inspector.helper.PeersRegisteredListener;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcException;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcPeer;
import com.facebook.stetho.inspector.jsonrpc.JsonRpcResult;
import com.facebook.stetho.inspector.jsonrpc.protocol.JsonRpcError;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain;
import com.facebook.stetho.inspector.protocol.ChromeDevtoolsMethod;
import com.facebook.stetho.inspector.protocol.module.BaseDatabaseDriver;
import com.facebook.stetho.json.ObjectMapper;
import com.facebook.stetho.json.annotation.JsonProperty;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;
import org.json.JSONObject;
@TargetApi(11)
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database.class */
public class Database implements ChromeDevtoolsDomain {
    private static final int MAX_BLOB_LENGTH = 512;
    private static final int MAX_EXECUTE_RESULTS = 250;
    private static final String UNKNOWN_BLOB_LABEL = "{blob}";
    private final DatabasePeerRegistrationListener mPeerListener;
    private List<DatabaseDriver2> mDatabaseDrivers = new ArrayList();
    private final ChromePeerManager mChromePeerManager = new ChromePeerManager();
    private final ObjectMapper mObjectMapper = new ObjectMapper();

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent.class */
    public static class AddDatabaseEvent {
        @JsonProperty(required = true)
        public DatabaseObject database;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$DatabaseDescriptorHolder.class */
    public static class DatabaseDescriptorHolder {
        public final DatabaseDescriptor descriptor;
        public final DatabaseDriver2 driver;

        public DatabaseDescriptorHolder(DatabaseDriver2 databaseDriver2, DatabaseDescriptor databaseDescriptor) {
            this.driver = databaseDriver2;
            this.descriptor = databaseDescriptor;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$DatabaseDriver.class */
    public static abstract class DatabaseDriver extends BaseDatabaseDriver<String> {
        public DatabaseDriver(Context context) {
            super(context);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$DatabaseObject.class */
    public static class DatabaseObject {
        @JsonProperty(required = true)
        public String domain;
        @JsonProperty(required = true)

        /* renamed from: id */
        public String f6476id;
        @JsonProperty(required = true)
        public String name;
        @JsonProperty(required = true)
        public String version;
    }

    @ThreadSafe
    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$DatabasePeerRegistrationListener.class */
    private static class DatabasePeerRegistrationListener extends PeersRegisteredListener {
        private final List<DatabaseDriver2> mDatabaseDrivers;
        @GuardedBy
        private final SparseArray<DatabaseDescriptorHolder> mDatabaseHolders;
        @GuardedBy
        private final ObjectIdMapper mDatabaseIdMapper;

        private DatabasePeerRegistrationListener(List<DatabaseDriver2> list) {
            this.mDatabaseHolders = new SparseArray<>();
            this.mDatabaseIdMapper = new ObjectIdMapper();
            this.mDatabaseDrivers = list;
        }

        public DatabaseDescriptorHolder getDatabaseDescriptorHolder(String str) {
            return this.mDatabaseHolders.get(Integer.parseInt(str));
        }

        @Override // com.facebook.stetho.inspector.helper.PeersRegisteredListener
        protected void onFirstPeerRegistered() {
            synchronized (this) {
                for (DatabaseDriver2 databaseDriver2 : this.mDatabaseDrivers) {
                    for (DESC desc : databaseDriver2.getDatabaseNames()) {
                        if (this.mDatabaseIdMapper.getIdForObject(desc) == null) {
                            this.mDatabaseHolders.put(Integer.valueOf(this.mDatabaseIdMapper.putObject(desc)).intValue(), new DatabaseDescriptorHolder(databaseDriver2, desc));
                        }
                    }
                }
            }
        }

        @Override // com.facebook.stetho.inspector.helper.PeersRegisteredListener
        protected void onLastPeerUnregistered() {
            synchronized (this) {
                this.mDatabaseIdMapper.clear();
                this.mDatabaseHolders.clear();
            }
        }

        @Override // com.facebook.stetho.inspector.helper.PeersRegisteredListener
        protected void onPeerAdded(JsonRpcPeer jsonRpcPeer) {
            synchronized (this) {
                int size = this.mDatabaseHolders.size();
                for (int i = 0; i < size; i++) {
                    int keyAt = this.mDatabaseHolders.keyAt(i);
                    DatabaseDescriptorHolder valueAt = this.mDatabaseHolders.valueAt(i);
                    DatabaseObject databaseObject = new DatabaseObject();
                    databaseObject.f6476id = String.valueOf(keyAt);
                    databaseObject.name = valueAt.descriptor.name();
                    databaseObject.domain = valueAt.driver.getContext().getPackageName();
                    databaseObject.version = "N/A";
                    AddDatabaseEvent addDatabaseEvent = new AddDatabaseEvent();
                    addDatabaseEvent.database = databaseObject;
                    jsonRpcPeer.invokeMethod("Database.addDatabase", addDatabaseEvent, null);
                }
            }
        }

        @Override // com.facebook.stetho.inspector.helper.PeersRegisteredListener
        protected void onPeerRemoved(JsonRpcPeer jsonRpcPeer) {
            synchronized (this) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$Error.class */
    public static class Error {
        @JsonProperty(required = true)
        public int code;
        @JsonProperty(required = true)
        public String message;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLRequest.class */
    public static class ExecuteSQLRequest {
        @JsonProperty(required = true)
        public String databaseId;
        @JsonProperty(required = true)
        public String query;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse.class */
    public static class ExecuteSQLResponse implements JsonRpcResult {
        @JsonProperty
        public List<String> columnNames;
        @JsonProperty
        public Error sqlError;
        @JsonProperty
        public List<String> values;
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesRequest.class */
    private static class GetDatabaseTableNamesRequest {
        @JsonProperty(required = true)
        public String databaseId;

        private GetDatabaseTableNamesRequest() {
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesResponse.class */
    private static class GetDatabaseTableNamesResponse implements JsonRpcResult {
        @JsonProperty(required = true)
        public List<String> tableNames;

        private GetDatabaseTableNamesResponse() {
        }
    }

    public Database() {
        DatabasePeerRegistrationListener databasePeerRegistrationListener = new DatabasePeerRegistrationListener(this.mDatabaseDrivers);
        this.mPeerListener = databasePeerRegistrationListener;
        this.mChromePeerManager.setListener(databasePeerRegistrationListener);
    }

    private static String blobToString(byte[] bArr) {
        if (bArr.length > MAX_BLOB_LENGTH || !fastIsAscii(bArr)) {
            return UNKNOWN_BLOB_LABEL;
        }
        try {
            return new String(bArr, "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            return UNKNOWN_BLOB_LABEL;
        }
    }

    private static boolean fastIsAscii(byte[] bArr) {
        for (byte b : bArr) {
            if ((b & Byte.MIN_VALUE) != 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ArrayList<String> flattenRows(Cursor cursor, int i) {
        Util.throwIfNot(i >= 0);
        ArrayList<String> arrayList = new ArrayList<>();
        int columnCount = cursor.getColumnCount();
        for (int i2 = 0; i2 < i && cursor.moveToNext(); i2++) {
            for (int i3 = 0; i3 < columnCount; i3++) {
                int type = cursor.getType(i3);
                if (type == 0) {
                    arrayList.add(null);
                } else if (type == 1) {
                    arrayList.add(String.valueOf(cursor.getLong(i3)));
                } else if (type == 2) {
                    arrayList.add(String.valueOf(cursor.getDouble(i3)));
                } else if (type != 4) {
                    arrayList.add(cursor.getString(i3));
                } else {
                    arrayList.add(blobToString(cursor.getBlob(i3)));
                }
            }
        }
        if (!cursor.isAfterLast()) {
            for (int i4 = 0; i4 < columnCount; i4++) {
                arrayList.add("{truncated}");
            }
        }
        return arrayList;
    }

    public void add(DatabaseDriver2 databaseDriver2) {
        this.mDatabaseDrivers.add(databaseDriver2);
    }

    @ChromeDevtoolsMethod
    public void disable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.mChromePeerManager.removePeer(jsonRpcPeer);
    }

    @ChromeDevtoolsMethod
    public void enable(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        this.mChromePeerManager.addPeer(jsonRpcPeer);
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult executeSQL(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) {
        ExecuteSQLRequest executeSQLRequest = (ExecuteSQLRequest) this.mObjectMapper.convertValue(jSONObject, ExecuteSQLRequest.class);
        DatabaseDescriptorHolder databaseDescriptorHolder = this.mPeerListener.getDatabaseDescriptorHolder(executeSQLRequest.databaseId);
        try {
            return databaseDescriptorHolder.driver.executeSQL(databaseDescriptorHolder.descriptor, executeSQLRequest.query, new BaseDatabaseDriver.ExecuteResultHandler<ExecuteSQLResponse>() { // from class: com.facebook.stetho.inspector.protocol.module.Database.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.facebook.stetho.inspector.protocol.module.BaseDatabaseDriver.ExecuteResultHandler
                public ExecuteSQLResponse handleInsert(long j) throws SQLiteException {
                    ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
                    executeSQLResponse.columnNames = Collections.singletonList("ID of last inserted row");
                    executeSQLResponse.values = Collections.singletonList(String.valueOf(j));
                    return executeSQLResponse;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.facebook.stetho.inspector.protocol.module.BaseDatabaseDriver.ExecuteResultHandler
                public ExecuteSQLResponse handleRawQuery() throws SQLiteException {
                    ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
                    executeSQLResponse.columnNames = Collections.singletonList(FirebaseAnalytics.Param.SUCCESS);
                    executeSQLResponse.values = Collections.singletonList("true");
                    return executeSQLResponse;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.facebook.stetho.inspector.protocol.module.BaseDatabaseDriver.ExecuteResultHandler
                public ExecuteSQLResponse handleSelect(Cursor cursor) throws SQLiteException {
                    ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
                    executeSQLResponse.columnNames = Arrays.asList(cursor.getColumnNames());
                    executeSQLResponse.values = Database.flattenRows(cursor, Database.MAX_EXECUTE_RESULTS);
                    return executeSQLResponse;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.facebook.stetho.inspector.protocol.module.BaseDatabaseDriver.ExecuteResultHandler
                public ExecuteSQLResponse handleUpdateDelete(int i) throws SQLiteException {
                    ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
                    executeSQLResponse.columnNames = Collections.singletonList("Modified rows");
                    executeSQLResponse.values = Collections.singletonList(String.valueOf(i));
                    return executeSQLResponse;
                }
            });
        } catch (RuntimeException e) {
            LogUtil.m15613e(e, "Exception executing: %s", executeSQLRequest.query);
            Error error = new Error();
            error.code = 0;
            error.message = e.getMessage();
            ExecuteSQLResponse executeSQLResponse = new ExecuteSQLResponse();
            executeSQLResponse.sqlError = error;
            return executeSQLResponse;
        }
    }

    @ChromeDevtoolsMethod
    public JsonRpcResult getDatabaseTableNames(JsonRpcPeer jsonRpcPeer, JSONObject jSONObject) throws JsonRpcException {
        DatabaseDescriptorHolder databaseDescriptorHolder = this.mPeerListener.getDatabaseDescriptorHolder(((GetDatabaseTableNamesRequest) this.mObjectMapper.convertValue(jSONObject, GetDatabaseTableNamesRequest.class)).databaseId);
        try {
            GetDatabaseTableNamesResponse getDatabaseTableNamesResponse = new GetDatabaseTableNamesResponse();
            getDatabaseTableNamesResponse.tableNames = databaseDescriptorHolder.driver.getTableNames(databaseDescriptorHolder.descriptor);
            return getDatabaseTableNamesResponse;
        } catch (SQLiteException e) {
            throw new JsonRpcException(new JsonRpcError(JsonRpcError.ErrorCode.INVALID_REQUEST, e.toString(), null));
        }
    }
}
