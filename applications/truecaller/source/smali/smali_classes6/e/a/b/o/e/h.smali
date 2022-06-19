.class public final Le/a/b/o/e/h;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b/o/e/f;",
        ">;",
        "Le/a/b/o/e/h;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b/o/c/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public final g:Le/a/p5/c0;

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Le/a/b/o/c/a/a;

.field public final k:Le/a/q2/a;

.field public final l:Le/a/b/o/c/a/e;

.field public final m:Le/a/b0/q/d0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Ls1/w/f;Ls1/w/f;Le/a/b/o/c/a/a;Le/a/q2/a;Le/a/b/o/c/a/e;Le/a/b0/q/d0;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncIoContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactDao"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateDao"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileDetailsHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/o/e/h;->g:Le/a/p5/c0;

    iput-object p2, p0, Le/a/b/o/e/h;->h:Ls1/w/f;

    iput-object p3, p0, Le/a/b/o/e/h;->i:Ls1/w/f;

    iput-object p4, p0, Le/a/b/o/e/h;->j:Le/a/b/o/c/a/a;

    iput-object p5, p0, Le/a/b/o/e/h;->k:Le/a/q2/a;

    iput-object p6, p0, Le/a/b/o/e/h;->l:Le/a/b/o/c/a/e;

    iput-object p7, p0, Le/a/b/o/e/h;->m:Le/a/b0/q/d0;

    .line 2
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    iput-object p2, p0, Le/a/b/o/e/h;->d:Ljava/util/List;

    .line 3
    sget p2, Lcom/truecaller/bizmon/R$string;->biz_govt_general_services:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    check-cast p1, Le/a/p5/i0;

    invoke-virtual {p1, p2, p3}, Le/a/p5/i0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getStri\u2026iz_govt_general_services)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/b/o/e/h;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    move-object v1, p1

    check-cast v1, Le/a/b/o/e/f;

    const-string p1, "presenterView"

    .line 2
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {v1}, Le/a/b/o/e/f;->P1()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 5
    iput-object p1, p0, Le/a/b/o/e/h;->e:Ljava/lang/String;

    .line 6
    :cond_2
    new-instance v3, Ls1/z/c/c0;

    invoke-direct {v3}, Ls1/z/c/c0;-><init>()V

    invoke-interface {v1}, Le/a/b/o/e/f;->Oo()Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    new-instance v2, Ls1/z/c/b0;

    invoke-direct {v2}, Ls1/z/c/b0;-><init>()V

    invoke-interface {v1}, Le/a/b/o/e/f;->N3()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x0

    :goto_2
    iput-wide v4, v2, Ls1/z/c/b0;->a:J

    .line 8
    iget-object p1, v3, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    const/4 v6, 0x0

    .line 9
    new-instance v7, Le/a/b/o/e/g;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Le/a/b/o/e/g;-><init>(Le/a/b/o/e/f;Ls1/z/c/b0;Ls1/z/c/c0;Ls1/w/d;Le/a/b/o/e/h;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_4
    return-void
.end method
