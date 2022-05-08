package io.realm;

import io.realm.internal.OsList;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/ManagedListOperator.class */
public abstract class ManagedListOperator<T> {
    public static final String INVALID_OBJECT_TYPE_MESSAGE = "Unacceptable value type. Acceptable: %1$s, actual: %2$s .";
    public static final String NULL_OBJECTS_NOT_ALLOWED_MESSAGE = "RealmList does not accept null values.";
    @Nullable
    public final Class<T> clazz;
    public final OsList osList;
    public final BaseRealm realm;

    public ManagedListOperator(BaseRealm baseRealm, OsList osList, @Nullable Class<T> cls) {
        this.realm = baseRealm;
        this.clazz = cls;
        this.osList = osList;
    }

    private void appendNull() {
        this.osList.addNull();
    }

    public final void append(@Nullable Object obj) {
        checkValidValue(obj);
        if (obj == null) {
            appendNull();
        } else {
            appendValue(obj);
        }
    }

    public abstract void appendValue(Object obj);

    public abstract void checkValidValue(@Nullable Object obj);

    public final void delete(int i) {
        this.osList.delete(i);
    }

    public final void deleteAll() {
        this.osList.deleteAll();
    }

    public final void deleteLast() {
        OsList osList = this.osList;
        osList.delete(osList.size() - 1);
    }

    public abstract boolean forRealmModel();

    @Nullable
    public abstract T get(int i);

    public final OsList getOsList() {
        return this.osList;
    }

    public final void insert(int i, @Nullable Object obj) {
        checkValidValue(obj);
        if (obj == null) {
            insertNull(i);
        } else {
            insertValue(i, obj);
        }
    }

    public void insertNull(int i) {
        this.osList.insertNull(i);
    }

    public abstract void insertValue(int i, Object obj);

    public final boolean isEmpty() {
        return this.osList.isEmpty();
    }

    public final boolean isValid() {
        return this.osList.isValid();
    }

    public final void move(int i, int i2) {
        this.osList.move(i, i2);
    }

    public final void remove(int i) {
        this.osList.remove(i);
    }

    public final void removeAll() {
        this.osList.removeAll();
    }

    @Nullable
    public final T set(int i, @Nullable Object obj) {
        checkValidValue(obj);
        T t = get(i);
        if (obj == null) {
            setNull(i);
        } else {
            setValue(i, obj);
        }
        return t;
    }

    public void setNull(int i) {
        this.osList.setNull(i);
    }

    public abstract void setValue(int i, Object obj);

    public final int size() {
        long size = this.osList.size();
        return size < 2147483647L ? (int) size : Integer.MAX_VALUE;
    }
}
