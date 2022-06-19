.class public final Lq3/a/x2/p$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


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
        "Ls1/z/b/l<",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "T"
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
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1"
    f = "Delay.kt"
    l = {
        0xeb
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lq3/a/x2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic g:Ls1/z/c/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/c/c0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/g<",
            "-TT;>;",
            "Ls1/z/c/c0<",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/p$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/x2/p$a;->f:Lq3/a/x2/g;

    iput-object p2, p0, Lq3/a/x2/p$a;->g:Ls1/z/c/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    .line 1
    new-instance v0, Lq3/a/x2/p$a;

    iget-object v1, p0, Lq3/a/x2/p$a;->f:Lq3/a/x2/g;

    iget-object v2, p0, Lq3/a/x2/p$a;->g:Ls1/z/c/c0;

    invoke-direct {v0, v1, v2, p1}, Lq3/a/x2/p$a;-><init>(Lq3/a/x2/g;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lq3/a/x2/p$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq3/a/x2/p$a;

    iget-object v1, p0, Lq3/a/x2/p$a;->f:Lq3/a/x2/g;

    iget-object v2, p0, Lq3/a/x2/p$a;->g:Ls1/z/c/c0;

    invoke-direct {v0, v1, v2, p1}, Lq3/a/x2/p$a;-><init>(Lq3/a/x2/g;Ls1/z/c/c0;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lq3/a/x2/p$a;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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

    .line 4
    iget-object p1, p0, Lq3/a/x2/p$a;->f:Lq3/a/x2/g;

    sget-object v1, Lq3/a/x2/o1/w;->a:Lq3/a/y2/x;

    iget-object v4, p0, Lq3/a/x2/p$a;->g:Ls1/z/c/c0;

    iget-object v4, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    if-ne v4, v1, :cond_2

    move-object v4, v2

    :cond_2
    iput v3, p0, Lq3/a/x2/p$a;->e:I

    invoke-interface {p1, v4, p0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 5
    :cond_3
    :goto_0
    iget-object p1, p0, Lq3/a/x2/p$a;->g:Ls1/z/c/c0;

    iput-object v2, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
