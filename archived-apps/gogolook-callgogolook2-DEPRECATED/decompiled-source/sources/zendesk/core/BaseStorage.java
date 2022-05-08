package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/BaseStorage.class */
public interface BaseStorage {
    void clear();

    @Nullable
    <E> E get(@NonNull String str, @NonNull Class<E> cls);

    @Nullable
    String get(@NonNull String str);

    void put(@NonNull String str, @Nullable Object obj);

    void put(@NonNull String str, @Nullable String str2);

    void remove(@NonNull String str);
}
