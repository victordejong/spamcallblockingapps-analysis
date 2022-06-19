.class public final Lq3/a/v2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/v2/a;->t0(JLjava/lang/Runnable;Ls1/w/f;)Lq3/a/v0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "kotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1",
        "Lkotlinx/coroutines/DisposableHandle;",
        "dispose",
        "",
        "kotlinx-coroutines-android"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/v2/a;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lq3/a/v2/a;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lq3/a/v2/a$a;->a:Lq3/a/v2/a;

    iput-object p2, p0, Lq3/a/v2/a$a;->b:Ljava/lang/Runnable;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/a/v2/a$a;->a:Lq3/a/v2/a;

    .line 2
    iget-object v0, v0, Lq3/a/v2/a;->b:Landroid/os/Handler;

    .line 3
    iget-object v1, p0, Lq3/a/v2/a$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
