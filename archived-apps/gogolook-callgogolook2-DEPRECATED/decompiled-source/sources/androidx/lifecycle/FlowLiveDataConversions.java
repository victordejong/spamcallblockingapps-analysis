package androidx.lifecycle;

import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import java.time.Duration;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import p626l.p634w.AbstractC15049g;
import p626l.p634w.C15055h;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\u001a\u001c\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003\u001a0\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007\u001a2\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0003\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00012\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, m815d2 = {"asFlow", "Lkotlinx/coroutines/flow/Flow;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/lifecycle/LiveData;", "asLiveData", "context", "Lkotlin/coroutines/CoroutineContext;", "timeout", "Ljava/time/Duration;", "timeoutInMs", "", "lifecycle-livedata-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/FlowLiveDataConversions.class */
public final class FlowLiveDataConversions {
    public static final <T> Flow<T> asFlow(LiveData<T> liveData) {
        C15149k.m377b(liveData, "$this$asFlow");
        return FlowKt.flow(new FlowLiveDataConversions$asFlow$1(liveData, null));
    }

    public static final <T> LiveData<T> asLiveData(Flow<? extends T> flow) {
        return asLiveData$default(flow, (AbstractC15049g) null, 0L, 3, (Object) null);
    }

    public static final <T> LiveData<T> asLiveData(Flow<? extends T> flow, AbstractC15049g gVar) {
        return asLiveData$default(flow, gVar, 0L, 2, (Object) null);
    }

    public static final <T> LiveData<T> asLiveData(Flow<? extends T> flow, AbstractC15049g gVar, long j) {
        C15149k.m377b(flow, "$this$asLiveData");
        C15149k.m377b(gVar, "context");
        return CoroutineLiveDataKt.liveData(gVar, j, new FlowLiveDataConversions$asLiveData$1(flow, null));
    }

    @RequiresApi(26)
    public static final <T> LiveData<T> asLiveData(Flow<? extends T> flow, AbstractC15049g gVar, Duration duration) {
        C15149k.m377b(flow, "$this$asLiveData");
        C15149k.m377b(gVar, "context");
        C15149k.m377b(duration, "timeout");
        return asLiveData(flow, gVar, duration.toMillis());
    }

    public static /* synthetic */ LiveData asLiveData$default(Flow flow, AbstractC15049g gVar, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            gVar = C15055h.f33080a;
        }
        if ((i & 2) != 0) {
            j = 5000;
        }
        return asLiveData(flow, gVar, j);
    }

    public static /* synthetic */ LiveData asLiveData$default(Flow flow, AbstractC15049g gVar, Duration duration, int i, Object obj) {
        if ((i & 1) != 0) {
            gVar = C15055h.f33080a;
        }
        return asLiveData(flow, gVar, duration);
    }
}
