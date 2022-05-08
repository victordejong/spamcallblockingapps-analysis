package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\bf\u0018��*\u0006\b��\u0010\u0001 \u00012\u00020\u0002J\u0013\u0010\u0004\u001a\u00020\u0003H¦Bø\u0001��¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00028��H¦\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\b\u001a\u00028��H\u0097@ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/channels/ChannelIterator;", "E", "Lkotlin/Any;", "", "hasNext", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "next", "()Ljava/lang/Object;", "next0", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelIterator.class */
public interface ChannelIterator<E> {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelIterator$DefaultImpls.class */
    public static final class DefaultImpls {
        /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0094  */
        @kotlin.Deprecated
        @kotlin.jvm.JvmName
        @org.jetbrains.annotations.Nullable
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static /* synthetic */ <E> java.lang.Object m1000a(@org.jetbrains.annotations.NotNull kotlinx.coroutines.channels.ChannelIterator<? extends E> r5, @org.jetbrains.annotations.NotNull kotlin.coroutines.Continuation<? super E> r6) {
            /*
                r0 = r6
                boolean r0 = r0 instanceof kotlinx.coroutines.channels.ChannelIterator$next0$1
                if (r0 == 0) goto L_0x0025
                r0 = r6
                kotlinx.coroutines.channels.ChannelIterator$next0$1 r0 = (kotlinx.coroutines.channels.ChannelIterator$next0$1) r0
                r7 = r0
                r0 = r7
                int r0 = r0.f21335g
                r8 = r0
                r0 = r8
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L_0x0025
                r0 = r7
                r1 = r8
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f21335g = r1
                r0 = r7
                r6 = r0
                goto L_0x002f
            L_0x0025:
                kotlinx.coroutines.channels.ChannelIterator$next0$1 r0 = new kotlinx.coroutines.channels.ChannelIterator$next0$1
                r1 = r0
                r2 = r5
                r3 = r6
                r1.<init>(r2, r3)
                r6 = r0
            L_0x002f:
                r0 = r6
                java.lang.Object r0 = r0.f21334f
                r7 = r0
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.m1924d()
                r9 = r0
                r0 = r6
                int r0 = r0.f21335g
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x0062
                r0 = r8
                r1 = 1
                if (r0 != r1) goto L_0x0058
                r0 = r6
                java.lang.Object r0 = r0.f21337i
                kotlinx.coroutines.channels.ChannelIterator r0 = (kotlinx.coroutines.channels.ChannelIterator) r0
                r5 = r0
                r0 = r7
                kotlin.ResultKt.m2472b(r0)
                r0 = r7
                r6 = r0
                goto L_0x0083
            L_0x0058:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L_0x0062:
                r0 = r7
                kotlin.ResultKt.m2472b(r0)
                r0 = r6
                r1 = r5
                r0.f21337i = r1
                r0 = r6
                r1 = 1
                r0.f21335g = r1
                r0 = r5
                r1 = r6
                java.lang.Object r0 = r0.mo1001a(r1)
                r7 = r0
                r0 = r7
                r6 = r0
                r0 = r7
                r1 = r9
                if (r0 != r1) goto L_0x0083
                r0 = r9
                return r0
            L_0x0083:
                r0 = r6
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto L_0x0094
                r0 = r5
                java.lang.Object r0 = r0.next()
                return r0
            L_0x0094:
                kotlinx.coroutines.channels.ClosedReceiveChannelException r0 = new kotlinx.coroutines.channels.ClosedReceiveChannelException
                r1 = r0
                java.lang.String r2 = "Channel was closed"
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelIterator.DefaultImpls.m1000a(kotlinx.coroutines.channels.ChannelIterator, kotlin.coroutines.Continuation):java.lang.Object");
        }
    }

    @Nullable
    /* renamed from: a */
    Object mo1001a(@NotNull Continuation<? super Boolean> continuation);

    E next();
}
