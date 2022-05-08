package io.realm.exceptions;

import io.realm.internal.Keep;
@Keep
/* loaded from: classes3-dex2jar.jar:io/realm/exceptions/RealmMigrationNeededException.class */
public final class RealmMigrationNeededException extends RuntimeException {
    public final String canonicalRealmPath;

    public RealmMigrationNeededException(String str, String str2) {
        super(str2);
        this.canonicalRealmPath = str;
    }

    public String getPath() {
        return this.canonicalRealmPath;
    }
}
