.class public final Lq3/a/u2;
.super Ls1/w/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/a/u2$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/coroutines/YieldContext;",
        "Lkotlin/coroutines/AbstractCoroutineContextElement;",
        "()V",
        "dispatcherWasUnconfined",
        "",
        "Key",
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
.field public static final b:Lq3/a/u2$a;


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq3/a/u2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/a/u2$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lq3/a/u2;->b:Lq3/a/u2$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lq3/a/u2;->b:Lq3/a/u2$a;

    invoke-direct {p0, v0}, Ls1/w/a;-><init>(Ls1/w/f$b;)V

    return-void
.end method
