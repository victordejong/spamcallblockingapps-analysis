.class public final Lq3/a/x2/o1/k$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/x2/o1/k$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic a:Ls1/z/c/c0;

.field public final synthetic b:Lq3/a/i0;

.field public final synthetic c:Lq3/a/x2/o1/k;

.field public final synthetic d:Lq3/a/x2/g;


# direct methods
.method public constructor <init>(Ls1/z/c/c0;Lq3/a/i0;Lq3/a/x2/o1/k;Lq3/a/x2/g;)V
    .locals 0

    iput-object p1, p0, Lq3/a/x2/o1/k$a$b;->a:Ls1/z/c/c0;

    iput-object p2, p0, Lq3/a/x2/o1/k$a$b;->b:Lq3/a/i0;

    iput-object p3, p0, Lq3/a/x2/o1/k$a$b;->c:Lq3/a/x2/o1/k;

    iput-object p4, p0, Lq3/a/x2/o1/k$a$b;->d:Lq3/a/x2/g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p2, Lq3/a/x2/o1/k$a$b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lq3/a/x2/o1/k$a$b$a;

    iget v1, v0, Lq3/a/x2/o1/k$a$b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq3/a/x2/o1/k$a$b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq3/a/x2/o1/k$a$b$a;

    invoke-direct {v0, p0, p2}, Lq3/a/x2/o1/k$a$b$a;-><init>(Lq3/a/x2/o1/k$a$b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lq3/a/x2/o1/k$a$b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    iget v2, v0, Lq3/a/x2/o1/k$a$b$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    .line 1
    iget-object p1, v0, Lq3/a/x2/o1/k$a$b$a;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/p1;

    iget-object p1, v0, Lq3/a/x2/o1/k$a$b$a;->h:Ljava/lang/Object;

    iget-object v0, v0, Lq3/a/x2/o1/k$a$b$a;->g:Ljava/lang/Object;

    check-cast v0, Lq3/a/x2/o1/k$a$b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lq3/a/x2/o1/k$a$b;->a:Ls1/z/c/c0;

    iget-object p2, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p2, Lq3/a/p1;

    if-nez p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    new-instance v2, Lq3/a/x2/o1/m;

    invoke-direct {v2}, Lq3/a/x2/o1/m;-><init>()V

    invoke-interface {p2, v2}, Lq3/a/p1;->d(Ljava/util/concurrent/CancellationException;)V

    .line 6
    iput-object p0, v0, Lq3/a/x2/o1/k$a$b$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Lq3/a/x2/o1/k$a$b$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Lq3/a/x2/o1/k$a$b$a;->i:Ljava/lang/Object;

    iput v3, v0, Lq3/a/x2/o1/k$a$b$a;->e:I

    invoke-interface {p2, v0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    move-object v0, p0

    .line 7
    :goto_2
    iget-object p2, v0, Lq3/a/x2/o1/k$a$b;->a:Ls1/z/c/c0;

    iget-object v1, v0, Lq3/a/x2/o1/k$a$b;->b:Lq3/a/i0;

    const/4 v2, 0x0

    sget-object v3, Lq3/a/j0;->d:Lq3/a/j0;

    new-instance v4, Lq3/a/x2/o1/k$a$a;

    iget-object v5, v0, Lq3/a/x2/o1/k$a$b;->c:Lq3/a/x2/o1/k;

    iget-object v0, v0, Lq3/a/x2/o1/k$a$b;->d:Lq3/a/x2/g;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, p1, v6}, Lq3/a/x2/o1/k$a$a;-><init>(Lq3/a/x2/o1/k;Lq3/a/x2/g;Ljava/lang/Object;Ls1/w/d;)V

    const/4 v5, 0x1

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
