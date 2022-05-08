package com.criteo.publisher.advancednative;

import androidx.annotation.NonNull;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.criteo.publisher.advancednative.h */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/h.class */
public class C1952h {
    @NonNull

    /* renamed from: a */
    public final AtomicReference<ImageLoader> f2086a;

    public C1952h(@NonNull ImageLoader imageLoader) {
        this.f2086a = new AtomicReference<>(imageLoader);
    }

    @NonNull
    /* renamed from: a */
    public ImageLoader m35974a() {
        return this.f2086a.get();
    }

    /* renamed from: a */
    public void m35973a(@NonNull ImageLoader imageLoader) {
        this.f2086a.set(imageLoader);
    }
}
