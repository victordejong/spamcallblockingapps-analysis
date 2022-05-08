package com.privacystar.core.util.extension;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/extension/ViewExtensionsKt$sam$java_lang_Runnable$0.class */
final class ViewExtensionsKt$sam$java_lang_Runnable$0 implements Runnable {
    private final /* synthetic */ Function0 function;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewExtensionsKt$sam$java_lang_Runnable$0(Function0 function0) {
        this.function = function0;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        Intrinsics.checkExpressionValueIsNotNull(this.function.invoke(), "invoke(...)");
    }
}
