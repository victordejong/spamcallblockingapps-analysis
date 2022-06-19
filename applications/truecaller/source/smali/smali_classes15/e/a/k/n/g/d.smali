.class public final Le/a/k/n/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/n/g/c;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/k/n/g/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/k/n/g/d;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/k/n/g/d$c;

    invoke-direct {v0, p0, p1}, Le/a/k/n/g/d$c;-><init>(Le/a/k/n/g/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/k/n/g/d;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/k/n/g/d$d;

    invoke-direct {v0, p0, p1}, Le/a/k/n/g/d$d;-><init>(Le/a/k/n/g/d;Ln3/c0/q;)V

    .line 5
    new-instance v0, Le/a/k/n/g/d$e;

    invoke-direct {v0, p0, p1}, Le/a/k/n/g/d$e;-><init>(Le/a/k/n/g/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/k/n/g/d;->c:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
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

    const-string v0, "SELECT COUNT(*) FROM outgoing_video"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/k/n/g/d;->a:Ln3/c0/q;

    new-instance v4, Le/a/k/n/g/d$b;

    invoke-direct {v4, p0, v0}, Le/a/k/n/g/d$b;-><init>(Le/a/k/n/g/d;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Le/a/k/n/g/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/n/g/a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/n/g/d;->a:Ln3/c0/q;

    new-instance v1, Le/a/k/n/g/d$g;

    invoke-direct {v1, p0, p1}, Le/a/k/n/g/d$g;-><init>(Le/a/k/n/g/d;Le/a/k/n/g/a;)V

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/k/n/g/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM outgoing_video"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/k/n/g/d;->a:Ln3/c0/q;

    new-instance v4, Le/a/k/n/g/d$j;

    invoke-direct {v4, p0, v0}, Le/a/k/n/g/d$j;-><init>(Le/a/k/n/g/d;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
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
    iget-object v0, p0, Le/a/k/n/g/d;->a:Ln3/c0/q;

    new-instance v1, Le/a/k/n/g/d$h;

    invoke-direct {v1, p0}, Le/a/k/n/g/d$h;-><init>(Le/a/k/n/g/d;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Le/a/k/n/g/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/n/g/a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/n/g/d;->a:Ln3/c0/q;

    new-instance v1, Le/a/k/n/g/d$f;

    invoke-direct {v1, p0, p1}, Le/a/k/n/g/d$f;-><init>(Le/a/k/n/g/d;Le/a/k/n/g/a;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/k/n/g/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM outgoing_video"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/k/n/g/d;->a:Ln3/c0/q;

    new-instance v4, Le/a/k/n/g/d$a;

    invoke-direct {v4, p0, v0}, Le/a/k/n/g/d$a;-><init>(Le/a/k/n/g/d;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/k/n/g/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM outgoing_video WHERE video_url = ? "

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
    iget-object v1, p0, Le/a/k/n/g/d;->a:Ln3/c0/q;

    const/4 v2, 0x0

    new-instance v3, Le/a/k/n/g/d$i;

    invoke-direct {v3, p0, v0}, Le/a/k/n/g/d$i;-><init>(Le/a/k/n/g/d;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
