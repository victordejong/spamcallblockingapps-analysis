.class public final Lq3/a/x2/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/f<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1",
        "Lkotlinx/coroutines/flow/Flow;",
        "collect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public final synthetic a:Lq3/a/x2/f;

.field public final synthetic b:Lq3/a/x2/f;

.field public final synthetic c:Ls1/z/b/q;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V
    .locals 0

    iput-object p1, p0, Lq3/a/x2/w0;->a:Lq3/a/x2/f;

    iput-object p2, p0, Lq3/a/x2/w0;->b:Lq3/a/x2/f;

    iput-object p3, p0, Lq3/a/x2/w0;->c:Ls1/z/b/q;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/g<",
            "-TR;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lq3/a/x2/f;

    .line 1
    iget-object v1, p0, Lq3/a/x2/w0;->a:Lq3/a/x2/f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lq3/a/x2/w0;->b:Lq3/a/x2/f;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lq3/a/x2/y0;->b:Lq3/a/x2/y0;

    .line 3
    new-instance v2, Lq3/a/x2/x0;

    iget-object v3, p0, Lq3/a/x2/w0;->c:Ls1/z/b/q;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lq3/a/x2/x0;-><init>(Ls1/z/b/q;Ls1/w/d;)V

    invoke-static {p1, v0, v1, v2, p2}, Ls1/a/a/a/v0/f/d;->h0(Lq3/a/x2/g;[Lq3/a/x2/f;Ls1/z/b/a;Ls1/z/b/q;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
