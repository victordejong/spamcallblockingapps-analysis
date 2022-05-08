package zendesk.core;

import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SharedPreferencesStorage.class */
public class SharedPreferencesStorage implements BaseStorage {
    public final Serializer serializer;
    public final SharedPreferences sharedPreferences;

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

    public long getLong(@NonNull String str) {
        return this.sharedPreferences.getLong(str, 0L);
    }

    @Override // zendesk.core.BaseStorage
    public void put(@NonNull String str, @Nullable Object obj) {
        if (C10862d.m10390b(str)) {
            String str2 = null;
            if (obj != null) {
                str2 = this.serializer.serialize(obj);
            }
            put(str, str2);
        }
    }

    @Override // zendesk.core.BaseStorage
    public void put(@NonNull String str, @Nullable String str2) {
        if (C10862d.m10390b(str)) {
            this.sharedPreferences.edit().putString(str, str2).apply();
        }
    }

    @Override // zendesk.core.BaseStorage
    public void remove(@NonNull String str) {
        if (C10862d.m10390b(str)) {
            this.sharedPreferences.edit().remove(str).apply();
        }
    }
}
