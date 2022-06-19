.class public final Le/a/i/v/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/v/f;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/i/v/i;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/i/y/a;

.field public final d:Ln3/c0/c0;

.field public final e:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/i/y/a;

    invoke-direct {v0}, Le/a/i/y/a;-><init>()V

    iput-object v0, p0, Le/a/i/v/g;->c:Le/a/i/y/a;

    .line 3
    iput-object p1, p0, Le/a/i/v/g;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/i/v/g$e;

    invoke-direct {v0, p0, p1}, Le/a/i/v/g$e;-><init>(Le/a/i/v/g;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/v/g;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/i/v/g$f;

    invoke-direct {v0, p0, p1}, Le/a/i/v/g$f;-><init>(Le/a/i/v/g;Ln3/c0/q;)V

    .line 6
    new-instance v0, Le/a/i/v/g$g;

    invoke-direct {v0, p0, p1}, Le/a/i/v/g$g;-><init>(Le/a/i/v/g;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/v/g;->d:Ln3/c0/c0;

    .line 7
    new-instance v0, Le/a/i/v/g$h;

    invoke-direct {v0, p0, p1}, Le/a/i/v/g$h;-><init>(Le/a/i/v/g;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/v/g;->e:Ln3/c0/c0;

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
    iget-object v0, p0, Le/a/i/v/g;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/v/g$a;

    invoke-direct {v1, p0}, Le/a/i/v/g$a;-><init>(Le/a/i/v/g;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/v/g;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/v/g$b;

    invoke-direct {v1, p0, p1}, Le/a/i/v/g$b;-><init>(Le/a/i/v/g;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/v/i;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Select * from cached_ads where ad_placement in (?)"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object v1, p0, Le/a/i/v/g;->a:Ln3/c0/q;

    const/4 v2, 0x0

    new-instance v3, Le/a/i/v/g$c;

    invoke-direct {v3, p0, v0}, Le/a/i/v/g$c;-><init>(Le/a/i/v/g;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/i/v/i;

    .line 2
    iget-object v0, p0, Le/a/i/v/g;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/v/h;

    invoke-direct {v1, p0, p1}, Le/a/i/v/h;-><init>(Le/a/i/v/g;Le/a/i/v/i;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Select ad_expiry from cached_ads where ad_placement in (?)"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object v1, p0, Le/a/i/v/g;->a:Ln3/c0/q;

    const/4 v2, 0x0

    new-instance v3, Le/a/i/v/g$d;

    invoke-direct {v3, p0, v0}, Le/a/i/v/g$d;-><init>(Le/a/i/v/g;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t(Le/a/i/v/i;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/v/i;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/v/g;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/v/g$i;

    invoke-direct {v1, p0, p1, p2}, Le/a/i/v/g$i;-><init>(Le/a/i/v/g;Le/a/i/v/i;Ljava/lang/String;)V

    invoke-static {v0, v1, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
