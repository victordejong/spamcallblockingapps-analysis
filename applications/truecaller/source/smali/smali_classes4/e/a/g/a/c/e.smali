.class public final Le/a/g/a/c/e;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/g/a/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/g/a/c/d;",
        ">;",
        "Le/a/g/a/c/c;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:Ljava/lang/String;

.field public final j:Le/a/g/j/y;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/g/j/y;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replyHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/g/a/c/e;->j:Le/a/g/j/y;

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Le/a/g/a/c/e;->g:J

    .line 3
    iput-wide p1, p0, Le/a/g/a/c/e;->h:J

    return-void
.end method


# virtual methods
.method public final Ij()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/c/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/truecaller/acs/analytics/AnalyticsContext;->FACS:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-virtual {v1}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "analyticsContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Jj(Ljava/lang/String;I)V
    .locals 7

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/g/a/c/e$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/g/a/c/e$a;-><init>(Le/a/g/a/c/e;Ljava/lang/String;ILs1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final Kj(JJLjava/lang/Boolean;Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-wide p1, p0, Le/a/g/a/c/e;->h:J

    .line 2
    iput-wide p3, p0, Le/a/g/a/c/e;->g:J

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p6

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Le/a/g/a/c/e;->i:Ljava/lang/String;

    .line 4
    invoke-static {p5, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/c/d;

    if-eqz p1, :cond_5

    iget-object p2, p0, Le/a/g/a/c/e;->d:Ljava/lang/String;

    if-eqz p2, :cond_2

    iget-object p3, p0, Le/a/g/a/c/e;->i:Ljava/lang/String;

    iget-object p4, p0, Le/a/g/a/c/e;->f:Ljava/lang/String;

    if-eqz p4, :cond_1

    invoke-interface {p1, p2, p3, p4}, Le/a/g/a/c/d;->sr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p1, "analyticsContext"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "phoneNumber"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-wide/16 v0, -0x1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_4

    cmp-long p1, p3, v0

    if-eqz p1, :cond_4

    .line 6
    sget p1, Lcom/truecaller/acs/R$string;->acs_reply_sent:I

    goto :goto_1

    :cond_4
    sget p1, Lcom/truecaller/acs/R$string;->acs_reply_failed:I

    .line 7
    :goto_1
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/g/a/c/d;

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Le/a/g/a/c/e;->Ij()Z

    move-result p3

    invoke-interface {p2, p1, p6, p3}, Le/a/g/a/c/d;->xq(ILjava/lang/String;Z)V

    :cond_5
    :goto_2
    return-void
.end method
