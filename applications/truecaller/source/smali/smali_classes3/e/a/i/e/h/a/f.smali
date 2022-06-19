.class public final Le/a/i/e/h/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/e/h/a/e;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/i/e/h/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/i/y/a;

.field public final d:Ln3/c0/c0;

.field public final e:Ln3/c0/c0;

.field public final f:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/i/y/a;

    invoke-direct {v0}, Le/a/i/y/a;-><init>()V

    iput-object v0, p0, Le/a/i/e/h/a/f;->c:Le/a/i/y/a;

    .line 3
    iput-object p1, p0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/i/e/h/a/f$g;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/f$g;-><init>(Le/a/i/e/h/a/f;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/e/h/a/f;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/i/e/h/a/f$h;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/f$h;-><init>(Le/a/i/e/h/a/f;Ln3/c0/q;)V

    .line 6
    new-instance v0, Le/a/i/e/h/a/f$i;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/f$i;-><init>(Le/a/i/e/h/a/f;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/e/h/a/f;->d:Ln3/c0/c0;

    .line 7
    new-instance v0, Le/a/i/e/h/a/f$j;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/f$j;-><init>(Le/a/i/e/h/a/f;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/e/h/a/f;->e:Ln3/c0/c0;

    .line 8
    new-instance v0, Le/a/i/e/h/a/f$k;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/f$k;-><init>(Le/a/i/e/h/a/f;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/e/h/a/f;->f:Ln3/c0/c0;

    return-void
.end method


# virtual methods
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
    iget-object v0, p0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/f$b;

    invoke-direct {v1, p0}, Le/a/i/e/h/a/f$b;-><init>(Le/a/i/e/h/a/f;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/f$c;

    invoke-direct {v1, p0}, Le/a/i/e/h/a/f$c;-><init>(Le/a/i/e/h/a/f;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/f$d;

    invoke-direct {v1, p0}, Le/a/i/e/h/a/f$d;-><init>(Le/a/i/e/h/a/f;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/i/e/h/b/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Select * from offline_ads LIMIT 1"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    new-instance v4, Le/a/i/e/h/a/f$e;

    invoke-direct {v4, p0, v0}, Le/a/i/e/h/a/f$e;-><init>(Le/a/i/e/h/a/f;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/i/e/h/b/b;

    .line 2
    iget-object v0, p0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/g;

    invoke-direct {v1, p0, p1}, Le/a/i/e/h/a/g;-><init>(Le/a/i/e/h/a/f;Le/a/i/e/h/b/b;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Select ad_expiry from offline_ads"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    new-instance v4, Le/a/i/e/h/a/f$f;

    invoke-direct {v4, p0, v0}, Le/a/i/e/h/a/f$f;-><init>(Le/a/i/e/h/a/f;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public w(Le/a/i/e/h/b/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/e/h/b/b;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/h/a/f;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/f$a;

    invoke-direct {v1, p0, p1}, Le/a/i/e/h/a/f$a;-><init>(Le/a/i/e/h/a/f;Le/a/i/e/h/b/b;)V

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
