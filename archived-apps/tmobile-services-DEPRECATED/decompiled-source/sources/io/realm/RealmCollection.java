package io.realm;

import io.realm.internal.ManageableObject;
import java.util.Collection;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmCollection.class */
public interface RealmCollection<E> extends Collection<E>, ManageableObject {
    boolean isLoaded();

    boolean isValid();
}
