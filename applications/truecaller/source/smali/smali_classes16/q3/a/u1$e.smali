.class public final Lq3/a/u1$e;
.super Ls1/w/k/a/h;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/u1;->W()Ls1/e0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/h;",
        "Ls1/z/b/p<",
        "Ls1/e0/m<",
        "-",
        "Lq3/a/u;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/sequences/SequenceScope;",
        "Lkotlinx/coroutines/ChildJob;"
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
    c = "kotlinx.coroutines.JobSupport$children$1"
    f = "JobSupport.kt"
    l = {
        0x3b8,
        0x3ba
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lq3/a/u1;


# direct methods
.method public constructor <init>(Lq3/a/u1;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/u1;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/u1$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lq3/a/u1$e;->g:Lq3/a/u1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/h;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance v0, Lq3/a/u1$e;

    iget-object v1, p0, Lq3/a/u1$e;->g:Lq3/a/u1;

    invoke-direct {v0, v1, p2}, Lq3/a/u1$e;-><init>(Lq3/a/u1;Ls1/w/d;)V

    iput-object p1, v0, Lq3/a/u1$e;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/e0/m;

    check-cast p2, Ls1/w/d;

    .line 1
    new-instance v0, Lq3/a/u1$e;

    iget-object v1, p0, Lq3/a/u1$e;->g:Lq3/a/u1;

    invoke-direct {v0, v1, p2}, Lq3/a/u1$e;-><init>(Lq3/a/u1;Ls1/w/d;)V

    iput-object p1, v0, Lq3/a/u1$e;->f:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lq3/a/u1$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lq3/a/u1$e;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lq3/a/u1$e;->d:Ljava/lang/Object;

    check-cast v1, Lq3/a/y2/m;

    iget-object v3, p0, Lq3/a/u1$e;->c:Ljava/lang/Object;

    check-cast v3, Lq3/a/y2/k;

    iget-object v4, p0, Lq3/a/u1$e;->f:Ljava/lang/Object;

    check-cast v4, Ls1/e0/m;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p1, p0

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

    goto :goto_2

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lq3/a/u1$e;->f:Ljava/lang/Object;

    check-cast p1, Ls1/e0/m;

    .line 4
    iget-object v1, p0, Lq3/a/u1$e;->g:Lq3/a/u1;

    invoke-virtual {v1}, Lq3/a/u1;->V()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v4, v1, Lq3/a/t;

    if-eqz v4, :cond_3

    check-cast v1, Lq3/a/t;

    iget-object v1, v1, Lq3/a/t;->e:Lq3/a/u;

    iput v3, p0, Lq3/a/u1$e;->e:I

    invoke-virtual {p1, v1, p0}, Ls1/e0/m;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 6
    :cond_3
    instance-of v3, v1, Lq3/a/j1;

    if-eqz v3, :cond_6

    check-cast v1, Lq3/a/j1;

    invoke-interface {v1}, Lq3/a/j1;->N()Lq3/a/z1;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    invoke-virtual {v1}, Lq3/a/y2/m;->E()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lq3/a/y2/m;

    move-object v4, p1

    move-object p1, p0

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    .line 8
    :goto_0
    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 9
    instance-of v5, v1, Lq3/a/t;

    if-eqz v5, :cond_5

    move-object v5, v1

    check-cast v5, Lq3/a/t;

    .line 10
    iget-object v5, v5, Lq3/a/t;->e:Lq3/a/u;

    iput-object v4, p1, Lq3/a/u1$e;->f:Ljava/lang/Object;

    iput-object v3, p1, Lq3/a/u1$e;->c:Ljava/lang/Object;

    iput-object v1, p1, Lq3/a/u1$e;->d:Ljava/lang/Object;

    iput v2, p1, Lq3/a/u1$e;->e:I

    invoke-virtual {v4, v5, p1}, Ls1/e0/m;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_5

    return-object v0

    .line 11
    :cond_5
    :goto_1
    invoke-virtual {v1}, Lq3/a/y2/m;->F()Lq3/a/y2/m;

    move-result-object v1

    goto :goto_0

    .line 12
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
