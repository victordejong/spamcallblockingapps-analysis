package com.google.android.gms.internal.icing;

import com.google.android.gms.common.util.VisibleForTesting;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.HashMap;
import java.util.Map;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzr.class */
public final class zzr {
    @VisibleForTesting
    static final String[] zzy = {"text1", "text2", SettingsJsonConstants.APP_ICON_KEY, "intent_action", "intent_data", "intent_data_id", "intent_extra_data", "suggest_large_icon", "intent_activity", "thing_proto"};
    private static final Map<String, Integer> zzz = new HashMap(zzy.length);

    static {
        for (int i = 0; i < zzy.length; i++) {
            zzz.put(zzy[i], Integer.valueOf(i));
        }
    }

    public static String zza(int i) {
        if (i < 0 || i >= zzy.length) {
            return null;
        }
        return zzy[i];
    }

    public static int zzb(String str) {
        Integer num = zzz.get(str);
        if (num != null) {
            return num.intValue();
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 44);
        sb.append("[");
        sb.append(str);
        sb.append("] is not a valid global search section name");
        throw new IllegalArgumentException(sb.toString());
    }
}
