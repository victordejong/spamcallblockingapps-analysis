package com.revenuecat.purchases;

import kotlin.w.b.a;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/PurchasesKt$sam$java_lang_Runnable$0.class */
final class PurchasesKt$sam$java_lang_Runnable$0 implements Runnable {
    private final /* synthetic */ a function;

    PurchasesKt$sam$java_lang_Runnable$0(a aVar) {
        this.function = aVar;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        k.e(this.function.invoke(), "invoke(...)");
    }
}
