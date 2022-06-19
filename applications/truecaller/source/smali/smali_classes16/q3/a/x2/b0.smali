.class public final Lq3/a/x2/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field public final synthetic a:Ls1/z/c/a0;

.field public final synthetic b:I

.field public final synthetic c:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Ls1/z/c/a0;ILq3/a/x2/g;)V
    .locals 0

    iput-object p1, p0, Lq3/a/x2/b0;->a:Ls1/z/c/a0;

    iput p2, p0, Lq3/a/x2/b0;->b:I

    iput-object p3, p0, Lq3/a/x2/b0;->c:Lq3/a/x2/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    iget-object v1, p0, Lq3/a/x2/b0;->a:Ls1/z/c/a0;

    iget v2, v1, Ls1/z/c/a0;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Ls1/z/c/a0;->a:I

    iget v1, p0, Lq3/a/x2/b0;->b:I

    if-ge v2, v1, :cond_1

    .line 2
    iget-object v1, p0, Lq3/a/x2/b0;->c:Lq3/a/x2/g;

    invoke-interface {v1, p1, p2}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_1
    iget-object v1, p0, Lq3/a/x2/b0;->c:Lq3/a/x2/g;

    invoke-static {v1, p1, p2}, Lq3/a/x2/m;->a(Lq3/a/x2/g;Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    return-object v0
.end method
