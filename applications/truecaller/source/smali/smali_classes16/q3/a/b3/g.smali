.class public final Lq3/a/b3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u0010\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u001aB\u0010\u0015\u001a\u0002H\u0016\"\u0004\u0008\u0000\u0010\u0016*\u00020\u00122\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u001aH\u0086H\u00f8\u0001\u0000\u0082\u0002\n\n\u0008\u0008\u0001\u0012\u0002\u0010\u0002 \u0001\u00a2\u0006\u0002\u0010\u001b\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0003\"\u0016\u0010\u0006\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0008\u0010\u0003\"\u0016\u0010\t\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\n\u0010\u0003\"\u0016\u0010\u000b\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\u0003\"\u0016\u0010\r\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000e\u0010\u0003\"\u0016\u0010\u000f\u001a\u00020\u00078\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0010\u0010\u0003\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "EMPTY_LOCKED",
        "Lkotlinx/coroutines/sync/Empty;",
        "getEMPTY_LOCKED$annotations",
        "()V",
        "EMPTY_UNLOCKED",
        "getEMPTY_UNLOCKED$annotations",
        "LOCKED",
        "Lkotlinx/coroutines/internal/Symbol;",
        "getLOCKED$annotations",
        "LOCK_FAIL",
        "getLOCK_FAIL$annotations",
        "SELECT_SUCCESS",
        "getSELECT_SUCCESS$annotations",
        "UNLOCKED",
        "getUNLOCKED$annotations",
        "UNLOCK_FAIL",
        "getUNLOCK_FAIL$annotations",
        "Mutex",
        "Lkotlinx/coroutines/sync/Mutex;",
        "locked",
        "",
        "withLock",
        "T",
        "owner",
        "",
        "action",
        "Lkotlin/Function0;",
        "(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lq3/a/y2/x;

.field public static final b:Lq3/a/y2/x;

.field public static final c:Lq3/a/y2/x;

.field public static final d:Lq3/a/b3/b;

.field public static final e:Lq3/a/b3/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lq3/a/y2/x;

    const-string v1, "UNLOCK_FAIL"

    invoke-direct {v0, v1}, Lq3/a/y2/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/a/b3/g;->a:Lq3/a/y2/x;

    .line 2
    new-instance v0, Lq3/a/y2/x;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1}, Lq3/a/y2/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/a/b3/g;->b:Lq3/a/y2/x;

    .line 3
    new-instance v1, Lq3/a/y2/x;

    const-string v2, "UNLOCKED"

    invoke-direct {v1, v2}, Lq3/a/y2/x;-><init>(Ljava/lang/String;)V

    sput-object v1, Lq3/a/b3/g;->c:Lq3/a/y2/x;

    .line 4
    new-instance v2, Lq3/a/b3/b;

    invoke-direct {v2, v0}, Lq3/a/b3/b;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lq3/a/b3/g;->d:Lq3/a/b3/b;

    .line 5
    new-instance v0, Lq3/a/b3/b;

    invoke-direct {v0, v1}, Lq3/a/b3/b;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lq3/a/b3/g;->e:Lq3/a/b3/b;

    return-void
.end method

.method public static a(ZI)Lq3/a/b3/c;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    new-instance p1, Lq3/a/b3/d;

    invoke-direct {p1, p0}, Lq3/a/b3/d;-><init>(Z)V

    return-object p1
.end method
