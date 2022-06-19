.class public final Le/a/i/e/h/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/e/h/a/i;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/i/e/h/b/c;",
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
    iput-object p1, p0, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/i/e/h/a/j$f;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/j$f;-><init>(Le/a/i/e/h/a/j;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/e/h/a/j;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/i/e/h/a/j$g;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/j$g;-><init>(Le/a/i/e/h/a/j;Ln3/c0/q;)V

    .line 5
    new-instance v0, Le/a/i/e/h/a/j$h;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/j$h;-><init>(Le/a/i/e/h/a/j;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/e/h/a/j;->c:Ln3/c0/c0;

    .line 6
    new-instance v0, Le/a/i/e/h/a/j$i;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/j$i;-><init>(Le/a/i/e/h/a/j;Ln3/c0/q;)V

    .line 7
    new-instance v0, Le/a/i/e/h/a/j$j;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/j$j;-><init>(Le/a/i/e/h/a/j;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/e/h/a/j;->d:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public B(Le/a/i/e/h/b/c;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/e/h/b/c;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/j$a;

    invoke-direct {v1, p0, p1}, Le/a/i/e/h/a/j$a;-><init>(Le/a/i/e/h/a/j;Le/a/i/e/h/b/c;)V

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ls1/w/d;)Ljava/lang/Object;
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
    iget-object v0, p0, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/j$b;

    invoke-direct {v1, p0}, Le/a/i/e/h/a/j$b;-><init>(Le/a/i/e/h/a/j;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/i/e/h/b/c;

    .line 2
    iget-object v0, p0, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/k;

    invoke-direct {v1, p0, p1}, Le/a/i/e/h/a/k;-><init>(Le/a/i/e/h/a/j;Le/a/i/e/h/b/c;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(ZLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/j$c;

    invoke-direct {v1, p0, p1, p2}, Le/a/i/e/h/a/j$c;-><init>(Le/a/i/e/h/a/j;ZLjava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/i/e/h/b/c;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Select * from offline_leadgen"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    new-instance v4, Le/a/i/e/h/a/j$d;

    invoke-direct {v4, p0, v0}, Le/a/i/e/h/a/j$d;-><init>(Le/a/i/e/h/a/j;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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

    const-string v0, "Select count(*) from offline_leadgen"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    new-instance v4, Le/a/i/e/h/a/j$e;

    invoke-direct {v4, p0, v0}, Le/a/i/e/h/a/j$e;-><init>(Le/a/i/e/h/a/j;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
