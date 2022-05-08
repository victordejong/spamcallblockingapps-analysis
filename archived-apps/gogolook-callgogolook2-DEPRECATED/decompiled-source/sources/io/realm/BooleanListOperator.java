package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/BooleanListOperator.class */
public final class BooleanListOperator extends ManagedListOperator<Boolean> {
    public BooleanListOperator(BaseRealm baseRealm, OsList osList, Class<Boolean> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object obj) {
        this.osList.addBoolean(((Boolean) obj).booleanValue());
    }

    @Override // io.realm.ManagedListOperator
    public void checkValidValue(@Nullable Object obj) {
        if (obj != null && !(obj instanceof Boolean)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, ManagedListOperator.INVALID_OBJECT_TYPE_MESSAGE, "java.lang.Boolean", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.realm.ManagedListOperator
    @Nullable
    public Boolean get(int i) {
        return (Boolean) this.osList.getValue(i);
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int i, Object obj) {
        this.osList.insertBoolean(i, ((Boolean) obj).booleanValue());
    }

    @Override // io.realm.ManagedListOperator
    public void setValue(int i, Object obj) {
        this.osList.setBoolean(i, ((Boolean) obj).booleanValue());
    }
}
