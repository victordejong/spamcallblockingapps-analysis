.class public final Ln3/z/h$a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.CachedPageEventFlow$downstreamFlow$1$historyCollection$1"
    f = "CachedPageEventFlow.kt"
    l = {
        0x124
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ln3/z/y2;

.field public final synthetic g:Ln3/z/e3;

.field public final synthetic h:Ls1/z/c/a0;


# direct methods
.method public constructor <init>(Ln3/z/y2;Ln3/z/e3;Ls1/z/c/a0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h$a$b;->f:Ln3/z/y2;

    iput-object p2, p0, Ln3/z/h$a$b;->g:Ln3/z/e3;

    iput-object p3, p0, Ln3/z/h$a$b;->h:Ls1/z/c/a0;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/h$a$b;

    iget-object v0, p0, Ln3/z/h$a$b;->f:Ln3/z/y2;

    iget-object v1, p0, Ln3/z/h$a$b;->g:Ln3/z/e3;

    iget-object v2, p0, Ln3/z/h$a$b;->h:Ls1/z/c/a0;

    invoke-direct {p1, v0, v1, v2, p2}, Ln3/z/h$a$b;-><init>(Ln3/z/y2;Ln3/z/e3;Ls1/z/c/a0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/h$a$b;

    iget-object v0, p0, Ln3/z/h$a$b;->f:Ln3/z/y2;

    iget-object v1, p0, Ln3/z/h$a$b;->g:Ln3/z/e3;

    iget-object v2, p0, Ln3/z/h$a$b;->h:Ls1/z/c/a0;

    invoke-direct {p1, v0, v1, v2, p2}, Ln3/z/h$a$b;-><init>(Ln3/z/y2;Ln3/z/e3;Ls1/z/c/a0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Ln3/z/h$a$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/h$a$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Ln3/z/h$a$b;->g:Ln3/z/e3;

    .line 5
    iget-object p1, p1, Ln3/z/e3;->a:Lq3/a/w2/j;

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->l0(Lq3/a/w2/z;)Lq3/a/x2/f;

    move-result-object p1

    .line 6
    new-instance v1, Ln3/z/h$a$b$a;

    invoke-direct {v1, p0}, Ln3/z/h$a$b$a;-><init>(Ln3/z/h$a$b;)V

    iput v2, p0, Ln3/z/h$a$b;->e:I

    check-cast p1, Lq3/a/x2/c;

    invoke-virtual {p1, v1, p0}, Lq3/a/x2/c;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
