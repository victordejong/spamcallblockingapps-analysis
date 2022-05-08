package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.AppsFlyerProperties;
import kotlin.Metadata;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.channels.SendChannel;
import kotlinx.coroutines.flow.FlowCollector;
import p459j.p460a.p541n0.C13032a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
@InternalCoroutinesApi
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004¢\u0006\u0002\u0010\u0005J\u0019\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00028��H\u0096@ø\u0001��¢\u0006\u0002\u0010\tR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0004X\u0082\u0004¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, m815d2 = {"Lkotlinx/coroutines/flow/internal/SendingCollector;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/FlowCollector;", AppsFlyerProperties.CHANNEL, "Lkotlinx/coroutines/channels/SendChannel;", "(Lkotlinx/coroutines/channels/SendChannel;)V", "emit", "", C13032a.f29462d, "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/SendingCollector.class */
public final class SendingCollector<T> implements FlowCollector<T> {
    public final SendChannel<T> channel;

    /* JADX WARN: Multi-variable type inference failed */
    public SendingCollector(SendChannel<? super T> sendChannel) {
        this.channel = sendChannel;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public Object emit(T t, AbstractC15044d<? super C14989s> dVar) {
        Object send = this.channel.send(t, dVar);
        return send == C15064c.m478a() ? send : C14989s.f33022a;
    }
}
