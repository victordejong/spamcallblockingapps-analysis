package io.realm;

import io.realm.internal.OsList;
import java.util.Date;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/DateListOperator.class */
public final class DateListOperator extends ManagedListOperator<Date> {
    public DateListOperator(BaseRealm baseRealm, OsList osList, Class<Date> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object obj) {
        this.osList.addDate((Date) obj);
    }

    @Override // io.realm.ManagedListOperator
    public void checkValidValue(@Nullable Object obj) {
        if (obj != null && !(obj instanceof Date)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, ManagedListOperator.INVALID_OBJECT_TYPE_MESSAGE, "java.util.Date", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    @Override // io.realm.ManagedListOperator
    @Nullable
    public Date get(int i) {
        return (Date) this.osList.getValue(i);
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int i, Object obj) {
        this.osList.insertDate(i, (Date) obj);
    }

    @Override // io.realm.ManagedListOperator
    public void setValue(int i, Object obj) {
        this.osList.setDate(i, (Date) obj);
    }
}
