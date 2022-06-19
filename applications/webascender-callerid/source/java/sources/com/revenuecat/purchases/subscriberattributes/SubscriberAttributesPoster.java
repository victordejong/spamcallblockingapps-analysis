package com.revenuecat.purchases.subscriberattributes;

import android.net.Uri;
import com.revenuecat.purchases.PurchasesError;
import com.revenuecat.purchases.common.Backend;
import com.revenuecat.purchases.common.SubscriberAttributeError;
import java.util.List;
import java.util.Map;
import kotlin.p;
import kotlin.r;
import kotlin.s.b0;
import kotlin.w.b.a;
import kotlin.w.b.q;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/subscriberattributes/SubscriberAttributesPoster.class */
public final class SubscriberAttributesPoster {
    private final Backend backend;

    public SubscriberAttributesPoster(Backend backend) {
        k.f(backend, "backend");
        this.backend = backend;
    }

    public final void postSubscriberAttributes(Map<String, ? extends Map<String, ? extends Object>> map, String str, a<r> aVar, q<? super PurchasesError, ? super Boolean, ? super List<SubscriberAttributeError>, r> qVar) {
        k.f(map, "attributes");
        k.f(str, "appUserID");
        k.f(aVar, "onSuccessHandler");
        k.f(qVar, "onErrorHandler");
        Backend backend = this.backend;
        backend.performRequest("/subscribers/" + Uri.encode(str) + "/attributes", b0.c(p.a("attributes", map)), new postSubscriberAttributes.1(qVar), aVar, new postSubscriberAttributes.2(qVar));
    }
}
