package zendesk.core;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import p081h.p451q.p454c.AbstractC10857e;
/* loaded from: classes3-dex2jar.jar:zendesk/core/SettingsProvider.class */
public interface SettingsProvider {
    <E extends Settings> void getSettingsForSdk(@NonNull String str, @NonNull Class<E> cls, @Nullable AbstractC10857e<SettingsPack<E>> eVar);
}
