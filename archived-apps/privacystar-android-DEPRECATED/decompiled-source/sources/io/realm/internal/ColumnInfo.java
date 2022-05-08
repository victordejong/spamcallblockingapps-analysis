package io.realm.internal;

import io.realm.RealmFieldType;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/ColumnInfo.class */
public abstract class ColumnInfo {
    private final Map<String, ColumnDetails> indicesFromColumnNames;
    private final Map<String, ColumnDetails> indicesFromJavaFieldNames;
    private final Map<String, String> javaFieldNameToInternalNames;
    private final boolean mutable;

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/ColumnInfo$ColumnDetails.class */
    public static final class ColumnDetails {
        public final long columnIndex;
        public final RealmFieldType columnType;
        public final String linkedClassName;

        private ColumnDetails(long j, RealmFieldType realmFieldType, @Nullable String str) {
            this.columnIndex = j;
            this.columnType = realmFieldType;
            this.linkedClassName = str;
        }

        ColumnDetails(Property property) {
            this(property.getColumnIndex(), property.getType(), property.getLinkedObjectName());
        }

        public String toString() {
            return "ColumnDetails[" + this.columnIndex + ", " + this.columnType + ", " + this.linkedClassName + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ColumnInfo(int i) {
        this(i, true);
    }

    private ColumnInfo(int i, boolean z) {
        this.indicesFromJavaFieldNames = new HashMap(i);
        this.indicesFromColumnNames = new HashMap(i);
        this.javaFieldNameToInternalNames = new HashMap(i);
        this.mutable = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ColumnInfo(@Nullable ColumnInfo columnInfo, boolean z) {
        this(columnInfo == null ? 0 : columnInfo.indicesFromJavaFieldNames.size(), z);
        if (columnInfo != null) {
            this.indicesFromJavaFieldNames.putAll(columnInfo.indicesFromJavaFieldNames);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void addBacklinkDetails(OsSchemaInfo osSchemaInfo, String str, String str2, String str3) {
        this.indicesFromJavaFieldNames.put(str, new ColumnDetails(osSchemaInfo.getObjectSchemaInfo(str2).getProperty(str3).getColumnIndex(), RealmFieldType.LINKING_OBJECTS, str2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long addColumnDetails(String str, String str2, OsObjectSchemaInfo osObjectSchemaInfo) {
        Property property = osObjectSchemaInfo.getProperty(str2);
        ColumnDetails columnDetails = new ColumnDetails(property);
        this.indicesFromJavaFieldNames.put(str, columnDetails);
        this.indicesFromColumnNames.put(str2, columnDetails);
        this.javaFieldNameToInternalNames.put(str, str2);
        return property.getColumnIndex();
    }

    protected abstract ColumnInfo copy(boolean z);

    protected abstract void copy(ColumnInfo columnInfo, ColumnInfo columnInfo2);

    public void copyFrom(ColumnInfo columnInfo) {
        if (!this.mutable) {
            throw new UnsupportedOperationException("Attempt to modify an immutable ColumnInfo");
        } else if (columnInfo == null) {
            throw new NullPointerException("Attempt to copy null ColumnInfo");
        } else {
            this.indicesFromJavaFieldNames.clear();
            this.indicesFromJavaFieldNames.putAll(columnInfo.indicesFromJavaFieldNames);
            this.indicesFromColumnNames.clear();
            this.indicesFromColumnNames.putAll(columnInfo.indicesFromColumnNames);
            this.javaFieldNameToInternalNames.clear();
            this.javaFieldNameToInternalNames.putAll(columnInfo.javaFieldNameToInternalNames);
            copy(columnInfo, this);
        }
    }

    @Nullable
    public ColumnDetails getColumnDetails(String str) {
        return this.indicesFromJavaFieldNames.get(str);
    }

    public long getColumnIndex(String str) {
        ColumnDetails columnDetails = this.indicesFromJavaFieldNames.get(str);
        return columnDetails == null ? -1L : columnDetails.columnIndex;
    }

    public Map<String, ColumnDetails> getIndicesMap() {
        return this.indicesFromJavaFieldNames;
    }

    @Nullable
    public String getInternalFieldName(String str) {
        return this.javaFieldNameToInternalNames.get(str);
    }

    public final boolean isMutable() {
        return this.mutable;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ColumnInfo[");
        sb.append("mutable=" + this.mutable);
        sb.append(",");
        boolean z = false;
        if (this.indicesFromJavaFieldNames != null) {
            sb.append("JavaFieldNames=[");
            boolean z2 = false;
            for (Map.Entry<String, ColumnDetails> entry : this.indicesFromJavaFieldNames.entrySet()) {
                if (z2) {
                    sb.append(",");
                }
                sb.append(entry.getKey());
                sb.append("->");
                sb.append(entry.getValue());
                z2 = true;
            }
            sb.append("]");
        }
        if (this.indicesFromColumnNames != null) {
            sb.append(", InternalFieldNames=[");
            for (Map.Entry<String, ColumnDetails> entry2 : this.indicesFromColumnNames.entrySet()) {
                if (z) {
                    sb.append(",");
                }
                sb.append(entry2.getKey());
                sb.append("->");
                sb.append(entry2.getValue());
                z = true;
            }
            sb.append("]");
        }
        sb.append("]");
        return sb.toString();
    }
}
