.class public final Le/a/y2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lw3/b/a/i;

.field public b:Ln3/m0/f;

.field public final c:Ln3/m0/d$a;

.field public d:Ls1/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/k<",
            "+",
            "Ln3/m0/a;",
            "Lw3/b/a/i;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ls1/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/c<",
            "+",
            "Lcom/truecaller/background_work/TrackedWorker;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lw3/b/a/i;


# direct methods
.method public constructor <init>(Ls1/a/c;Lw3/b/a/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/c<",
            "+",
            "Lcom/truecaller/background_work/TrackedWorker;",
            ">;",
            "Lw3/b/a/i;",
            ")V"
        }
    .end annotation

    const-string v0, "workerClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y2/h;->e:Ls1/a/c;

    iput-object p2, p0, Le/a/y2/h;->f:Lw3/b/a/i;

    .line 2
    new-instance p1, Ln3/m0/d$a;

    invoke-direct {p1}, Ln3/m0/d$a;-><init>()V

    iput-object p1, p0, Le/a/y2/h;->c:Ln3/m0/d$a;

    return-void
.end method

.method public synthetic constructor <init>(Ls1/a/c;Lw3/b/a/i;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p2}, Le/a/y2/h;-><init>(Ls1/a/c;Lw3/b/a/i;)V

    return-void
.end method


# virtual methods
.method public final a()Ln3/m0/r;
    .locals 2

    .line 1
    new-instance v0, Ln3/m0/r$a;

    iget-object v1, p0, Le/a/y2/h;->e:Ls1/a/c;

    invoke-static {v1}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0, v0}, Le/a/y2/h;->c(Ln3/m0/z$a;)V

    .line 3
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    const-string v1, "OneTimeWorkRequest.Build\u2026t) }\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln3/m0/r;

    return-object v0
.end method

.method public final b()Ln3/m0/u;
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/y2/h;->f:Lw3/b/a/i;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/y2/h;->a:Lw3/b/a/i;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ln3/m0/u$a;

    iget-object v1, p0, Le/a/y2/h;->e:Ls1/a/c;

    invoke-static {v1}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Le/a/y2/h;->f:Lw3/b/a/i;

    .line 4
    iget-wide v2, v2, Lw3/b/a/e0/f;->a:J

    .line 5
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Ln3/m0/u$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v1, Ln3/m0/u$a;

    iget-object v2, p0, Le/a/y2/h;->e:Ls1/a/c;

    invoke-static {v2}, Le/q/f/a/d/a;->O0(Ls1/a/c;)Ljava/lang/Class;

    move-result-object v6

    iget-object v2, p0, Le/a/y2/h;->f:Lw3/b/a/i;

    .line 7
    iget-wide v7, v2, Lw3/b/a/e0/f;->a:J

    .line 8
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 9
    iget-wide v10, v0, Lw3/b/a/e0/f;->a:J

    move-object v5, v1

    move-object v9, v12

    .line 10
    invoke-direct/range {v5 .. v12}, Ln3/m0/u$a;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    move-object v0, v1

    .line 11
    :goto_0
    invoke-virtual {p0, v0}, Le/a/y2/h;->c(Ln3/m0/z$a;)V

    .line 12
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    const-string v1, "when (val flex: Duration\u2026t) }\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln3/m0/u;

    return-object v0

    .line 13
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interval of a periodic request can not be null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(Ln3/m0/z$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/z$a<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/y2/h;->c:Ln3/m0/d$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ln3/m0/d;

    invoke-direct {v1, v0}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 4
    iget-object v0, p1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v1, v0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 5
    invoke-virtual {p1}, Ln3/m0/z$a;->d()Ln3/m0/z$a;

    .line 6
    iget-object v0, p0, Le/a/y2/h;->d:Ls1/k;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, v0, Ls1/k;->a:Ljava/lang/Object;

    .line 8
    check-cast v1, Ln3/m0/a;

    .line 9
    iget-object v0, v0, Ls1/k;->b:Ljava/lang/Object;

    .line 10
    check-cast v0, Lw3/b/a/i;

    .line 11
    iget-wide v2, v0, Lw3/b/a/e0/f;->a:J

    .line 12
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3, v0}, Ln3/m0/z$a;->e(Ln3/m0/a;JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    .line 13
    :cond_0
    iget-object v0, p0, Le/a/y2/h;->b:Ln3/m0/f;

    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v1, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 15
    invoke-virtual {p1}, Ln3/m0/z$a;->d()Ln3/m0/z$a;

    :cond_1
    return-void
.end method

.method public final d(Ln3/m0/a;Lw3/b/a/i;)Le/a/y2/h;
    .locals 1

    const-string v0, "backoffPolicy"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffDelay"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/k;

    invoke-direct {v0, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Le/a/y2/h;->d:Ls1/k;

    return-object p0
.end method

.method public final e(Ln3/m0/f;)Le/a/y2/h;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/y2/h;->b:Ln3/m0/f;

    return-object p0
.end method

.method public final f(Ln3/m0/q;)Le/a/y2/h;
    .locals 1

    const-string v0, "networkType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y2/h;->c:Ln3/m0/d$a;

    .line 2
    iput-object p1, v0, Ln3/m0/d$a;->c:Ln3/m0/q;

    return-object p0
.end method
