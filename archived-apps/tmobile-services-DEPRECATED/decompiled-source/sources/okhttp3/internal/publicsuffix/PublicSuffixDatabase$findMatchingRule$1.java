package okhttp3.internal.publicsuffix;

import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/publicsuffix/PublicSuffixDatabase$findMatchingRule$1.class */
final /* synthetic */ class PublicSuffixDatabase$findMatchingRule$1 extends MutablePropertyReference0Impl {
    PublicSuffixDatabase$findMatchingRule$1(PublicSuffixDatabase publicSuffixDatabase) {
        super(publicSuffixDatabase, PublicSuffixDatabase.class, "publicSuffixListBytes", "getPublicSuffixListBytes()[B", 0);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
    @Nullable
    public Object get() {
        return PublicSuffixDatabase.access$getPublicSuffixListBytes$p((PublicSuffixDatabase) this.receiver);
    }

    @Override // kotlin.jvm.internal.MutablePropertyReference0Impl
    public void set(@Nullable Object obj) {
        ((PublicSuffixDatabase) this.receiver).publicSuffixListBytes = (byte[]) obj;
    }
}
