package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzta.class */
final class zzta extends zzsx {
    private final zzsy zzbrz = new zzsy();

    @Override // com.google.android.gms.internal.measurement.zzsx
    public final void zza(Throwable th, PrintStream printStream) {
        th.printStackTrace(printStream);
        List<Throwable> zza = this.zzbrz.zza(th, false);
        if (zza != null) {
            synchronized (zza) {
                for (Throwable th2 : zza) {
                    printStream.print("Suppressed: ");
                    th2.printStackTrace(printStream);
                }
            }
        }
    }
}
