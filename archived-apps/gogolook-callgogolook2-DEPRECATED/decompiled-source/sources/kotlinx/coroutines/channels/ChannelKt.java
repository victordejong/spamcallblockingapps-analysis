package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\u001a\u001c\u0010��\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b��\u0010\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m815d2 = {"Channel", "Lkotlinx/coroutines/channels/Channel;", ExifInterface.LONGITUDE_EAST, "capacity", "", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/channels/ChannelKt.class */
public final class ChannelKt {
    public static final <E> Channel<E> Channel(int i) {
        return i != -2 ? i != -1 ? i != 0 ? i != Integer.MAX_VALUE ? new ArrayChannel<>(i) : new LinkedListChannel<>() : new RendezvousChannel<>() : new ConflatedChannel<>() : new ArrayChannel<>(Channel.Factory.getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core());
    }

    public static /* synthetic */ Channel Channel$default(int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return Channel(i);
    }
}
