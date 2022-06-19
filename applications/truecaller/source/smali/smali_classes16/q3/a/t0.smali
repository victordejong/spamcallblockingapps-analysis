.class public final Lq3/a/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u001a\u0004\u0008\n\u0010\u0007R\u001a\u0010\u000b\u001a\u00020\u000c8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\r\u0010\u0002\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0011\u0010\u0002\u001a\u0004\u0008\u0012\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/coroutines/Dispatchers;",
        "",
        "()V",
        "Default",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "getDefault$annotations",
        "getDefault",
        "()Lkotlinx/coroutines/CoroutineDispatcher;",
        "IO",
        "getIO$annotations",
        "getIO",
        "Main",
        "Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "getMain$annotations",
        "getMain",
        "()Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "Unconfined",
        "getUnconfined$annotations",
        "getUnconfined",
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
.field public static final a:Lq3/a/t0;

.field public static final b:Lq3/a/g0;

.field public static final c:Lq3/a/g0;

.field public static final d:Lq3/a/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lq3/a/e0;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lq3/a/z2/b;->g:Lq3/a/z2/b;

    goto :goto_0

    :cond_0
    sget-object v0, Lq3/a/v;->b:Lq3/a/v;

    .line 2
    :goto_0
    sput-object v0, Lq3/a/t0;->b:Lq3/a/g0;

    .line 3
    sget-object v0, Lq3/a/r2;->b:Lq3/a/r2;

    sput-object v0, Lq3/a/t0;->c:Lq3/a/g0;

    .line 4
    sget-object v0, Lq3/a/z2/b;->g:Lq3/a/z2/b;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lq3/a/z2/b;->h:Lq3/a/g0;

    .line 7
    sput-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    return-void
.end method
