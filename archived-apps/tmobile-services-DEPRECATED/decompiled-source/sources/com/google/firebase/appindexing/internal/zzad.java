package com.google.firebase.appindexing.internal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzad.class */
public final class zzad {
    @GuardedBy
    private static final DateFormat zzfz = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US);

    public static String zza(Calendar calendar) {
        String format;
        synchronized (zzfz) {
            zzfz.setTimeZone(calendar.getTimeZone());
            format = zzfz.format(calendar.getTime());
        }
        return format;
    }
}
