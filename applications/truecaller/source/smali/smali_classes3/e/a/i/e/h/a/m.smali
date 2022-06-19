.class public final Le/a/i/e/h/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/e/h/a/l;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/i/e/h/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/i/e/h/a/m;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/i/e/h/a/m$a;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/m$a;-><init>(Le/a/i/e/h/a/m;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/e/h/a/m;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/i/e/h/a/m$b;

    invoke-direct {v0, p0, p1}, Le/a/i/e/h/a/m$b;-><init>(Le/a/i/e/h/a/m;Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public C(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/h/a/m;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/m$d;

    invoke-direct {v1, p0, p1}, Le/a/i/e/h/a/m$d;-><init>(Le/a/i/e/h/a/m;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/i/e/h/b/d;

    .line 2
    iget-object v0, p0, Le/a/i/e/h/a/m;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/e/h/a/n;

    invoke-direct {v1, p0, p1}, Le/a/i/e/h/a/n;-><init>(Le/a/i/e/h/a/m;Le/a/i/e/h/b/d;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public v(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/i/e/h/b/d;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Select * from offline_tracker"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/i/e/h/a/m;->a:Ln3/c0/q;

    new-instance v4, Le/a/i/e/h/a/m$c;

    invoke-direct {v4, p0, v0}, Le/a/i/e/h/a/m$c;-><init>(Le/a/i/e/h/a/m;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
