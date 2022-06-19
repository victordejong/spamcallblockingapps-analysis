.class public final Lp3/a/q1/e$e;
.super Lp3/a/q1/e$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/q1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/q1/e$d<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field public final a:Lp3/a/q1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/q1/h<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public final b:Lp3/a/q1/e$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/q1/e$b<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field public c:Z


# direct methods
.method public constructor <init>(Lp3/a/q1/h;Lp3/a/q1/e$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/q1/h<",
            "TRespT;>;",
            "Lp3/a/q1/e$b<",
            "TReqT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lp3/a/q1/e$d;-><init>(Lp3/a/q1/e$a;)V

    .line 2
    iput-object p1, p0, Lp3/a/q1/e$e;->a:Lp3/a/q1/h;

    .line 3
    iput-object p2, p0, Lp3/a/q1/e$e;->b:Lp3/a/q1/e$b;

    .line 4
    instance-of v0, p1, Lp3/a/q1/f;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lp3/a/q1/f;

    .line 6
    invoke-interface {p1, p2}, Lp3/a/q1/f;->c(Lp3/a/q1/d;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lp3/a/g1;Lp3/a/o0;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lp3/a/q1/e$e;->a:Lp3/a/q1/h;

    invoke-interface {p1}, Lp3/a/q1/h;->a()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lp3/a/q1/e$e;->a:Lp3/a/q1/h;

    .line 4
    new-instance v1, Lp3/a/i1;

    invoke-direct {v1, p1, p2}, Lp3/a/i1;-><init>(Lp3/a/g1;Lp3/a/o0;)V

    .line 5
    invoke-interface {v0, v1}, Lp3/a/q1/h;->W0(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b(Lp3/a/o0;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp3/a/q1/e$e;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/q1/e$e;->b:Lp3/a/q1/e$b;

    .line 2
    iget-boolean v0, v0, Lp3/a/q1/e$b;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v0, "More than one responses received for unary or client-streaming call"

    .line 4
    invoke-virtual {p1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lp3/a/q1/e$e;->c:Z

    .line 7
    iget-object v1, p0, Lp3/a/q1/e$e;->a:Lp3/a/q1/h;

    invoke-interface {v1, p1}, Lp3/a/q1/h;->b(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lp3/a/q1/e$e;->b:Lp3/a/q1/e$b;

    .line 9
    iget-boolean v1, p1, Lp3/a/q1/e$b;->b:Z

    if-eqz v1, :cond_2

    .line 10
    invoke-virtual {p1, v0}, Lp3/a/q1/e$b;->d(I)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/q1/e$e;->b:Lp3/a/q1/e$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/q1/e$e;->b:Lp3/a/q1/e$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lp3/a/q1/e$e;->b:Lp3/a/q1/e$b;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lp3/a/q1/e$b;->d(I)V

    return-void
.end method
