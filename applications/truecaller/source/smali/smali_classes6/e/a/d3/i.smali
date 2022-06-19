.class public final Le/a/d3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d3/h;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/d3/b;

.field public final c:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/d3/b;Le/a/p5/c;)V
    .locals 1
    .param p1    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCardIOUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d3/i;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/d3/i;->b:Le/a/d3/b;

    iput-object p3, p0, Le/a/d3/i;->c:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;
    .locals 7

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    .line 2
    sget-object v1, Lq3/a/t0;->d:Lq3/a/g0;

    .line 3
    new-instance v3, Le/a/d3/i$a;

    const/4 v6, 0x0

    invoke-direct {v3, p0, v6}, Le/a/d3/i$a;-><init>(Le/a/d3/i;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 4
    iget-object v0, p0, Le/a/d3/i;->a:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->f0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/d3/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/d3/i;->b:Le/a/d3/b;

    invoke-interface {v0}, Le/a/d3/b;->a()Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;

    move-result-object v6

    :cond_1
    return-object v6
.end method

.method public b()V
    .locals 6

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 3
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 4
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v2

    check-cast v2, Ln3/m0/r$a;

    .line 6
    new-instance v3, Ln3/m0/d$a;

    invoke-direct {v3}, Ln3/m0/d$a;-><init>()V

    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    .line 7
    iput-object v4, v3, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 8
    new-instance v4, Ln3/m0/d;

    invoke-direct {v4, v3}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 9
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v4, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 10
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    check-cast v2, Ln3/m0/r;

    const-string v3, "BusinessCardBackgroundWorker"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
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
    iget-object p1, p0, Le/a/d3/i;->a:Le/a/u3/g;

    invoke-virtual {p1}, Le/a/u3/g;->f0()Le/a/u3/b;

    move-result-object p1

    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Le/a/d3/i;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Le/a/d3/i;->b()V

    .line 3
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final d()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/d3/i;->b:Le/a/d3/b;

    invoke-interface {v0}, Le/a/d3/b;->a()Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Le/a/d3/i;->c:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;->getMetadata()Lcom/truecaller/api/services/callerid/v1/model/SignatureMetadata;

    move-result-object v0

    const-string v3, "it.metadata"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/SignatureMetadata;->getExpireDate()I

    move-result v0

    if-le v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
