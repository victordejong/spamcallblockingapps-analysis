.class public final Lq3/a/x2/p$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/x2/p;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/w2/m<",
        "+",
        "Ljava/lang/Object;",
        ">;",
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "value",
        "Lkotlinx/coroutines/channels/ChannelResult;",
        ""
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
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2"
    f = "Delay.kt"
    l = {
        0xf5
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ls1/z/c/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/c/c0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic i:Lq3/a/x2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/g<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/z/c/c0;Lq3/a/x2/g;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/c/c0<",
            "Ljava/lang/Object;",
            ">;",
            "Lq3/a/x2/g<",
            "-TT;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/p$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/p$b;->h:Ls1/z/c/c0;

    iput-object p2, p0, Lq3/a/x2/p$b;->i:Lq3/a/x2/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    new-instance v0, Lq3/a/x2/p$b;

    iget-object v1, p0, Lq3/a/x2/p$b;->h:Ls1/z/c/c0;

    iget-object v2, p0, Lq3/a/x2/p$b;->i:Lq3/a/x2/g;

    invoke-direct {v0, v1, v2, p2}, Lq3/a/x2/p$b;-><init>(Ls1/z/c/c0;Lq3/a/x2/g;Ls1/w/d;)V

    iput-object p1, v0, Lq3/a/x2/p$b;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lq3/a/w2/m;

    .line 1
    iget-object p1, p1, Lq3/a/w2/m;->a:Ljava/lang/Object;

    .line 2
    check-cast p2, Ls1/w/d;

    .line 3
    new-instance v0, Lq3/a/w2/m;

    invoke-direct {v0, p1}, Lq3/a/w2/m;-><init>(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lq3/a/x2/p$b;

    iget-object v1, p0, Lq3/a/x2/p$b;->h:Ls1/z/c/c0;

    iget-object v2, p0, Lq3/a/x2/p$b;->i:Lq3/a/x2/g;

    invoke-direct {p1, v1, v2, p2}, Lq3/a/x2/p$b;-><init>(Ls1/z/c/c0;Lq3/a/x2/g;Ls1/w/d;)V

    iput-object v0, p1, Lq3/a/x2/p$b;->g:Ljava/lang/Object;

    .line 5
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lq3/a/x2/p$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lq3/a/x2/p$b;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lq3/a/x2/p$b;->e:Ljava/lang/Object;

    check-cast v0, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lq3/a/x2/p$b;->g:Ljava/lang/Object;

    check-cast p1, Lq3/a/w2/m;

    .line 4
    iget-object p1, p1, Lq3/a/w2/m;->a:Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lq3/a/x2/p$b;->h:Ls1/z/c/c0;

    .line 6
    instance-of v3, p1, Lq3/a/w2/m$c;

    if-nez v3, :cond_2

    .line 7
    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v4, p0, Lq3/a/x2/p$b;->i:Lq3/a/x2/g;

    if-eqz v3, :cond_7

    .line 9
    invoke-static {p1}, Lq3/a/w2/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_6

    .line 10
    iget-object v3, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-eqz v3, :cond_5

    sget-object v5, Lq3/a/x2/o1/w;->a:Lq3/a/y2/x;

    if-ne v3, v5, :cond_3

    const/4 v3, 0x0

    :cond_3
    iput-object p1, p0, Lq3/a/x2/p$b;->g:Ljava/lang/Object;

    iput-object v1, p0, Lq3/a/x2/p$b;->e:Ljava/lang/Object;

    iput v2, p0, Lq3/a/x2/p$b;->f:I

    invoke-interface {v4, v3, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v0, v1

    :goto_0
    move-object v1, v0

    .line 11
    :cond_5
    sget-object p1, Lq3/a/x2/o1/w;->c:Lq3/a/y2/x;

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_6
    throw v3

    .line 13
    :cond_7
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
