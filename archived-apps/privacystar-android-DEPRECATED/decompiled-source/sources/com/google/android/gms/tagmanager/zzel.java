package com.google.android.gms.tagmanager;

import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* JADX INFO: Access modifiers changed from: package-private */
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzel.class */
public final class zzel extends zzfz {

    /* renamed from: ID */
    private static final String f192ID = zza.REGEX.toString();
    private static final String zzbec = zzb.IGNORE_CASE.toString();

    public zzel() {
        super(f192ID);
    }

    @Override // com.google.android.gms.tagmanager.zzfz
    protected final boolean zza(String str, String str2, Map<String, zzp> map) {
        try {
            return Pattern.compile(str2, zzgj.zzg(map.get(zzbec)).booleanValue() ? 66 : 64).matcher(str).find();
        } catch (PatternSyntaxException e) {
            return false;
        }
    }
}
