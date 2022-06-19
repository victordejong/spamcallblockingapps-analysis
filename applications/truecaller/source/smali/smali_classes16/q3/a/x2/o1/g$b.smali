.class public final Lq3/a/x2/o1/g$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/x2/o1/g;->i(Lq3/a/w2/x;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "kotlinx.coroutines.flow.internal.ChannelFlowMerge$collectTo$2$1"
    f = "Merge.kt"
    l = {
        0x45
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Lq3/a/x2/o1/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/o1/a0<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic h:Lq3/a/b3/h;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Lq3/a/x2/o1/a0;Lq3/a/b3/h;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f<",
            "+TT;>;",
            "Lq3/a/x2/o1/a0<",
            "TT;>;",
            "Lq3/a/b3/h;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/o1/g$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/o1/g$b;->f:Lq3/a/x2/f;

    iput-object p2, p0, Lq3/a/x2/o1/g$b;->g:Lq3/a/x2/o1/a0;

    iput-object p3, p0, Lq3/a/x2/o1/g$b;->h:Lq3/a/b3/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    new-instance p1, Lq3/a/x2/o1/g$b;

    iget-object v0, p0, Lq3/a/x2/o1/g$b;->f:Lq3/a/x2/f;

    iget-object v1, p0, Lq3/a/x2/o1/g$b;->g:Lq3/a/x2/o1/a0;

    iget-object v2, p0, Lq3/a/x2/o1/g$b;->h:Lq3/a/b3/h;

    invoke-direct {p1, v0, v1, v2, p2}, Lq3/a/x2/o1/g$b;-><init>(Lq3/a/x2/f;Lq3/a/x2/o1/a0;Lq3/a/b3/h;Ls1/w/d;)V

    return-object p1
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lq3/a/i0;

    check-cast p2, Ls1/w/d;

    .line 1
    new-instance p1, Lq3/a/x2/o1/g$b;

    iget-object v0, p0, Lq3/a/x2/o1/g$b;->f:Lq3/a/x2/f;

    iget-object v1, p0, Lq3/a/x2/o1/g$b;->g:Lq3/a/x2/o1/a0;

    iget-object v2, p0, Lq3/a/x2/o1/g$b;->h:Lq3/a/b3/h;

    invoke-direct {p1, v0, v1, v2, p2}, Lq3/a/x2/o1/g$b;-><init>(Lq3/a/x2/f;Lq3/a/x2/o1/a0;Lq3/a/b3/h;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lq3/a/x2/o1/g$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lq3/a/x2/o1/g$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Lq3/a/x2/o1/g$b;->f:Lq3/a/x2/f;

    iget-object v1, p0, Lq3/a/x2/o1/g$b;->g:Lq3/a/x2/o1/a0;

    iput v2, p0, Lq3/a/x2/o1/g$b;->e:I

    invoke-interface {p1, v1, p0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lq3/a/x2/o1/g$b;->h:Lq3/a/b3/h;

    invoke-interface {p1}, Lq3/a/b3/h;->release()V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 7
    :goto_1
    iget-object v0, p0, Lq3/a/x2/o1/g$b;->h:Lq3/a/b3/h;

    invoke-interface {v0}, Lq3/a/b3/h;->release()V

    throw p1
.end method
