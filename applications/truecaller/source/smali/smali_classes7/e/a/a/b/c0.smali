.class public final Le/a/a/b/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/b/b0;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/o5/f0;

.field public final c:Le/a/a/i0;

.field public final d:Le/a/p5/a0;

.field public final e:Le/a/p5/c;

.field public final f:Le/a/u3/g;

.field public final g:Le/a/a/k/a/i1;

.field public final h:Le/a/e/a/r3;

.field public final i:Le/a/a/b/d;

.field public final j:Z


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/o5/f0;Le/a/a/i0;Le/a/p5/a0;Le/a/p5/c;Le/a/u3/g;Le/a/a/k/a/i1;Le/a/e/a/r3;Le/a/a/b/d;Z)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imVersionManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaInboxPromoHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callPromoHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/b/c0;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/a/b/c0;->b:Le/a/o5/f0;

    iput-object p3, p0, Le/a/a/b/c0;->c:Le/a/a/i0;

    iput-object p4, p0, Le/a/a/b/c0;->d:Le/a/p5/a0;

    iput-object p5, p0, Le/a/a/b/c0;->e:Le/a/p5/c;

    iput-object p6, p0, Le/a/a/b/c0;->f:Le/a/u3/g;

    iput-object p7, p0, Le/a/a/b/c0;->g:Le/a/a/k/a/i1;

    iput-object p8, p0, Le/a/a/b/c0;->h:Le/a/e/a/r3;

    iput-object p9, p0, Le/a/a/b/c0;->i:Le/a/a/b/d;

    iput-boolean p10, p0, Le/a/a/b/c0;->j:Z

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
            "Le/a/a/m/d1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/b/c0;->a:Ls1/w/f;

    new-instance v1, Le/a/a/b/c0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/a/b/c0$a;-><init>(Le/a/a/b/c0;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Le/a/a/m/d1;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/b/c0;->d:Le/a/p5/a0;

    const-string v1, "android.permission.READ_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/a/b/c0;->c:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->A1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/a/a/m/d1$u;->b:Le/a/a/m/d1$u;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final c()Le/a/a/m/d1;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/b/c0;->c:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->m2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/b/c0;->g:Le/a/a/k/a/i1;

    invoke-interface {v0}, Le/a/a/k/a/i1;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/b/c0;->c:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->e2()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Le/a/a/b/c0;->c:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->w2()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    iget-object v0, p0, Le/a/a/b/c0;->e:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_0

    .line 3
    sget-object v0, Le/a/a/m/d1$x;->b:Le/a/a/m/d1$x;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
