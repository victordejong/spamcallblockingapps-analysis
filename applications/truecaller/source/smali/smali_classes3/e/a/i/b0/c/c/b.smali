.class public final Le/a/i/b0/c/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/b0/c/c/a;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/i/b0/c/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/c0;

.field public final d:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/i/b0/c/c/b$d;

    invoke-direct {v0, p0, p1}, Le/a/i/b0/c/c/b$d;-><init>(Le/a/i/b0/c/c/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/b0/c/c/b;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/i/b0/c/c/b$e;

    invoke-direct {v0, p0, p1}, Le/a/i/b0/c/c/b$e;-><init>(Le/a/i/b0/c/c/b;Ln3/c0/q;)V

    .line 5
    new-instance v0, Le/a/i/b0/c/c/b$f;

    invoke-direct {v0, p0, p1}, Le/a/i/b0/c/c/b$f;-><init>(Le/a/i/b0/c/c/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/b0/c/c/b;->c:Ln3/c0/c0;

    .line 6
    new-instance v0, Le/a/i/b0/c/c/b$g;

    invoke-direct {v0, p0, p1}, Le/a/i/b0/c/c/b$g;-><init>(Le/a/i/b0/c/c/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/b0/c/c/b;->d:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/i/b0/c/d/a;",
            ">;",
            "Ls1/w/d<",
            "-[J>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/b0/c/c/b$h;

    invoke-direct {v1, p0, p1}, Le/a/i/b0/c/c/b$h;-><init>(Le/a/i/b0/c/c/b;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/i/b0/c/d/a;",
            ">;",
            "Ls1/w/d<",
            "-[J>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/b0/c/c/b$h;

    invoke-direct {v1, p0, p1}, Le/a/i/b0/c/c/b$h;-><init>(Le/a/i/b0/c/c/b;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/b0/c/c/b$a;

    invoke-direct {v1, p0}, Le/a/i/b0/c/c/b$a;-><init>(Le/a/i/b0/c/c/b;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/i/b0/c/d/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT * FROM ad_campaigns WHERE \n            phone_number = ? AND \n            placement_name = ? AND \n            expires_at >= ?\n        "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, p1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 6
    :goto_1
    invoke-virtual {v0, v1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 7
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 8
    iget-object p2, p0, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance p4, Le/a/i/b0/c/c/b$b;

    invoke-direct {p4, p0, v0}, Le/a/i/b0/c/c/b$b;-><init>(Le/a/i/b0/c/c/b;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, p4, p5}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u(Ljava/lang/String;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/b0/c/c/b$c;

    invoke-direct {v1, p0, p2, p1}, Le/a/i/b0/c/c/b$c;-><init>(Le/a/i/b0/c/c/b;Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(JLs1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/b0/c/c/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/b0/c/c/b$i;

    invoke-direct {v1, p0, p1, p2}, Le/a/i/b0/c/c/b$i;-><init>(Le/a/i/b0/c/c/b;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
