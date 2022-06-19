.class public final Ln3/v/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/g0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ls1/w/f;

.field public b:Ln3/v/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/v/h;Ls1/w/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/v/h<",
            "TT;>;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    const-string v0, "target"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/v/h0;->b:Ln3/v/h;

    .line 2
    sget-object p1, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object p1, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 3
    invoke-virtual {p1}, Lq3/a/y1;->K0()Lq3/a/y1;

    move-result-object p1

    invoke-interface {p2, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    iput-object p1, p0, Ln3/v/h0;->a:Ls1/w/f;

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
    iget-object v0, p0, Ln3/v/h0;->a:Ls1/w/f;

    new-instance v1, Ln3/v/h0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ln3/v/h0$a;-><init>(Ln3/v/h0;Ljava/lang/Object;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroidx/lifecycle/LiveData;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;",
            "Ls1/w/d<",
            "-",
            "Lq3/a/v0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/v/h0;->a:Ls1/w/f;

    new-instance v1, Ln3/v/h0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ln3/v/h0$b;-><init>(Ln3/v/h0;Landroidx/lifecycle/LiveData;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
