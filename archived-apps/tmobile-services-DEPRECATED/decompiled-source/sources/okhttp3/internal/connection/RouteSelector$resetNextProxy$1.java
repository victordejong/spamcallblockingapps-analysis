package okhttp3.internal.connection;

import java.net.Proxy;
import java.net.URI;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import okhttp3.Address;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\u0010��\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"selectProxies", "", "Ljava/net/Proxy;", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/connection/RouteSelector$resetNextProxy$1.class */
public final class RouteSelector$resetNextProxy$1 extends Lambda implements Function0<List<? extends Proxy>> {
    final /* synthetic */ Proxy $proxy;
    final /* synthetic */ HttpUrl $url;
    final /* synthetic */ RouteSelector this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RouteSelector$resetNextProxy$1(RouteSelector routeSelector, Proxy proxy, HttpUrl httpUrl) {
        super(0);
        this.this$0 = routeSelector;
        this.$proxy = proxy;
        this.$url = httpUrl;
    }

    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final List<? extends Proxy> invoke() {
        Address address;
        List<? extends Proxy> b;
        Proxy proxy = this.$proxy;
        if (proxy != null) {
            b = CollectionsKt__CollectionsJVMKt.m2179b(proxy);
            return b;
        }
        URI uri = this.$url.uri();
        if (uri.getHost() == null) {
            return Util.immutableListOf(Proxy.NO_PROXY);
        }
        address = this.this$0.address;
        List<Proxy> select = address.proxySelector().select(uri);
        return select == null || select.isEmpty() ? Util.immutableListOf(Proxy.NO_PROXY) : Util.toImmutableList(select);
    }
}
