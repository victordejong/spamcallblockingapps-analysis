.class public final Le/a/o/p/e/b;
.super Le/a/o/p/e/a;
.source "SourceFile"


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/j<",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln3/c0/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/j<",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/o/p/e/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o/p/e/b;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/o/p/e/b$a;

    invoke-direct {v0, p0, p1}, Le/a/o/p/e/b$a;-><init>(Le/a/o/p/e/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/o/p/e/b;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/o/p/e/b$b;

    invoke-direct {v0, p0, p1}, Le/a/o/p/e/b$b;-><init>(Le/a/o/p/e/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/o/p/e/b;->c:Ln3/c0/j;

    .line 5
    new-instance v0, Le/a/o/p/e/b$c;

    invoke-direct {v0, p0, p1}, Le/a/o/p/e/b$c;-><init>(Le/a/o/p/e/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/o/p/e/b;->d:Ln3/c0/j;

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
            "Ljava/util/List<",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM call_reason"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/o/p/e/b;->a:Ln3/c0/q;

    new-instance v4, Le/a/o/p/e/b$h;

    invoke-direct {v4, p0, v0}, Le/a/o/p/e/b$h;-><init>(Le/a/o/p/e/b;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
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

    const-string v0, "SELECT COUNT(*) FROM call_reason"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/o/p/e/b;->a:Ln3/c0/q;

    new-instance v4, Le/a/o/p/e/b$g;

    invoke-direct {v4, p0, v0}, Le/a/o/p/e/b$g;-><init>(Le/a/o/p/e/b;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/o/p/e/b$d;

    invoke-direct {v1, p0, p1}, Le/a/o/p/e/b$d;-><init>(Le/a/o/p/e/b;Lcom/truecaller/contextcall/db/reason/CallReason;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/o/p/e/b$e;

    invoke-direct {v1, p0, p1}, Le/a/o/p/e/b$e;-><init>(Le/a/o/p/e/b;Lcom/truecaller/contextcall/db/reason/CallReason;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/o/p/e/b$f;

    invoke-direct {v1, p0, p1}, Le/a/o/p/e/b$f;-><init>(Le/a/o/p/e/b;Lcom/truecaller/contextcall/db/reason/CallReason;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
