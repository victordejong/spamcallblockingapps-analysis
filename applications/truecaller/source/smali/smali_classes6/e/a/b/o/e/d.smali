.class public final Le/a/b/o/e/d;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/o/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b/o/e/b;",
        ">;",
        "Le/a/b/o/e/a;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:J

.field public f:I

.field public g:I

.field public final h:Le/a/b/o/b/a;

.field public final i:Le/a/b/o/c/a/e;

.field public final j:Le/a/b/o/c/a/c;

.field public final k:Le/a/p5/c0;

.field public final l:Ls1/w/f;

.field public final m:Ls1/w/f;

.field public final n:Le/a/q2/a;

.field public final o:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/b/o/b/a;Le/a/b/o/c/a/e;Le/a/b/o/c/a/c;Le/a/p5/c0;Ls1/w/f;Ls1/w/f;Le/a/q2/a;Le/a/u3/g;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "manager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "districtDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncIOContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p5}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/o/e/d;->h:Le/a/b/o/b/a;

    iput-object p2, p0, Le/a/b/o/e/d;->i:Le/a/b/o/c/a/e;

    iput-object p3, p0, Le/a/b/o/e/d;->j:Le/a/b/o/c/a/c;

    iput-object p4, p0, Le/a/b/o/e/d;->k:Le/a/p5/c0;

    iput-object p5, p0, Le/a/b/o/e/d;->l:Ls1/w/f;

    iput-object p6, p0, Le/a/b/o/e/d;->m:Ls1/w/f;

    iput-object p7, p0, Le/a/b/o/e/d;->n:Le/a/q2/a;

    iput-object p8, p0, Le/a/b/o/e/d;->o:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public final synthetic Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p1, Le/a/b/o/e/d$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/b/o/e/d$b;

    iget v1, v0, Le/a/b/o/e/d$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/b/o/e/d$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/b/o/e/d$b;

    invoke-direct {v0, p0, p1}, Le/a/b/o/e/d$b;-><init>(Le/a/b/o/e/d;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/b/o/e/d$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b/o/e/d$b;->e:I

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
    iget-object p1, p0, Le/a/b/o/e/d;->d:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 5
    iget-object v2, p0, Le/a/b/o/e/d;->i:Le/a/b/o/c/a/e;

    invoke-interface {v2, p1}, Le/a/b/o/c/a/e;->b(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Le/a/b/o/e/d;->e:J

    .line 6
    iget-object v2, p0, Le/a/b/o/e/d;->j:Le/a/b/o/c/a/c;

    invoke-interface {v2, v4, v5}, Le/a/b/o/c/a/c;->e(J)Lq3/a/x2/f;

    move-result-object v2

    .line 7
    new-instance v4, Le/a/b/o/e/d$a;

    invoke-direct {v4, p1, p0, v0}, Le/a/b/o/e/d$a;-><init>(Ljava/lang/String;Le/a/b/o/e/d;Ls1/w/d;)V

    iput v3, v0, Le/a/b/o/e/d$b;->e:I

    invoke-interface {v2, v4, v0}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 8
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Le/a/b/o/e/b;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/b/o/e/b;->g4()V

    .line 5
    invoke-interface {p1}, Le/a/b/o/e/b;->ss()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/b/o/e/d;->d:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Le/a/b/o/e/d;->d:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 8
    new-instance v0, Le/a/q2/g$b;

    const-string v2, "GOVT_SERVICE_DISTRICT_LIST"

    invoke-direct {v0, v2}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v2, "State"

    .line 9
    invoke-virtual {v0, v2, p1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_3

    .line 10
    iget-object p1, p0, Le/a/b/o/e/d;->n:Le/a/q2/a;

    invoke-virtual {v0}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v0

    const-string v2, "it.build()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 11
    :cond_3
    new-instance v6, Le/a/b/o/e/c;

    invoke-direct {v6, p0, v1}, Le/a/b/o/e/c;-><init>(Le/a/b/o/e/d;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_4
    return-void
.end method
