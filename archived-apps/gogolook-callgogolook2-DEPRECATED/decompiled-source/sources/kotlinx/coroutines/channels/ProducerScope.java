package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import com.appsflyer.AppsFlyerProperties;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m815d2 = {"Lkotlinx/coroutines/channels/ProducerScope;", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/CoroutineScope;", "Lkotlinx/coroutines/channels/SendChannel;", AppsFlyerProperties.CHANNEL, "getChannel", "()Lkotlinx/coroutines/channels/SendChannel;", "kotlinx-coroutines-core"}, m814k = 1, m813mv = {1, 1, 16})
@ExperimentalCoroutinesApi
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ProducerScope.class */
public interface ProducerScope<E> extends CoroutineScope, SendChannel<E> {
    SendChannel<E> getChannel();
}
