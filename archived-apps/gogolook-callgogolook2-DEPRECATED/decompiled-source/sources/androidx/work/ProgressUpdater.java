package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.UUID;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/work/ProgressUpdater.class */
public interface ProgressUpdater {
    @NonNull
    AbstractFutureC9382a<Void> updateProgress(@NonNull Context context, @NonNull UUID uuid, @NonNull Data data);
}
