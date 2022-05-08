package kotlinx.coroutines.selects;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a4\u0010\u0006\u001a\u00020\u00032\u001f\b\u0004\u0010\u0005\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0004\u0012\u00020\u00030��¢\u0006\u0002\b\u0004H\u0087Hø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, d2 = {"Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "", "Lkotlin/ExtensionFunctionType;", "builder", "whileSelect", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/WhileSelectKt.class */
public final class WhileSelectKt {
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b7  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a4 -> B:27:0x00aa). Please submit an issue!!! */
    @kotlinx.coroutines.ExperimentalCoroutinesApi
    @org.jetbrains.annotations.Nullable
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object m296a(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super kotlinx.coroutines.selects.SelectBuilder<? super java.lang.Boolean>, kotlin.Unit> r4, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super kotlin.Unit> r5) {
        /*
            r0 = r5
            boolean r0 = r0 instanceof kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1
            if (r0 == 0) goto L_0x0025
            r0 = r5
            kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1 r0 = (kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1) r0
            r6 = r0
            r0 = r6
            int r0 = r0.f24051g
            r7 = r0
            r0 = r7
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0025
            r0 = r6
            r1 = r7
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f24051g = r1
            r0 = r6
            r5 = r0
            goto L_0x002e
        L_0x0025:
            kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1 r0 = new kotlinx.coroutines.selects.WhileSelectKt$whileSelect$1
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r5 = r0
        L_0x002e:
            r0 = r5
            java.lang.Object r0 = r0.f24050f
            r6 = r0
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            r8 = r0
            r0 = r5
            int r0 = r0.f24051g
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x005f
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0055
            r0 = r5
            java.lang.Object r0 = r0.f24052h
            kotlin.jvm.functions.Function1 r0 = (kotlin.jvm.functions.Function1) r0
            r4 = r0
            r0 = r6
            kotlin.ResultKt.m2472b(r0)
            goto L_0x00aa
        L_0x0055:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L_0x005f:
            r0 = r6
            kotlin.ResultKt.m2472b(r0)
        L_0x0063:
            r0 = r5
            r1 = r4
            r0.f24052h = r1
            r0 = r5
            r1 = 1
            r0.f24051g = r1
            kotlinx.coroutines.selects.SelectBuilderImpl r0 = new kotlinx.coroutines.selects.SelectBuilderImpl
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r9 = r0
            r0 = r4
            r1 = r9
            java.lang.Object r0 = r0.invoke(r1)     // Catch: all -> 0x0083
            goto L_0x008a
        L_0x0083:
            r6 = move-exception
            r0 = r9
            r1 = r6
            r0.m326c0(r1)
        L_0x008a:
            r0 = r9
            java.lang.Object r0 = r0.m327b0()
            r9 = r0
            r0 = r9
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
            if (r0 != r1) goto L_0x009d
            r0 = r5
            kotlin.coroutines.jvm.internal.DebugProbesKt.m1904c(r0)
        L_0x009d:
            r0 = r9
            r6 = r0
            r0 = r9
            r1 = r8
            if (r0 != r1) goto L_0x00aa
            r0 = r8
            return r0
        L_0x00aa:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x00b7
            goto L_0x0063
        L_0x00b7:
            kotlin.Unit r0 = kotlin.Unit.f20447a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.selects.WhileSelectKt.m296a(kotlin.jvm.functions.Function1, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
