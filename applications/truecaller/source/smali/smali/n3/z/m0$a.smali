.class public final Ln3/z/m0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/m0;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.paging.LegacyPageFetcher$scheduleLoad$1$1"
    f = "LegacyPageFetcher.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ln3/z/m0;

.field public final synthetic f:Ln3/z/k2$b;


# direct methods
.method public constructor <init>(Ln3/z/m0;Ln3/z/k2$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/m0$a;->e:Ln3/z/m0;

    iput-object p2, p0, Ln3/z/m0$a;->f:Ln3/z/k2$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ln3/z/m0$a;

    iget-object v0, p0, Ln3/z/m0$a;->e:Ln3/z/m0;

    iget-object v1, p0, Ln3/z/m0$a;->f:Ln3/z/k2$b;

    invoke-direct {p1, v0, v1, p2}, Ln3/z/m0$a;-><init>(Ln3/z/m0;Ln3/z/k2$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln3/z/m0$a;->e:Ln3/z/m0;

    iget-object v1, p0, Ln3/z/m0$a;->f:Ln3/z/k2$b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    instance-of p2, v1, Ln3/z/k2$b$b;

    if-eqz p2, :cond_0

    iget-object p2, v0, Ln3/z/m0;->g:Ln3/z/l0;

    iget-object v0, v0, Ln3/z/m0;->i:Ln3/z/t0;

    check-cast v1, Ln3/z/k2$b$b;

    .line 5
    invoke-virtual {p2, v0, v1}, Ln3/z/l0;->b(Ln3/z/t0;Ln3/z/k2$b$b;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of p2, v1, Ln3/z/k2$b$a;

    if-eqz p2, :cond_2

    iget-object p2, v0, Ln3/z/m0;->g:Ln3/z/l0;

    iget-object v0, v0, Ln3/z/m0;->i:Ln3/z/t0;

    check-cast v1, Ln3/z/k2$b$a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2}, Ln3/z/l0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Ln3/z/r0$a;

    invoke-direct {v2, v1}, Ln3/z/r0$a;-><init>(Ljava/lang/Throwable;)V

    .line 9
    iget-object p2, p2, Ln3/z/l0;->b:Ln3/z/q1$d;

    invoke-virtual {p2, v0, v2}, Ln3/z/q1$d;->b(Ln3/z/t0;Ln3/z/r0;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/z/m0$a;->f:Ln3/z/k2$b;

    .line 3
    instance-of v0, p1, Ln3/z/k2$b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/z/m0$a;->e:Ln3/z/m0;

    iget-object v1, v0, Ln3/z/m0;->g:Ln3/z/l0;

    iget-object v0, v0, Ln3/z/m0;->i:Ln3/z/t0;

    check-cast p1, Ln3/z/k2$b$b;

    .line 4
    invoke-virtual {v1, v0, p1}, Ln3/z/l0;->b(Ln3/z/t0;Ln3/z/k2$b$b;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Ln3/z/k2$b$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ln3/z/m0$a;->e:Ln3/z/m0;

    iget-object v1, v0, Ln3/z/m0;->g:Ln3/z/l0;

    iget-object v0, v0, Ln3/z/m0;->i:Ln3/z/t0;

    check-cast p1, Ln3/z/k2$b$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v1}, Ln3/z/l0;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v2, Ln3/z/r0$a;

    invoke-direct {v2, p1}, Ln3/z/r0$a;-><init>(Ljava/lang/Throwable;)V

    .line 8
    iget-object p1, v1, Ln3/z/l0;->b:Ln3/z/q1$d;

    invoke-virtual {p1, v0, v2}, Ln3/z/q1$d;->b(Ln3/z/t0;Ln3/z/r0;)V

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
