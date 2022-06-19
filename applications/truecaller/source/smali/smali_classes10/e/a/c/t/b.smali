.class public final Le/a/c/t/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/t/a;


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Lq3/a/i0;

.field public final c:Le/a/c/c/d/g;

.field public final d:Le/a/c/c/d/d0;

.field public final e:Le/a/c/c/d/j0;

.field public final f:Le/a/c/c0/o;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/q/f/a/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/c/a0/z;

.field public final i:Le/a/c/w/k;

.field public final j:Le/a/c/g/y/a;

.field public final k:Ls1/w/f;

.field public final l:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/c/d/g;Le/a/c/c/d/d0;Le/a/c/c/d/j0;Le/a/c/c0/o;Lo3/a;Le/a/c/a0/z;Le/a/c/w/k;Le/a/c/g/y/a;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p9    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p10    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/c/d/g;",
            "Le/a/c/c/d/d0;",
            "Le/a/c/c/d/j0;",
            "Le/a/c/c0/o;",
            "Lo3/a<",
            "Le/q/f/a/f/e;",
            ">;",
            "Le/a/c/a0/z;",
            "Le/a/c/w/k;",
            "Le/a/c/g/y/a;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "actionStateDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pdoDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smsBackupDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "malanaSeed"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderInfoDataSource"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "brandDetectionRepository"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiClassMetadataDataSource"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/t/b;->c:Le/a/c/c/d/g;

    iput-object p2, p0, Le/a/c/t/b;->d:Le/a/c/c/d/d0;

    iput-object p3, p0, Le/a/c/t/b;->e:Le/a/c/c/d/j0;

    iput-object p4, p0, Le/a/c/t/b;->f:Le/a/c/c0/o;

    iput-object p5, p0, Le/a/c/t/b;->g:Lo3/a;

    iput-object p6, p0, Le/a/c/t/b;->h:Le/a/c/a0/z;

    iput-object p7, p0, Le/a/c/t/b;->i:Le/a/c/w/k;

    iput-object p8, p0, Le/a/c/t/b;->j:Le/a/c/g/y/a;

    iput-object p9, p0, Le/a/c/t/b;->k:Ls1/w/f;

    iput-object p10, p0, Le/a/c/t/b;->l:Ls1/w/f;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/c/t/b;->a:Lq3/a/y;

    .line 3
    invoke-interface {p9, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/t/b;->b:Lq3/a/i0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Le/a/c/r/i/a;",
            ">;>;"
        }
    .end annotation

    const-string v0, "search"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/t/b;->h:Le/a/c/a0/z;

    check-cast v1, Le/a/c/a0/a0;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/c/a0/a0;->a:Le/a/c/c/d/f0;

    invoke-interface {v0, p1}, Le/a/c/c/d/f0;->a(Ljava/lang/String;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;)V
    .locals 7

    const-string v0, "appContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/t/b;->b:Lq3/a/i0;

    new-instance v4, Le/a/c/t/b$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/c/t/b$b;-><init>(Le/a/c/t/b;Landroid/content/Context;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/t/b;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "malanaSeed.get()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le/q/f/a/f/e;

    invoke-interface {v0}, Le/q/f/a/f/e;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/t/b;->e:Le/a/c/c/d/j0;

    invoke-interface {v0, p1, p2, p3}, Le/a/c/c/d/j0;->k(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/c/t/b;->b:Lq3/a/i0;

    new-instance v3, Le/a/c/t/b$a;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Le/a/c/t/b$a;-><init>(Le/a/c/t/b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/t/b;->f:Le/a/c/c0/o;

    invoke-interface {v0}, Le/a/c/c0/o;->w0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/t/b;->k:Ls1/w/f;

    new-instance v1, Le/a/c/t/b$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/c/t/b$d;-><init>(Le/a/c/t/b;JLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/t/b;->f:Le/a/c/c0/o;

    invoke-interface {v0, p1}, Le/a/c/c0/o;->H(Ljava/lang/String;)V

    return-void
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/c/t/b$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/c/t/b$e;

    iget v1, v0, Le/a/c/t/b$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/c/t/b$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/c/t/b$e;

    invoke-direct {v0, p0, p1}, Le/a/c/t/b$e;-><init>(Le/a/c/t/b;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/c/t/b$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/t/b$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/t/b;->j:Le/a/c/g/y/a;

    iput v3, v0, Le/a/c/t/b$e;->e:I

    .line 5
    iget-object p1, p1, Le/a/c/g/y/a;->a:Le/a/c/g/y/q;

    check-cast p1, Le/a/c/g/y/r;

    invoke-virtual {p1, v0}, Le/a/c/g/y/r;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/util/List;Ls1/z/b/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/c/w/j;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cb"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/t/b;->b:Lq3/a/i0;

    new-instance v4, Le/a/c/t/b$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/c/t/b$c;-><init>(Le/a/c/t/b;Ljava/util/List;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
