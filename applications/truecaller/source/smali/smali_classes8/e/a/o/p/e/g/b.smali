.class public final Le/a/o/p/e/g/b;
.super Le/a/o/p/e/g/a;
.source "SourceFile"


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/o/p/e/g/a;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o/p/e/g/b;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/o/p/e/g/b$a;

    invoke-direct {v0, p0, p1}, Le/a/o/p/e/g/b$a;-><init>(Le/a/o/p/e/g/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/o/p/e/g/b;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/o/p/e/g/b$b;

    invoke-direct {v0, p0, p1}, Le/a/o/p/e/g/b$b;-><init>(Le/a/o/p/e/g/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/o/p/e/g/b;->c:Ln3/c0/c0;

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
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/g/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/o/p/e/g/b$e;

    invoke-direct {v1, p0}, Le/a/o/p/e/g/b$e;-><init>(Le/a/o/p/e/g/b;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM predefined_call_reason ORDER BY `index` ASC"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/o/p/e/g/b;->a:Ln3/c0/q;

    new-instance v4, Le/a/o/p/e/g/b$f;

    invoke-direct {v4, p0, v0}, Le/a/o/p/e/g/b$f;-><init>(Le/a/o/p/e/g/b;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/g/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/o/p/e/g/b$c;

    invoke-direct {v1, p0, p1}, Le/a/o/p/e/g/b$c;-><init>(Le/a/o/p/e/g/b;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/contextcall/db/reason/predefinedreasons/PredefinedCallReasonEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/g/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/o/p/e/g/b$d;

    invoke-direct {v1, p0, p1}, Le/a/o/p/e/g/b$d;-><init>(Le/a/o/p/e/g/b;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
