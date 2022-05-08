package androidx.work;

import android.content.Context;
import androidx.annotation.NonNull;
import java.util.UUID;
import p081h.p203i.p316b.p323g.p324a.AbstractFutureC9382a;
/* loaded from: classes-dex2jar.jar:androidx/work/ForegroundUpdater.class */
public interface ForegroundUpdater {
    @NonNull
    AbstractFutureC9382a<Void> setForegroundAsync(@NonNull Context context, @NonNull UUID uuid, @NonNull ForegroundInfo foregroundInfo);
}
