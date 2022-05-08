package io.realm.log;

import io.realm.internal.Keep;
import javax.annotation.Nullable;
@Keep
/* loaded from: classes3-dex2jar.jar:io/realm/log/RealmLogger.class */
public interface RealmLogger {
    void log(int i, String str, @Nullable Throwable th, @Nullable String str2);
}
