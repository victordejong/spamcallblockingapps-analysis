package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:zendesk/core/Serializer.class */
public interface Serializer {
    @Nullable
    <E> E deserialize(@Nullable Object obj, @NonNull Class<E> cls);

    @Nullable
    String serialize(@Nullable Object obj);
}
