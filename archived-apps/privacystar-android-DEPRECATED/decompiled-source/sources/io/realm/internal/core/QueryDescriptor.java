package io.realm.internal.core;

import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import io.realm.RealmFieldType;
import io.realm.Sort;
import io.realm.internal.Keep;
import io.realm.internal.Table;
import io.realm.internal.fields.FieldDescriptor;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import javax.annotation.Nullable;
@Keep
/* loaded from: classes2-dex2jar.jar:io/realm/internal/core/QueryDescriptor.class */
public class QueryDescriptor {
    private final boolean[] ascendings;
    private final long[][] columnIndices;
    private final Table table;
    public static final Set<RealmFieldType> SORT_VALID_FIELD_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.FLOAT, RealmFieldType.DOUBLE, RealmFieldType.STRING, RealmFieldType.DATE)));
    public static final Set<RealmFieldType> DISTINCT_VALID_FIELD_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(RealmFieldType.BOOLEAN, RealmFieldType.INTEGER, RealmFieldType.STRING, RealmFieldType.DATE)));

    private QueryDescriptor(Table table, long[][] jArr, @Nullable Sort[] sortArr) {
        this.table = table;
        this.columnIndices = jArr;
        if (sortArr != null) {
            this.ascendings = new boolean[sortArr.length];
            for (int i = 0; i < sortArr.length; i++) {
                this.ascendings[i] = sortArr[i].getValue();
            }
            return;
        }
        this.ascendings = null;
    }

    private static void checkFieldType(FieldDescriptor fieldDescriptor, Set<RealmFieldType> set, String str, String str2) {
        if (!set.contains(fieldDescriptor.getFinalColumnType())) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s on '%s' field '%s' in '%s'.", str, fieldDescriptor.getFinalColumnType(), fieldDescriptor.getFinalColumnName(), str2));
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [long[], long[][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static io.realm.internal.core.QueryDescriptor getInstance(io.realm.internal.fields.FieldDescriptor.SchemaProxy r6, io.realm.internal.Table r7, java.lang.String[] r8, @javax.annotation.Nullable io.realm.Sort[] r9, java.util.Set<io.realm.RealmFieldType> r10, java.util.Set<io.realm.RealmFieldType> r11, java.lang.String r12) {
        /*
            r0 = r8
            if (r0 == 0) goto L_0x0054
            r0 = r8
            int r0 = r0.length
            if (r0 != 0) goto L_0x000c
            goto L_0x0054
        L_0x000c:
            r0 = r8
            int r0 = r0.length
            long[] r0 = new long[r0]
            r13 = r0
            r0 = 0
            r14 = r0
        L_0x0016:
            r0 = r14
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0048
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r14
            r2 = r2[r3]
            r3 = r10
            r4 = 0
            io.realm.internal.fields.FieldDescriptor r0 = io.realm.internal.fields.FieldDescriptor.createFieldDescriptor(r0, r1, r2, r3, r4)
            r15 = r0
            r0 = r15
            r1 = r11
            r2 = r12
            r3 = r8
            r4 = r14
            r3 = r3[r4]
            checkFieldType(r0, r1, r2, r3)
            r0 = r13
            r1 = r14
            r2 = r15
            long[] r2 = r2.getColumnIndices()
            r0[r1] = r2
            int r14 = r14 + 1
            goto L_0x0016
        L_0x0048:
            io.realm.internal.core.QueryDescriptor r0 = new io.realm.internal.core.QueryDescriptor
            r1 = r0
            r2 = r7
            r3 = r13
            r4 = r9
            r1.<init>(r2, r3, r4)
            return r0
        L_0x0054:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "You must provide at least one field name."
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.realm.internal.core.QueryDescriptor.getInstance(io.realm.internal.fields.FieldDescriptor$SchemaProxy, io.realm.internal.Table, java.lang.String[], io.realm.Sort[], java.util.Set, java.util.Set, java.lang.String):io.realm.internal.core.QueryDescriptor");
    }

    public static QueryDescriptor getInstanceForDistinct(FieldDescriptor.SchemaProxy schemaProxy, Table table, String str) {
        return getInstanceForDistinct(schemaProxy, table, new String[]{str});
    }

    public static QueryDescriptor getInstanceForDistinct(FieldDescriptor.SchemaProxy schemaProxy, Table table, String[] strArr) {
        return getInstance(schemaProxy, table, strArr, null, FieldDescriptor.NO_LINK_FIELD_TYPE, DISTINCT_VALID_FIELD_TYPES, "Distinct is not supported");
    }

    public static QueryDescriptor getInstanceForSort(FieldDescriptor.SchemaProxy schemaProxy, Table table, String str, Sort sort) {
        return getInstanceForSort(schemaProxy, table, new String[]{str}, new Sort[]{sort});
    }

    public static QueryDescriptor getInstanceForSort(FieldDescriptor.SchemaProxy schemaProxy, Table table, String[] strArr, Sort[] sortArr) {
        if (sortArr == null || sortArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least one sort order.");
        } else if (strArr.length == sortArr.length) {
            return getInstance(schemaProxy, table, strArr, sortArr, FieldDescriptor.OBJECT_LINK_FIELD_TYPE, SORT_VALID_FIELD_TYPES, "Sort is not supported");
        } else {
            throw new IllegalArgumentException("Number of fields and sort orders do not match.");
        }
    }

    private long getTablePtr() {
        return this.table.getNativePtr();
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [long[], long[][]] */
    public static QueryDescriptor getTestInstance(Table table, long[] jArr) {
        return new QueryDescriptor(table, new long[]{jArr}, null);
    }

    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    public boolean[] getAscendings() {
        return this.ascendings;
    }

    @SuppressFBWarnings({"EI_EXPOSE_REP"})
    public long[][] getColumnIndices() {
        return this.columnIndices;
    }
}
