package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.work.Logger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import androidx.work.impl.workers.DiagnosticsWorker;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/diagnostics/DiagnosticsReceiver.class */
public class DiagnosticsReceiver extends BroadcastReceiver {
    public static final String TAG = Logger.tagWithPrefix("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NonNull Context context, @Nullable Intent intent) {
        if (intent != null) {
            Logger.get().debug(TAG, "Requesting diagnostics", new Throwable[0]);
            try {
                WorkManager.getInstance(context).enqueue(OneTimeWorkRequest.from(DiagnosticsWorker.class));
            } catch (IllegalStateException e) {
                Logger.get().error(TAG, "WorkManager is not initialized", e);
            }
        }
    }
}
