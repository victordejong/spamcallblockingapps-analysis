.class public final Le/a/k/c/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/m0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/k/c/m0;->a:Landroid/content/Context;

    .line 2
    const-class v1, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;

    const-string v2, "context"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 5
    sget-object v3, Ln3/m0/h;->a:Ln3/m0/h;

    .line 6
    new-instance v4, Ln3/m0/d$a;

    invoke-direct {v4}, Ln3/m0/d$a;-><init>()V

    .line 7
    sget-object v5, Ln3/m0/q;->b:Ln3/m0/q;

    .line 8
    iput-object v5, v4, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 9
    new-instance v5, Ln3/m0/d;

    invoke-direct {v5, v4}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    const-string v4, "Constraints.Builder()\n  \u2026\n                .build()"

    .line 10
    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v4, Ln3/m0/r$a;

    invoke-direct {v4, v1}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 12
    iget-object v6, v4, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v5, v6, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 13
    sget-object v5, Ln3/m0/a;->a:Ln3/m0/a;

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7, v8}, Ln3/m0/z$a;->e(Ln3/m0/a;JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v4

    check-cast v4, Ln3/m0/r$a;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 15
    iget-object v5, v4, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v4}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    const-string v4, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ln3/m0/r;

    .line 17
    invoke-virtual {v0, v2, v3, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method
