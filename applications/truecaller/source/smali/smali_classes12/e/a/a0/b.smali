.class public final Le/a/a0/b;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a0/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a0/f;",
        ">;",
        "Le/a/a0/e;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/a0/a/m;",
            ">;"
        }
    .end annotation
.end field

.field public e:Le/a/a0/a/m;

.field public f:Lcom/truecaller/spamcategories/SpamCategoryResult;

.field public g:Lcom/truecaller/spamcategories/SpamCategoryRequest;

.field public h:Le/a/a0/g;

.field public final i:Ls1/g;

.field public j:Lcom/truecaller/contactfeedback/model/Profile;

.field public final k:Ls1/g;

.field public final l:Ls1/g;

.field public final m:Ls1/w/f;

.field public final n:Le/a/a0/i;

.field public final o:Le/a/q2/a;

.field public final p:Le/a/b0/o/a;

.field public final q:Le/a/b0/a/v/a;

.field public final r:Le/a/p5/c;

.field public final s:Le/a/q/i/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/a0/i;Le/a/q2/a;Le/a/b0/o/a;Le/a/b0/a/v/a;Le/a/p5/c;Le/a/q/i/a;)V
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

    const-string v0, "repository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentBoxValidator"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentFeedbackProcessorBridge"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a0/b;->m:Ls1/w/f;

    iput-object p2, p0, Le/a/a0/b;->n:Le/a/a0/i;

    iput-object p3, p0, Le/a/a0/b;->o:Le/a/q2/a;

    iput-object p4, p0, Le/a/a0/b;->p:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/a0/b;->q:Le/a/b0/a/v/a;

    iput-object p6, p0, Le/a/a0/b;->r:Le/a/p5/c;

    iput-object p7, p0, Le/a/a0/b;->s:Le/a/q/i/a;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a0/b;->d:Ljava/util/List;

    .line 3
    new-instance p1, Le/a/a0/b$b;

    invoke-direct {p1, p0}, Le/a/a0/b$b;-><init>(Le/a/a0/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a0/b;->i:Ls1/g;

    .line 4
    check-cast p1, Ls1/n;

    invoke-virtual {p1}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/contactfeedback/model/Profile;

    .line 5
    iput-object p1, p0, Le/a/a0/b;->j:Lcom/truecaller/contactfeedback/model/Profile;

    .line 6
    new-instance p1, Le/a/a0/b$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/a0/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a0/b;->k:Ls1/g;

    .line 7
    new-instance p1, Le/a/a0/b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/a0/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a0/b;->l:Ls1/g;

    return-void
.end method


# virtual methods
.method public final Ij()Lcom/truecaller/spamcategories/SpamCategoryResult;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a0/b;->f:Lcom/truecaller/spamcategories/SpamCategoryResult;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/truecaller/spamcategories/SpamCategoryResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7f

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/truecaller/spamcategories/SpamCategoryResult;-><init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;I)V

    :goto_0
    move-object v11, v1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 2
    iget-object v1, v11, Lcom/truecaller/spamcategories/SpamCategoryResult;->d:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    :goto_2
    xor-int/lit8 v16, v1, 0x1

    .line 4
    iget-object v1, v11, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 5
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    xor-int/lit8 v17, v2, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x4f

    .line 6
    invoke-static/range {v11 .. v19}, Lcom/truecaller/spamcategories/SpamCategoryResult;->a(Lcom/truecaller/spamcategories/SpamCategoryResult;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;I)Lcom/truecaller/spamcategories/SpamCategoryResult;

    move-result-object v1

    return-object v1
.end method

.method public final Jj()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Le/a/a0/b;->Ij()Lcom/truecaller/spamcategories/SpamCategoryResult;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpamCategoryResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-boolean v1, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->f:Z

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Le/a/a0/f;

    if-eqz v9, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Le/a/a0/b;->g:Lcom/truecaller/spamcategories/SpamCategoryRequest;

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, v2, Lcom/truecaller/spamcategories/SpamCategoryRequest;->a:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7d

    .line 6
    invoke-static/range {v0 .. v8}, Lcom/truecaller/spamcategories/SpamCategoryResult;->a(Lcom/truecaller/spamcategories/SpamCategoryResult;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;I)Lcom/truecaller/spamcategories/SpamCategoryResult;

    move-result-object v0

    invoke-interface {v9, v0}, Le/a/a0/f;->pd(Lcom/truecaller/spamcategories/SpamCategoryResult;)V

    goto :goto_0

    :cond_0
    const-string v0, "data"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 7
    :cond_1
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a0/f;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Le/a/a0/f;->pd(Lcom/truecaller/spamcategories/SpamCategoryResult;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final Kj()I
    .locals 1

    iget-object v0, p0, Le/a/a0/b;->l:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final Lj(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a0/b;->o:Le/a/q2/a;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "ViewInteraction"

    .line 3
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Le/a/q2/g$b$a;

    const-string v2, "ContactBlocked"

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v1, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v1, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public Mj(Le/a/a0/a/m;)V
    .locals 2

    const-string v0, "category"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a0/b;->e:Le/a/a0/a/m;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a0/f;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/a0/f;->Dp(Le/a/a0/a/m;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/a0/b;->e:Le/a/a0/a/m;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/a/a0/b;->e:Le/a/a0/a/m;

    goto :goto_0

    .line 4
    :cond_1
    iput-object p1, p0, Le/a/a0/b;->e:Le/a/a0/a/m;

    const-string v0, "CategoryClicked"

    .line 5
    invoke-virtual {p0, v0}, Le/a/a0/b;->Lj(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a0/f;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Le/a/a0/f;->rv(Le/a/a0/a/m;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Nj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 2
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a0/f;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/a0/f;->Xi()V

    :cond_2
    return-void

    :cond_3
    if-nez p2, :cond_5

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a0/f;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/a0/f;->Dl()V

    :cond_4
    return-void

    .line 4
    :cond_5
    invoke-static {p2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object p2, p0, Le/a/a0/b;->q:Le/a/b0/a/v/a;

    invoke-interface {p2, p1}, Le/a/b0/a/v/a;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 6
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a0/f;

    if-eqz v2, :cond_7

    sget v3, Lcom/truecaller/spamcategories/R$string;->spam_categories_provide_more_info_write_comment_error_message:I

    invoke-interface {v2, v3}, Le/a/a0/f;->k5(I)V

    goto :goto_2

    .line 7
    :cond_6
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/a0/f;

    if-eqz v2, :cond_7

    sget v3, Lcom/truecaller/spamcategories/R$string;->spam_categories_info_message:I

    invoke-interface {v2, v3}, Le/a/a0/f;->B5(I)V

    .line 8
    :cond_7
    :goto_2
    iget-object v2, p0, Le/a/a0/b;->q:Le/a/b0/a/v/a;

    .line 9
    iget-object v3, p0, Le/a/a0/b;->k:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 10
    invoke-virtual {p0}, Le/a/a0/b;->Kj()I

    move-result v4

    .line 11
    invoke-interface {v2, p1, v3, v4}, Le/a/b0/a/v/a;->a(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 12
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a0/f;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Le/a/a0/b;->Kj()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Le/a/a0/f;->d2(I)V

    goto :goto_3

    .line 13
    :cond_8
    iget-object v3, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/a0/f;

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Le/a/a0/b;->Kj()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v4, p1

    invoke-interface {v3, v4}, Le/a/a0/f;->cb(I)V

    :cond_9
    :goto_3
    if-nez v2, :cond_a

    if-eqz p2, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    if-eqz v0, :cond_c

    .line 14
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a0/f;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Le/a/a0/f;->Xi()V

    goto :goto_4

    .line 15
    :cond_c
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a0/f;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Le/a/a0/f;->Dl()V

    :cond_d
    :goto_4
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Le/a/a0/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const-string v0, "Open"

    .line 4
    invoke-virtual {p0, v0}, Le/a/a0/b;->Lj(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/a/a0/b;->g:Lcom/truecaller/spamcategories/SpamCategoryRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, v0, Lcom/truecaller/spamcategories/SpamCategoryRequest;->a:Ljava/lang/String;

    .line 7
    invoke-interface {p1, v0}, Le/a/a0/f;->py(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Le/a/a0/b;->Kj()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/a0/f;->p3(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/contactfeedback/model/Profile;

    const/4 v2, 0x0

    .line 9
    iget-object v3, p0, Le/a/a0/b;->i:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/contactfeedback/model/Profile;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 10
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a0/f;->Z3(Ljava/util/List;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 11
    new-instance v5, Le/a/a0/h;

    invoke-direct {v5, p0, v1}, Le/a/a0/h;-><init>(Le/a/a0/b;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_0
    const-string p1, "data"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
