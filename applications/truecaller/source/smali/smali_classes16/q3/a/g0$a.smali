.class public final Lq3/a/g0$a;
.super Ls1/w/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/b<",
        "Ls1/w/e;",
        "Lq3/a/g0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlinx/coroutines/CoroutineDispatcher$Key;",
        "Lkotlin/coroutines/AbstractCoroutineContextKey;",
        "Lkotlin/coroutines/ContinuationInterceptor;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "()V",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 1

    .line 1
    sget p1, Ls1/w/e;->b0:I

    sget-object p1, Ls1/w/e$a;->a:Ls1/w/e$a;

    .line 2
    sget-object v0, Lq3/a/f0;->b:Lq3/a/f0;

    .line 3
    invoke-direct {p0, p1, v0}, Ls1/w/b;-><init>(Ls1/w/f$b;Ls1/z/b/l;)V

    return-void
.end method
