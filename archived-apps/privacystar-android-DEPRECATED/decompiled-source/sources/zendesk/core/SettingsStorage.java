package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.google.gson.JsonElement;
import java.util.Map;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:zendesk/core/SettingsStorage.class */
public interface SettingsStorage {
    boolean areSettingsUpToDate(long j, @NonNull TimeUnit timeUnit);

    void clear();

    @Nullable
    <E> E getSettings(@NonNull String str, @NonNull Class<E> cls);

    boolean hasStoredSettings();

    void storeRawSettings(@NonNull Map<String, JsonElement> map);
}
