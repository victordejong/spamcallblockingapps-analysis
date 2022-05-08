package io.realm;

import android.annotation.SuppressLint;
import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.internal.CheckedRow;
import io.realm.internal.OsResults;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.Table;
import io.realm.internal.UncheckedRow;
import io.realm.internal.Util;
import io.realm.internal.android.JsonUtils;
import io.realm.log.RealmLog;
import io.realm.p458rx.CollectionChange;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/RealmResults.class */
public class RealmResults<E> extends OrderedRealmCollectionImpl<E> {

    /* renamed from: io.realm.RealmResults$1 */
    /* loaded from: classes3-dex2jar.jar:io/realm/RealmResults$1.class */
    public static /* synthetic */ class C108921 {
        public static final /* synthetic */ int[] $SwitchMap$io$realm$RealmFieldType = new int[RealmFieldType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00a1 -> B:62:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a5 -> B:48:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a9 -> B:44:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ad -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b1 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b5 -> B:58:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b9 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00bd -> B:64:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c1 -> B:60:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c5 -> B:46:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c9 -> B:42:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00cd -> B:52:0x0094). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.INTEGER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DATE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.LIST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.INTEGER_LIST.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BOOLEAN_LIST.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.STRING_LIST.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.BINARY_LIST.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DATE_LIST.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.FLOAT_LIST.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$io$realm$RealmFieldType[RealmFieldType.DOUBLE_LIST.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    public RealmResults(BaseRealm baseRealm, OsResults osResults, Class<E> cls) {
        super(baseRealm, osResults, cls);
    }

    public RealmResults(BaseRealm baseRealm, OsResults osResults, String str) {
        super(baseRealm, osResults, str);
    }

    private void checkForAddListener(@Nullable Object obj) {
        if (obj != null) {
            this.realm.checkIfValid();
            this.realm.sharedRealm.capabilities.checkCanDeliverNotification(BaseRealm.LISTENER_NOT_ALLOWED_MESSAGE);
            return;
        }
        throw new IllegalArgumentException("Listener should not be null");
    }

    private void checkForRemoveListener(@Nullable Object obj, boolean z) {
        if (z && obj == null) {
            throw new IllegalArgumentException("Listener should not be null");
        } else if (this.realm.isClosed()) {
            RealmLog.warn("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", this.realm.configuration.getPath());
        }
    }

    private void checkNonEmptyFieldName(String str) {
        if (Util.isEmptyString(str)) {
            throw new IllegalArgumentException("Non-empty 'fieldname' required.");
        }
    }

    private void checkNotNull(@Nullable Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Non-null 'value' required. Use 'setNull(fieldName)' instead.");
        }
    }

    private Row checkRealmObjectConstraints(String str, @Nullable RealmModel realmModel) {
        if (realmModel == null) {
            return null;
        }
        if (!RealmObject.isManaged(realmModel) || !RealmObject.isValid(realmModel)) {
            throw new IllegalArgumentException("'value' is not a valid, managed Realm object.");
        }
        ProxyState realmGet$proxyState = ((RealmObjectProxy) realmModel).realmGet$proxyState();
        if (realmGet$proxyState.getRealm$realm().getPath().equals(this.realm.getPath())) {
            Table table = this.osResults.getTable();
            Table linkTarget = table.getLinkTarget(table.getColumnIndex(str));
            Table table2 = realmGet$proxyState.getRow$realm().getTable();
            if (linkTarget.hasSameSchema(table2)) {
                return realmGet$proxyState.getRow$realm();
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Type of object is wrong. Was '%s', expected '%s'", table2.getClassName(), linkTarget.getClassName()));
        }
        throw new IllegalArgumentException("'value' does not belong to the same Realm as the RealmResults.");
    }

    private void checkType(String str, RealmFieldType realmFieldType) {
        String className = this.osResults.getTable().getClassName();
        RealmFieldType fieldType = this.realm.getSchema().get(className).getFieldType(str);
        if (fieldType != realmFieldType) {
            throw new IllegalArgumentException(String.format("The field '%s.%s' is not of the expected type. Actual: %s, Expected: %s", className, str, fieldType, realmFieldType));
        }
    }

    private <T> void checkTypeOfListElements(RealmList<T> realmList, Class<?> cls) {
        if (!realmList.isEmpty()) {
            Class<?> cls2 = realmList.first().getClass();
            if (!cls.isAssignableFrom(cls2)) {
                throw new IllegalArgumentException(String.format("List contained the wrong type of elements. Elements of type '%s' was expected, but the actual type is '%s'", cls, cls2));
            }
        }
    }

    @SuppressLint({"unused"})
    public static <T extends RealmModel> RealmResults<T> createBacklinkResults(BaseRealm baseRealm, Row row, Class<T> cls, String str) {
        Table table = baseRealm.getSchema().getTable(cls);
        return new RealmResults<>(baseRealm, OsResults.createForBacklinks(baseRealm.sharedRealm, (UncheckedRow) row, table, str), cls);
    }

    public static RealmResults<DynamicRealmObject> createDynamicBacklinkResults(DynamicRealm dynamicRealm, CheckedRow checkedRow, Table table, String str) {
        return new RealmResults<>(dynamicRealm, OsResults.createForBacklinks(dynamicRealm.sharedRealm, checkedRow, table, str), Table.getClassNameForTable(table.getName()));
    }

    private Class<?> getListType(RealmList realmList) {
        return !realmList.isEmpty() ? realmList.first().getClass() : Long.class;
    }

    private String mapFieldNameToInternalName(String str) {
        String str2 = str;
        if (this.realm instanceof Realm) {
            str2 = this.realm.getSchema().getColumnInfo(this.osResults.getTable().getClassName()).getInternalFieldName(str);
            if (str2 == null) {
                throw new IllegalArgumentException(String.format("Field '%s' does not exists.", str));
            }
        }
        return str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ void add(int i, Object obj) {
        super.add(i, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        return super.add(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean addAll(int i, Collection collection) {
        return super.addAll(i, collection);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean addAll(Collection collection) {
        return super.addAll(collection);
    }

    public void addChangeListener(OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener) {
        checkForAddListener(orderedRealmCollectionChangeListener);
        this.osResults.addListener((OsResults) this, (OrderedRealmCollectionChangeListener<OsResults>) orderedRealmCollectionChangeListener);
    }

    public void addChangeListener(RealmChangeListener<RealmResults<E>> realmChangeListener) {
        checkForAddListener(realmChangeListener);
        this.osResults.addListener((OsResults) this, (RealmChangeListener<OsResults>) realmChangeListener);
    }

    public Observable<CollectionChange<RealmResults<E>>> asChangesetObservable() {
        BaseRealm baseRealm = this.realm;
        if (baseRealm instanceof Realm) {
            return baseRealm.configuration.getRxFactory().changesetsFrom((Realm) this.realm, this);
        }
        if (baseRealm instanceof DynamicRealm) {
            return baseRealm.configuration.getRxFactory().changesetsFrom((DynamicRealm) baseRealm, this);
        }
        throw new UnsupportedOperationException(this.realm.getClass() + " does not support RxJava2.");
    }

    public Flowable<RealmResults<E>> asFlowable() {
        BaseRealm baseRealm = this.realm;
        if (baseRealm instanceof Realm) {
            return baseRealm.configuration.getRxFactory().from((Realm) this.realm, this);
        }
        if (baseRealm instanceof DynamicRealm) {
            return baseRealm.configuration.getRxFactory().from((DynamicRealm) baseRealm, this);
        }
        throw new UnsupportedOperationException(this.realm.getClass() + " does not support RxJava2.");
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ double average(String str) {
        return super.average(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ boolean contains(@Nullable Object obj) {
        return super.contains(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ OrderedRealmCollectionSnapshot createSnapshot() {
        return super.createSnapshot();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ boolean deleteAllFromRealm() {
        return super.deleteAllFromRealm();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ boolean deleteFirstFromRealm() {
        return super.deleteFirstFromRealm();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ void deleteFromRealm(int i) {
        super.deleteFromRealm(i);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ boolean deleteLastFromRealm() {
        return super.deleteLastFromRealm();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object first() {
        return super.first();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object first(@Nullable Object obj) {
        return super.first(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Nullable
    public /* bridge */ /* synthetic */ Object get(int i) {
        return super.get(i);
    }

    @Override // io.realm.OrderedRealmCollectionImpl
    public /* bridge */ /* synthetic */ Realm getRealm() {
        return super.getRealm();
    }

    @Override // io.realm.RealmCollection
    public boolean isLoaded() {
        this.realm.checkIfValid();
        return this.osResults.isLoaded();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection, io.realm.internal.ManagableObject
    public /* bridge */ /* synthetic */ boolean isManaged() {
        return super.isManaged();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection, io.realm.internal.ManagableObject
    public /* bridge */ /* synthetic */ boolean isValid() {
        return super.isValid();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return super.iterator();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object last() {
        return super.last();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Object last(@Nullable Object obj) {
        return super.last(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ ListIterator listIterator() {
        return super.listIterator();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return super.listIterator(i);
    }

    @Override // io.realm.RealmCollection
    public boolean load() {
        this.realm.checkIfValid();
        this.osResults.load();
        return true;
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Number max(String str) {
        return super.max(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    @Nullable
    public /* bridge */ /* synthetic */ Date maxDate(String str) {
        return super.maxDate(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Number min(String str) {
        return super.min(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Date minDate(String str) {
        return super.minDate(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ Object remove(int i) {
        return super.remove(i);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    public void removeAllChangeListeners() {
        checkForRemoveListener(null, false);
        this.osResults.removeAllListeners();
    }

    public void removeChangeListener(OrderedRealmCollectionChangeListener<RealmResults<E>> orderedRealmCollectionChangeListener) {
        checkForRemoveListener(orderedRealmCollectionChangeListener, true);
        this.osResults.removeListener((OsResults) this, (OrderedRealmCollectionChangeListener<OsResults>) orderedRealmCollectionChangeListener);
    }

    public void removeChangeListener(RealmChangeListener<RealmResults<E>> realmChangeListener) {
        checkForRemoveListener(realmChangeListener, true);
        this.osResults.removeListener((OsResults) this, (RealmChangeListener<OsResults>) realmChangeListener);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractList, java.util.List
    @Deprecated
    public /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        return super.set(i, obj);
    }

    public void setBlob(String str, @Nullable byte[] bArr) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.BINARY);
        this.osResults.setBlob(mapFieldNameToInternalName, bArr);
    }

    public void setBoolean(String str, boolean z) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.BOOLEAN);
        this.osResults.setBoolean(mapFieldNameToInternalName, z);
    }

    public void setByte(String str, byte b) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.INTEGER);
        this.osResults.setInt(mapFieldNameToInternalName, b);
    }

    public void setDate(String str, @Nullable Date date) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.DATE);
        this.osResults.setDate(mapFieldNameToInternalName, date);
    }

    public void setDouble(String str, double d) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.DOUBLE);
        this.osResults.setDouble(mapFieldNameToInternalName, d);
    }

    public void setFloat(String str, float f) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.FLOAT);
        this.osResults.setFloat(mapFieldNameToInternalName, f);
    }

    public void setInt(String str, int i) {
        checkNonEmptyFieldName(str);
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.INTEGER);
        this.realm.checkIfValidAndInTransaction();
        this.osResults.setInt(mapFieldNameToInternalName, i);
    }

    public <T> void setList(String str, RealmList<T> realmList) {
        checkNonEmptyFieldName(str);
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        this.realm.checkIfValidAndInTransaction();
        if (realmList != null) {
            RealmFieldType fieldType = this.realm.getSchema().getSchemaForClass(this.osResults.getTable().getClassName()).getFieldType(mapFieldNameToInternalName);
            switch (C108921.$SwitchMap$io$realm$RealmFieldType[fieldType.ordinal()]) {
                case 6:
                    checkTypeOfListElements(realmList, RealmModel.class);
                    checkRealmObjectConstraints(mapFieldNameToInternalName, (RealmModel) realmList.first(null));
                    this.osResults.setModelList(mapFieldNameToInternalName, realmList);
                    return;
                case 7:
                    Class<?> listType = getListType(realmList);
                    if (listType.equals(Integer.class)) {
                        this.osResults.setIntegerList(mapFieldNameToInternalName, realmList);
                        return;
                    } else if (listType.equals(Long.class)) {
                        this.osResults.setLongList(mapFieldNameToInternalName, realmList);
                        return;
                    } else if (listType.equals(Short.class)) {
                        this.osResults.setShortList(mapFieldNameToInternalName, realmList);
                        return;
                    } else if (listType.equals(Byte.class)) {
                        this.osResults.setByteList(mapFieldNameToInternalName, realmList);
                        return;
                    } else {
                        throw new IllegalArgumentException(String.format("List contained the wrong type of elements. Elements that can be mapped to Integers was expected, but the actual type is '%s'", listType));
                    }
                case 8:
                    checkTypeOfListElements(realmList, Boolean.class);
                    this.osResults.setBooleanList(mapFieldNameToInternalName, realmList);
                    return;
                case 9:
                    checkTypeOfListElements(realmList, String.class);
                    this.osResults.setStringList(mapFieldNameToInternalName, realmList);
                    return;
                case 10:
                    checkTypeOfListElements(realmList, byte[].class);
                    this.osResults.setByteArrayList(mapFieldNameToInternalName, realmList);
                    return;
                case 11:
                    checkTypeOfListElements(realmList, Date.class);
                    this.osResults.setDateList(mapFieldNameToInternalName, realmList);
                    return;
                case 12:
                    checkTypeOfListElements(realmList, Float.class);
                    this.osResults.setFloatList(mapFieldNameToInternalName, realmList);
                    return;
                case 13:
                    checkTypeOfListElements(realmList, Double.class);
                    this.osResults.setDoubleList(mapFieldNameToInternalName, realmList);
                    return;
                default:
                    throw new IllegalArgumentException(String.format("Field '%s' is not a list but a %s", mapFieldNameToInternalName, fieldType));
            }
        } else {
            throw new IllegalArgumentException("Non-null 'list' required");
        }
    }

    public void setLong(String str, long j) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.INTEGER);
        this.osResults.setInt(mapFieldNameToInternalName, j);
    }

    public void setNull(String str) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        this.osResults.setNull(str);
    }

    public void setObject(String str, @Nullable RealmModel realmModel) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.OBJECT);
        this.osResults.setObject(mapFieldNameToInternalName, checkRealmObjectConstraints(mapFieldNameToInternalName, realmModel));
    }

    public void setShort(String str, short s) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.INTEGER);
        this.osResults.setInt(mapFieldNameToInternalName, s);
    }

    public void setString(String str, @Nullable String str2) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        checkType(mapFieldNameToInternalName, RealmFieldType.STRING);
        this.osResults.setString(mapFieldNameToInternalName, str2);
    }

    public void setValue(String str, @Nullable Object obj) {
        checkNonEmptyFieldName(str);
        this.realm.checkIfValidAndInTransaction();
        String mapFieldNameToInternalName = mapFieldNameToInternalName(str);
        boolean z = obj instanceof String;
        String str2 = z ? (String) obj : null;
        String className = this.osResults.getTable().getClassName();
        RealmObjectSchema realmObjectSchema = getRealm().getSchema().get(className);
        if (!realmObjectSchema.hasField(mapFieldNameToInternalName)) {
            throw new IllegalArgumentException(String.format("Field '%s' could not be found in class '%s'", mapFieldNameToInternalName, className));
        } else if (obj == null) {
            this.osResults.setNull(mapFieldNameToInternalName);
        } else {
            RealmFieldType fieldType = realmObjectSchema.getFieldType(mapFieldNameToInternalName);
            Object obj2 = obj;
            if (z) {
                obj2 = obj;
                if (fieldType != RealmFieldType.STRING) {
                    int i = C108921.$SwitchMap$io$realm$RealmFieldType[fieldType.ordinal()];
                    if (i == 1) {
                        obj2 = Boolean.valueOf(Boolean.parseBoolean(str2));
                    } else if (i == 2) {
                        obj2 = Long.valueOf(Long.parseLong(str2));
                    } else if (i == 3) {
                        obj2 = Float.valueOf(Float.parseFloat(str2));
                    } else if (i == 4) {
                        obj2 = Double.valueOf(Double.parseDouble(str2));
                    } else if (i == 5) {
                        obj2 = JsonUtils.stringToDate(str2);
                    } else {
                        throw new IllegalArgumentException(String.format(Locale.US, "Field %s is not a String field, and the provide value could not be automatically converted: %s. Use a typedsetter instead", mapFieldNameToInternalName, obj));
                    }
                }
            }
            Class<?> cls = obj2.getClass();
            if (cls == Boolean.class) {
                setBoolean(mapFieldNameToInternalName, ((Boolean) obj2).booleanValue());
            } else if (cls == Short.class) {
                setShort(mapFieldNameToInternalName, ((Short) obj2).shortValue());
            } else if (cls == Integer.class) {
                setInt(mapFieldNameToInternalName, ((Integer) obj2).intValue());
            } else if (cls == Long.class) {
                setLong(mapFieldNameToInternalName, ((Long) obj2).longValue());
            } else if (cls == Byte.class) {
                setByte(mapFieldNameToInternalName, ((Byte) obj2).byteValue());
            } else if (cls == Float.class) {
                setFloat(mapFieldNameToInternalName, ((Float) obj2).floatValue());
            } else if (cls == Double.class) {
                setDouble(mapFieldNameToInternalName, ((Double) obj2).doubleValue());
            } else if (cls == String.class) {
                setString(mapFieldNameToInternalName, (String) obj2);
            } else if (obj2 instanceof Date) {
                setDate(mapFieldNameToInternalName, (Date) obj2);
            } else if (obj2 instanceof byte[]) {
                setBlob(mapFieldNameToInternalName, (byte[]) obj2);
            } else if (obj2 instanceof RealmModel) {
                setObject(mapFieldNameToInternalName, (RealmModel) obj2);
            } else if (cls == RealmList.class) {
                setList(mapFieldNameToInternalName, (RealmList) obj2);
            } else {
                throw new IllegalArgumentException("Value is of a type not supported: " + obj2.getClass());
            }
        }
    }

    @Override // io.realm.OrderedRealmCollectionImpl, java.util.AbstractCollection, java.util.Collection, java.util.List
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ RealmResults sort(String str) {
        return super.sort(str);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ RealmResults sort(String str, Sort sort) {
        return super.sort(str, sort);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public RealmResults<E> sort(String str, Sort sort, String str2, Sort sort2) {
        return sort(new String[]{str, str2}, new Sort[]{sort, sort2});
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.OrderedRealmCollection
    public /* bridge */ /* synthetic */ RealmResults sort(String[] strArr, Sort[] sortArr) {
        return super.sort(strArr, sortArr);
    }

    @Override // io.realm.OrderedRealmCollectionImpl, io.realm.RealmCollection
    public /* bridge */ /* synthetic */ Number sum(String str) {
        return super.sum(str);
    }

    @Override // io.realm.RealmCollection
    public RealmQuery<E> where() {
        this.realm.checkIfValid();
        return RealmQuery.createQueryFromResult(this);
    }
}
