.class public final Le/a/b/i/k/b;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/b/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b/i/f;",
        ">;",
        "Le/a/b/i/e;"
    }
.end annotation


# instance fields
.field public d:Lcom/truecaller/data/entity/Contact;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/lang/String;

.field public final i:Ls1/w/f;

.field public final j:Le/a/p5/c0;

.field public final k:Le/a/b/i/c;

.field public final l:Le/a/b/i/h/b;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/c0;Le/a/b/i/c;Le/a/b/i/h/b;)V
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

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizMonCallMeBackManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bizCallMeBackAnalyticHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/b/i/k/b;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/b/i/k/b;->j:Le/a/p5/c0;

    iput-object p3, p0, Le/a/b/i/k/b;->k:Le/a/b/i/c;

    iput-object p4, p0, Le/a/b/i/k/b;->l:Le/a/b/i/h/b;

    return-void
.end method

.method public static synthetic Jj(Le/a/b/i/k/b;Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;I)V
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/b/i/k/b;->Ij(Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/a/b/i/k/b;->g:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;->PACS:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;->FACS:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;

    :goto_0
    move-object v2, v0

    .line 2
    iget-object v1, p0, Le/a/b/i/k/b;->l:Le/a/b/i/h/b;

    .line 3
    iget-object v4, p0, Le/a/b/i/k/b;->f:Ljava/lang/String;

    iget-object v0, p0, Le/a/b/i/k/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/a/n/g0;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move-object v6, p2

    .line 4
    invoke-virtual/range {v1 .. v6}, Le/a/b/i/h/b;->a(Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackContext;Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "normalizedNumber"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public Kj(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalizedNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/b/i/k/b;->d:Lcom/truecaller/data/entity/Contact;

    .line 2
    iput-object p2, p0, Le/a/b/i/k/b;->e:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/b/i/k/b;->f:Ljava/lang/String;

    .line 4
    iput-boolean p4, p0, Le/a/b/i/k/b;->g:Z

    .line 5
    sget-object p1, Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;->SHOW_CALL_ME_BACK:Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, p2}, Le/a/b/i/k/b;->Ij(Lcom/truecaller/bizmon/callMeBack/analytics/BizCallMeBackAction;Ljava/lang/String;)V

    return-void
.end method

.method public final Lj()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b/i/f;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/b/i/k/b;->d:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0, v1}, Le/a/b/i/f;->setContactName(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Le/a/b/i/k/b;->j:Le/a/p5/c0;

    sget v3, Lcom/truecaller/bizmon/R$string;->biz_acs_call_me_back_facs_request_title:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026k_facs_request_title, it)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/b/i/f;->setRequestTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "contact"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
