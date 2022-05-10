package com.facebook.ads;

import androidx.annotation.Keep;
import com.facebook.ads.internal.bench.Benchmark;
@Keep
/* renamed from: com.facebook.ads.Ad */
/* loaded from: classes-dex2jar.jar:com/facebook/ads/Ad.class */
public interface AbstractC7079Ad {
    @Benchmark
    void destroy();

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    String getPlacementId();

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    boolean isAdInvalidated();

    @Benchmark
    void loadAd();

    @Benchmark
    void loadAdFromBid(String str);

    @Benchmark(failAtMillis = 5, warnAtMillis = 1)
    void setExtraHints(ExtraHints extraHints);
}
