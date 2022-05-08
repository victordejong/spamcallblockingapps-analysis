package io.realm.p008rx;

import io.realm.ObjectChangeSet;
import io.realm.RealmModel;
import javax.annotation.Nullable;
/* renamed from: io.realm.rx.ObjectChange */
/* loaded from: classes2-dex2jar.jar:io/realm/rx/ObjectChange.class */
public class ObjectChange<E extends RealmModel> {

    /* renamed from: a */
    private final E f20283a;

    /* renamed from: b */
    private final ObjectChangeSet f20284b;

    public ObjectChange(E e, @Nullable ObjectChangeSet objectChangeSet) {
        this.f20283a = e;
        this.f20284b = objectChangeSet;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ObjectChange.class != obj.getClass()) {
            return false;
        }
        ObjectChange objectChange = (ObjectChange) obj;
        if (!this.f20283a.equals(objectChange.f20283a)) {
            return false;
        }
        ObjectChangeSet objectChangeSet = this.f20284b;
        ObjectChangeSet objectChangeSet2 = objectChange.f20284b;
        if (objectChangeSet != null) {
            z = objectChangeSet.equals(objectChangeSet2);
        } else if (objectChangeSet2 != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f20283a.hashCode();
        ObjectChangeSet objectChangeSet = this.f20284b;
        return (hashCode * 31) + (objectChangeSet != null ? objectChangeSet.hashCode() : 0);
    }

    public String toString() {
        return "ObjectChange{object=" + this.f20283a + ", changeset=" + this.f20284b + '}';
    }
}
