.class public final Le/a/c/i/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/e/c;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Le/a/c/n/d;

.field public final c:Ls1/w/f;

.field public final d:Le/a/c/a/i/f;

.field public final e:Le/a/c/w/o0/g;


# direct methods
.method public constructor <init>(Le/a/c/n/d;Ls1/w/f;Le/a/c/a/i/f;Le/a/c/w/o0/g;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsUiDialogOpener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFeatureFilter"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    iput-object p2, p0, Le/a/c/i/e/d;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/c/i/e/d;->d:Le/a/c/a/i/f;

    iput-object p4, p0, Le/a/c/i/e/d;->e:Le/a/c/w/o0/g;

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 2
    invoke-static {p1, p3}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    invoke-interface {p2, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/i/e/d;->a:Lq3/a/i0;

    return-void
.end method


# virtual methods
.method public a(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Float;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    invoke-interface {v0, p1, p2, p3}, Le/a/c/n/d;->a(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(JLs1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Le/a/c/i/e/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    invoke-interface {v0, p1, p2, p3}, Le/a/c/n/d;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(JLe/a/c/i/e/b;JLjava/lang/String;Ljava/lang/Boolean;ZLs1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/a/c/i/e/b;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Le/a/c/n/d;->c(JLe/a/c/i/e/b;JLjava/lang/String;Ljava/lang/Boolean;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v1, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method

.method public d(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "feedback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    invoke-interface {v0, p1, p2}, Le/a/c/n/d;->d(Ljava/util/List;Z)V

    return-void
.end method

.method public e(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "feedback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    invoke-interface {v0, p1, p2}, Le/a/c/n/d;->e(Ljava/util/List;Z)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    invoke-interface {v0}, Le/a/c/n/d;->f()V

    return-void
.end method

.method public g(JLe/a/c/i/e/b;JLs1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/a/c/i/e/b;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Le/a/c/n/d;->g(JLe/a/c/i/e/b;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    invoke-interface {v0}, Le/a/c/n/d;->h()Z

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    invoke-interface {v0}, Le/a/c/n/d;->m()V

    return-void
.end method

.method public j(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "feedback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/i/e/d;->a:Lq3/a/i0;

    new-instance v4, Le/a/c/i/e/d$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/c/i/e/d$e;-><init>(Le/a/c/i/e/d;Ljava/util/List;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "senderId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/i/e/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/c/i/e/d$d;-><init>(Le/a/c/i/e/d;Ljava/lang/String;Ls1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public l(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "feedback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/i/e/d;->a:Lq3/a/i0;

    new-instance v4, Le/a/c/i/e/d$f;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/c/i/e/d$f;-><init>(Le/a/c/i/e/d;Ljava/util/List;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public m(Ljava/lang/String;Le/a/c/i/e/c$a;)V
    .locals 7

    const-string v0, "senderId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/i/e/d;->a:Lq3/a/i0;

    new-instance v4, Le/a/c/i/e/d$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Le/a/c/i/e/d$b;-><init>(Le/a/c/i/e/d;Ljava/lang/String;Le/a/c/i/e/c$a;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public n(Ljava/util/List;Le/a/c/n/c;Lcom/truecaller/insights/utils/FeedbackConsentType;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/c/i/e/b;",
            ">;",
            "Le/a/c/n/c;",
            "Lcom/truecaller/insights/utils/FeedbackConsentType;",
            ")V"
        }
    .end annotation

    const-string v0, "feedback"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "questionnaireType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Le/a/c/n/c;->a()Ljava/lang/String;

    move-result-object v4

    .line 2
    iget-object p2, p0, Le/a/c/i/e/d;->a:Lq3/a/i0;

    new-instance v8, Le/a/c/i/e/d$c;

    const/4 v6, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/c/i/e/d$c;-><init>(Le/a/c/i/e/d;Ljava/util/List;Ljava/lang/String;Lcom/truecaller/insights/utils/FeedbackConsentType;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p2

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public o(Ljava/lang/String;ZLandroidx/fragment/app/FragmentManager;)V
    .locals 5

    const-string v0, "senderId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/c/i/e/d;->d:Le/a/c/a/i/f;

    .line 2
    sget-object v2, Le/a/c/c0/q;->b:Le/a/c/c0/q;

    invoke-virtual {v2, p1}, Le/a/c/c0/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v2, Le/a/c/i/e/d$a;

    invoke-direct {v2, p0, p3}, Le/a/c/i/e/d$a;-><init>(Le/a/c/i/e/d;Landroidx/fragment/app/FragmentManager;)V

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "conversation_view"

    const-string v3, "analyticsContext"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "dialogActionCallback"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v4, Le/a/c/a/e/a/a;->k:Le/a/c/a/e/a/a$c;

    .line 6
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticContext"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Le/a/c/a/e/a/a;

    invoke-direct {v0}, Le/a/c/a/e/a/a;-><init>()V

    .line 8
    iput-object v2, v0, Le/a/c/a/e/a/a;->a:Ls1/z/b/l;

    .line 9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "sender_id"

    .line 10
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "is_im"

    .line 11
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "analytics_context"

    .line 12
    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 14
    sget-object p1, Le/a/c/a/e/a/a;->j:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, p3, p1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
