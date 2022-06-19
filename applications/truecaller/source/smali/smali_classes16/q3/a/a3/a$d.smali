.class public final Lq3/a/a3/a$d;
.super Lq3/a/r1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/a3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0096\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/SelectBuilderImpl$SelectOnCancelling;",
        "Lkotlinx/coroutines/JobCancellingNode;",
        "(Lkotlinx/coroutines/selects/SelectBuilderImpl;)V",
        "invoke",
        "",
        "cause",
        "",
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


# instance fields
.field public final synthetic e:Lq3/a/a3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/a3/a<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/a3/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/a/a3/a$d;->e:Lq3/a/a3/a;

    invoke-direct {p0}, Lq3/a/r1;-><init>()V

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lq3/a/a3/a$d;->e:Lq3/a/a3/a;

    invoke-virtual {p1}, Lq3/a/a3/a;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lq3/a/a3/a$d;->e:Lq3/a/a3/a;

    invoke-virtual {p0}, Lq3/a/t1;->P()Lq3/a/u1;

    move-result-object v0

    invoke-virtual {v0}, Lq3/a/u1;->p0()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lq3/a/a3/a;->z(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/a/a3/a$d;->O(Ljava/lang/Throwable;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
