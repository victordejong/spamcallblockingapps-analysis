package io.realm.internal.fields;

import io.realm.RealmFieldType;
import io.realm.internal.ColumnInfo;
import io.realm.internal.Table;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/fields/FieldDescriptor.class */
public abstract class FieldDescriptor {

    /* renamed from: i */
    public static final Set<RealmFieldType> f20223i;

    /* renamed from: j */
    public static final Set<RealmFieldType> f20224j;

    /* renamed from: k */
    public static final Set<RealmFieldType> f20225k;

    /* renamed from: a */
    private final List<String> f20227a;

    /* renamed from: b */
    private final Set<RealmFieldType> f20228b;

    /* renamed from: c */
    private final Set<RealmFieldType> f20229c;

    /* renamed from: d */
    private String f20230d;

    /* renamed from: e */
    private RealmFieldType f20231e;

    /* renamed from: f */
    private long[] f20232f;

    /* renamed from: g */
    private long[] f20233g;

    /* renamed from: h */
    private static final Pattern f20222h = Pattern.compile("\\.");

    /* renamed from: l */
    public static final Set<RealmFieldType> f20226l = Collections.emptySet();

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/fields/FieldDescriptor$SchemaProxy.class */
    public interface SchemaProxy {
        /* renamed from: a */
        ColumnInfo mo2568a(String str);

        /* renamed from: b */
        boolean mo2567b();

        /* renamed from: c */
        long mo2566c(String str);
    }

    static {
        HashSet hashSet = new HashSet(3);
        hashSet.add(RealmFieldType.OBJECT);
        hashSet.add(RealmFieldType.LIST);
        hashSet.add(RealmFieldType.LINKING_OBJECTS);
        f20223i = Collections.unmodifiableSet(hashSet);
        HashSet hashSet2 = new HashSet(2);
        hashSet2.add(RealmFieldType.OBJECT);
        hashSet2.add(RealmFieldType.LIST);
        f20224j = Collections.unmodifiableSet(hashSet2);
        HashSet hashSet3 = new HashSet(1);
        hashSet3.add(RealmFieldType.LIST);
        Collections.unmodifiableSet(hashSet3);
        HashSet hashSet4 = new HashSet(1);
        hashSet4.add(RealmFieldType.OBJECT);
        f20225k = Collections.unmodifiableSet(hashSet4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public FieldDescriptor(String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        List<String> j = m2572j(str);
        this.f20227a = j;
        if (j.size() > 0) {
            this.f20228b = set;
            this.f20229c = set2;
            return;
        }
        throw new IllegalArgumentException("Invalid query: Empty field descriptor");
    }

    /* renamed from: b */
    private void m2580b() {
        if (this.f20231e == null) {
            mo2581a(this.f20227a);
        }
    }

    /* renamed from: c */
    public static FieldDescriptor m2579c(SchemaProxy schemaProxy, Table table, String str, Set<RealmFieldType> set, Set<RealmFieldType> set2) {
        FieldDescriptor fieldDescriptor;
        if (schemaProxy == null || !schemaProxy.mo2567b()) {
            if (set == null) {
                set = f20224j;
            }
            fieldDescriptor = new DynamicFieldDescriptor(table, str, set, set2);
        } else {
            String l = table.m2641l();
            if (set == null) {
                set = f20223i;
            }
            fieldDescriptor = new CachedFieldDescriptor(schemaProxy, l, str, set, set2);
        }
        return fieldDescriptor;
    }

    /* renamed from: d */
    public static FieldDescriptor m2578d(SchemaProxy schemaProxy, Table table, String str, RealmFieldType... realmFieldTypeArr) {
        return m2579c(schemaProxy, table, str, null, new HashSet(Arrays.asList(realmFieldTypeArr)));
    }

    /* renamed from: j */
    private List<String> m2572j(String str) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("Invalid query: field name is empty");
        }
        int lastIndexOf = str.lastIndexOf(".");
        if (lastIndexOf != str.length() - 1) {
            return lastIndexOf > -1 ? Arrays.asList(f20222h.split(str)) : Collections.singletonList(str);
        }
        throw new IllegalArgumentException("Invalid query: field name must not end with a period ('.')");
    }

    /* renamed from: l */
    private void m2570l(String str, String str2, RealmFieldType realmFieldType, Set<RealmFieldType> set) {
        if (!set.contains(realmFieldType)) {
            throw new IllegalArgumentException(String.format(Locale.US, "Invalid query: field '%s' in class '%s' is of invalid type '%s'.", str2, str, realmFieldType.toString()));
        }
    }

    /* renamed from: a */
    protected abstract void mo2581a(List<String> list);

    /* renamed from: e */
    public final long[] m2577e() {
        m2580b();
        long[] jArr = this.f20232f;
        return Arrays.copyOf(jArr, jArr.length);
    }

    /* renamed from: f */
    public final String m2576f() {
        m2580b();
        return this.f20230d;
    }

    /* renamed from: g */
    public final RealmFieldType m2575g() {
        m2580b();
        return this.f20231e;
    }

    /* renamed from: h */
    public final long[] m2574h() {
        m2580b();
        long[] jArr = this.f20233g;
        return Arrays.copyOf(jArr, jArr.length);
    }

    /* renamed from: i */
    public final int m2573i() {
        return this.f20227a.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: k */
    public final void m2571k(String str, String str2, RealmFieldType realmFieldType, long[] jArr, long[] jArr2) {
        Set<RealmFieldType> set = this.f20229c;
        if (set != null && set.size() > 0) {
            m2570l(str, str2, realmFieldType, this.f20229c);
        }
        this.f20230d = str2;
        this.f20231e = realmFieldType;
        this.f20232f = jArr;
        this.f20233g = jArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: m */
    public final void m2569m(String str, String str2, RealmFieldType realmFieldType) {
        m2570l(str, str2, realmFieldType, this.f20228b);
    }
}
