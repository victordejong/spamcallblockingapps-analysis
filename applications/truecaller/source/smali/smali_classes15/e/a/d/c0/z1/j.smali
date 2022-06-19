.class public final Le/a/d/c0/z1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/d/c0/y0;

.field public final c:Le/a/d/x/r/n;

.field public final d:Le/a/d/x/r/o;

.field public final e:Le/a/d/c0/e;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/p/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/t/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/p5/c;

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/y1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d/c0/f0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/d/c0/y0;Le/a/d/x/r/n;Le/a/d/x/r/o;Le/a/d/c0/e;Lo3/a;Lo3/a;Le/a/p5/c;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/d/c0/y0;",
            "Le/a/d/x/r/n;",
            "Le/a/d/x/r/o;",
            "Le/a/d/c0/e;",
            "Lo3/a<",
            "Le/a/d/p/a;",
            ">;",
            "Lo3/a<",
            "Le/a/d/t/a;",
            ">;",
            "Le/a/p5/c;",
            "Lo3/a<",
            "Le/a/d/c0/y1/b;",
            ">;",
            "Lo3/a<",
            "Le/a/d/c0/f0;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmLoginManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callUserResolver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restApi"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipDao"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipAvailabilityUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/z1/j;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c0/z1/j;->b:Le/a/d/c0/y0;

    iput-object p3, p0, Le/a/d/c0/z1/j;->c:Le/a/d/x/r/n;

    iput-object p4, p0, Le/a/d/c0/z1/j;->d:Le/a/d/x/r/o;

    iput-object p5, p0, Le/a/d/c0/z1/j;->e:Le/a/d/c0/e;

    iput-object p6, p0, Le/a/d/c0/z1/j;->f:Lo3/a;

    iput-object p7, p0, Le/a/d/c0/z1/j;->g:Lo3/a;

    iput-object p8, p0, Le/a/d/c0/z1/j;->h:Le/a/p5/c;

    iput-object p9, p0, Le/a/d/c0/z1/j;->i:Lo3/a;

    iput-object p10, p0, Le/a/d/c0/z1/j;->j:Lo3/a;

    return-void
.end method


# virtual methods
.method public a()Le/a/d/c0/z1/i;
    .locals 12

    .line 1
    new-instance v11, Le/a/d/c0/z1/k;

    .line 2
    iget-object v1, p0, Le/a/d/c0/z1/j;->a:Ls1/w/f;

    .line 3
    iget-object v2, p0, Le/a/d/c0/z1/j;->b:Le/a/d/c0/y0;

    .line 4
    iget-object v3, p0, Le/a/d/c0/z1/j;->c:Le/a/d/x/r/n;

    .line 5
    iget-object v4, p0, Le/a/d/c0/z1/j;->d:Le/a/d/x/r/o;

    .line 6
    iget-object v5, p0, Le/a/d/c0/z1/j;->e:Le/a/d/c0/e;

    .line 7
    iget-object v0, p0, Le/a/d/c0/z1/j;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v6, "restApi.get()"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    check-cast v6, Le/a/d/p/a;

    .line 8
    iget-object v0, p0, Le/a/d/c0/z1/j;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v7, "voipDao.get()"

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v0

    check-cast v7, Le/a/d/t/a;

    .line 9
    iget-object v8, p0, Le/a/d/c0/z1/j;->h:Le/a/p5/c;

    .line 10
    iget-object v0, p0, Le/a/d/c0/z1/j;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v9, "voipAvailabilityUtil.get()"

    invoke-static {v0, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Le/a/d/c0/y1/b;

    .line 11
    iget-object v0, p0, Le/a/d/c0/z1/j;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v10, "analyticsUtil.get()"

    invoke-static {v0, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v0

    check-cast v10, Le/a/d/c0/f0;

    move-object v0, v11

    .line 12
    invoke-direct/range {v0 .. v10}, Le/a/d/c0/z1/k;-><init>(Ls1/w/f;Le/a/d/c0/y0;Le/a/d/x/r/n;Le/a/d/x/r/o;Le/a/d/c0/e;Le/a/d/p/a;Le/a/d/t/a;Le/a/p5/c;Le/a/d/c0/y1/b;Le/a/d/c0/f0;)V

    return-object v11
.end method
