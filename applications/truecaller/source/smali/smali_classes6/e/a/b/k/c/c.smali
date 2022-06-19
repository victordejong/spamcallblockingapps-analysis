.class public final Le/a/b/k/c/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b/k/c/a;",
        ">;",
        "Le/a/b/k/c/c;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/b/k/b/b/a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/b/k/a/a;

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Le/a/b/k/b/a/a;

.field public final k:Le/a/q2/a;

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/b0/q/d0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/b/k/a/a;Ls1/w/f;Ls1/w/f;Le/a/b/k/b/a/a;Le/a/q2/a;Le/a/r2/f;Le/a/b0/q/d0;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/p5/c0;",
            "Le/a/b/k/a/a;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/b/k/b/a/a;",
            "Le/a/q2/a;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/b0/q/d0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "covidDirectoryConfigManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncIoContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactDao"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileDetailsHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p4}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/k/c/c;->f:Le/a/p5/c0;

    iput-object p2, p0, Le/a/b/k/c/c;->g:Le/a/b/k/a/a;

    iput-object p3, p0, Le/a/b/k/c/c;->h:Ls1/w/f;

    iput-object p4, p0, Le/a/b/k/c/c;->i:Ls1/w/f;

    iput-object p5, p0, Le/a/b/k/c/c;->j:Le/a/b/k/b/a/a;

    iput-object p6, p0, Le/a/b/k/c/c;->k:Le/a/q2/a;

    iput-object p7, p0, Le/a/b/k/c/c;->l:Le/a/r2/f;

    iput-object p8, p0, Le/a/b/k/c/c;->m:Le/a/b0/q/d0;

    .line 2
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    iput-object p2, p0, Le/a/b/k/c/c;->d:Ljava/util/List;

    .line 3
    sget p2, Lcom/truecaller/bizmon/R$string;->biz_govt_general_services:I

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    check-cast p1, Le/a/p5/i0;

    invoke-virtual {p1, p2, p3}, Le/a/p5/i0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getStri\u2026iz_govt_general_services)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/b/k/c/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 12

    .line 1
    move-object v5, p1

    check-cast v5, Le/a/b/k/c/a;

    const-string p1, "presenterView"

    .line 2
    invoke-static {v5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object v5, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {v5}, Le/a/b/k/c/a;->P1()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 5
    iput-object p1, p0, Le/a/b/k/c/c;->e:Ljava/lang/String;

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/b/k/c/c;->e:Ljava/lang/String;

    invoke-interface {v5, p1}, Le/a/b/k/c/a;->o(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Le/a/b/k/c/c;->g:Le/a/b/k/a/a;

    check-cast p1, Le/a/b/k/a/d;

    invoke-virtual {p1}, Le/a/b/k/a/d;->b()Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :cond_4
    :goto_2
    if-nez v0, :cond_7

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;->getHyperlinkText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;->getHyperlinkText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, v0, p1}, Le/a/b/k/c/a;->Pf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 11
    :cond_5
    invoke-virtual {p1}, Lcom/truecaller/bizmon/covidDirectory/config/CovidDirectoryDisclaimerData;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {v5, p1}, Le/a/b/k/c/a;->G8(Ljava/lang/String;)V

    .line 12
    :cond_6
    :goto_3
    invoke-interface {v5}, Le/a/b/k/c/a;->Hk()V

    .line 13
    :cond_7
    new-instance v2, Ls1/z/c/b0;

    invoke-direct {v2}, Ls1/z/c/b0;-><init>()V

    invoke-interface {v5}, Le/a/b/k/c/a;->N3()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_4

    :cond_8
    const-wide/16 v0, 0x0

    :goto_4
    iput-wide v0, v2, Ls1/z/c/b0;->a:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 14
    new-instance v9, Le/a/b/k/c/b;

    const/4 v3, 0x0

    move-object v0, v9

    move-object v1, v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Le/a/b/k/c/b;-><init>(Le/a/b/k/c/a;Ls1/z/c/b0;Ls1/w/d;Le/a/b/k/c/c;Le/a/b/k/c/a;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
