.class public final Le/a/k/c/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/u0;


# instance fields
.field public final a:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Le/a/k/c/t0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/v0;->b:Landroid/content/Context;

    const/4 p1, -0x1

    .line 2
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p1

    iput-object p1, p0, Le/a/k/c/v0;->a:Lq3/a/w2/h;

    return-void
.end method


# virtual methods
.method public a(Le/a/k/c/p;)V
    .locals 14

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/k/c/v0;->b:Landroid/content/Context;

    const-string v2, "context"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 4
    instance-of v1, p1, Le/a/k/c/p$a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    check-cast v3, Le/a/k/c/p$a;

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, v3, Le/a/k/c/p$a;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Le/a/k/c/p;->b()Ljava/lang/String;

    move-result-object v3

    .line 7
    :goto_1
    sget-object v4, Ln3/m0/h;->a:Ln3/m0/h;

    .line 8
    const-class v5, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    invoke-virtual {p1}, Le/a/k/c/p;->b()Ljava/lang/String;

    move-result-object v6

    .line 9
    instance-of v7, p1, Le/a/k/c/p$b;

    if-eqz v7, :cond_2

    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1}, Le/a/k/c/p;->b()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x64

    move-wide v9, v8

    move-object v8, v7

    move-object v7, v2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 11
    move-object v2, p1

    check-cast v2, Le/a/k/c/p$a;

    .line 12
    iget-object v7, v2, Le/a/k/c/p$a;->c:Ljava/lang/String;

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    move-object v7, v6

    .line 13
    :goto_2
    iget-wide v8, v2, Le/a/k/c/p$a;->f:J

    .line 14
    iget-object v10, v2, Le/a/k/c/p$a;->d:Ljava/lang/String;

    .line 15
    iget-object v2, v2, Le/a/k/c/p$a;->e:Ljava/lang/String;

    move-object v13, v7

    move-object v7, v2

    move-object v2, v10

    move-wide v9, v8

    move-object v8, v13

    :goto_3
    const-string v11, "url_data"

    const-string v12, "id_data"

    .line 16
    invoke-static {v11, v6, v12, v8}, Le/d/c/a/a;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 17
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "podp_data"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "context_data"

    .line 18
    invoke-virtual {v6, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_business"

    invoke-virtual {v6, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "business_number"

    .line 20
    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Ln3/m0/f;

    invoke-direct {v1, v6}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 22
    invoke-static {v1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v2, "Data.Builder().apply {\n \u2026er)\n            }.build()"

    .line 23
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v2, Ln3/m0/d$a;

    invoke-direct {v2}, Ln3/m0/d$a;-><init>()V

    .line 25
    invoke-virtual {p1}, Le/a/k/c/p;->a()Ln3/m0/q;

    move-result-object p1

    .line 26
    iput-object p1, v2, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 27
    new-instance p1, Ln3/m0/d;

    invoke-direct {p1, v2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    const-string v2, "Constraints.Builder()\n  \u2026\n                .build()"

    .line 28
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v2, Ln3/m0/r$a;

    invoke-direct {v2, v5}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 30
    iget-object v6, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, v6, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 31
    iput-object v1, v6, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 32
    sget-object p1, Ln3/m0/a;->a:Ln3/m0/a;

    const-wide/16 v6, 0x1e

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, v6, v7, v1}, Ln3/m0/z$a;->e(Ln3/m0/a;JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object p1

    check-cast p1, Ln3/m0/r$a;

    .line 33
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p1, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    const-string v1, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln3/m0/r;

    .line 36
    invoke-virtual {v0, v3, v4, p1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void

    .line 37
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public j()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Le/a/k/c/t0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/c/v0;->a:Lq3/a/w2/h;

    return-object v0
.end method
