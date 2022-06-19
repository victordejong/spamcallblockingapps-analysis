.class public final Lq3/a/z2/b;
.super Lq3/a/z2/c;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\nH\u0007J\u0008\u0010\u000b\u001a\u00020\nH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/DefaultScheduler;",
        "Lkotlinx/coroutines/scheduling/ExperimentalCoroutineDispatcher;",
        "()V",
        "IO",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getIO",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "close",
        "",
        "toDebugString",
        "",
        "toString",
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


# static fields
.field public static final g:Lq3/a/z2/b;

.field public static final h:Lq3/a/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lq3/a/z2/b;

    invoke-direct {v0}, Lq3/a/z2/b;-><init>()V

    sput-object v0, Lq3/a/z2/b;->g:Lq3/a/z2/b;

    .line 1
    new-instance v1, Lq3/a/z2/e;

    .line 2
    sget v2, Lq3/a/y2/y;->a:I

    const/16 v3, 0x40

    if-ge v3, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string v4, "kotlinx.coroutines.io.parallelism"

    .line 3
    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->D3(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "Dispatchers.IO"

    .line 4
    invoke-direct {v1, v0, v2, v4, v3}, Lq3/a/z2/e;-><init>(Lq3/a/z2/c;ILjava/lang/String;I)V

    sput-object v1, Lq3/a/z2/b;->h:Lq3/a/g0;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 1
    invoke-direct {p0, v0, v0, v1, v2}, Lq3/a/z2/c;-><init>(IILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Dispatchers.Default cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Dispatchers.Default"

    return-object v0
.end method
