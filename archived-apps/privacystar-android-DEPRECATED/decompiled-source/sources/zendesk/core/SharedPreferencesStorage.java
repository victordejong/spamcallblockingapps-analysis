package zendesk.core;

import android.content.SharedPreferences;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.util.StringUtils;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SharedPreferencesStorage.class */
class SharedPreferencesStorage implements BaseStorage {
    private final Serializer serializer;
    private final SharedPreferences sharedPreferences;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SharedPreferencesStorage(SharedPreferences sharedPreferences, Serializer serializer) {
        this.sharedPreferences = sharedPreferences;
        this.serializer = serializer;
    }

    @Override // zendesk.core.BaseStorage
    public void clear() {
        this.sharedPreferences.edit().clear().apply();
    }

    @Override // zendesk.core.BaseStorage
    @Nullable
    public <E> E get(@NonNull String str, @NonNull Class<E> cls) {
        return (E) this.serializer.deserialize(get(str), cls);
    }

    @Override // zendesk.core.BaseStorage
    @Nullable
    public String get(@NonNull String str) {
        return this.sharedPreferences.getString(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getLong(@NonNull String str) {
        return this.sharedPreferences.getLong(str, 0L);
    }

    @Override // zendesk.core.BaseStorage
    public void put(@NonNull String str, @Nullable Object obj) {
        if (StringUtils.hasLength(str)) {
            String str2 = null;
            if (obj != null) {
                str2 = this.serializer.serialize(obj);
            }
            put(str, str2);
        }
    }

    @Override // zendesk.core.BaseStorage
    public void put(@NonNull String str, @Nullable String str2) {
        if (StringUtils.hasLength(str)) {
            this.sharedPreferences.edit().putString(str, str2).apply();
        }
    }

    @Override // zendesk.core.BaseStorage
    public void remove(@NonNull String str) {
        if (StringUtils.hasLength(str)) {
            this.sharedPreferences.edit().remove(str).apply();
        }
    }
}
