package io.realm;

import io.realm.internal.OsList;
import java.util.Locale;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/FloatListOperator.class */
public final class FloatListOperator extends ManagedListOperator<Float> {
    public FloatListOperator(BaseRealm baseRealm, OsList osList, Class<Float> cls) {
        super(baseRealm, osList, cls);
    }

    @Override // io.realm.ManagedListOperator
    public void appendValue(Object obj) {
        this.osList.addFloat(((Number) obj).floatValue());
    }

    @Override // io.realm.ManagedListOperator
    public void checkValidValue(@Nullable Object obj) {
        if (obj != null && !(obj instanceof Number)) {
            throw new IllegalArgumentException(String.format(Locale.ENGLISH, ManagedListOperator.INVALID_OBJECT_TYPE_MESSAGE, "java.lang.Number", obj.getClass().getName()));
        }
    }

    @Override // io.realm.ManagedListOperator
    public boolean forRealmModel() {
        return false;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // io.realm.ManagedListOperator
    @Nullable
    public Float get(int i) {
        return (Float) this.osList.getValue(i);
    }

    @Override // io.realm.ManagedListOperator
    public void insertValue(int i, Object obj) {
        this.osList.insertFloat(i, ((Number) obj).floatValue());
    }

    @Override // io.realm.ManagedListOperator
    public void setValue(int i, Object obj) {
        this.osList.setFloat(i, ((Number) obj).floatValue());
    }
}
