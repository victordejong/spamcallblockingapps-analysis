.class public final Le/a/g/a/f0/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/a/f0/a/e;
.implements Le/a/g/a/f0/a/c;


# instance fields
.field public final a:Le/a/g/a/f0/a/h;

.field public final b:Le/a/g/a/f0/a/g;

.field public final c:Le/a/g/a/f0/a/f;

.field public final d:Landroid/app/Activity;

.field public final e:Le/a/g/a/f0/a/d;

.field public final f:Le/a/d4/a;

.field public final g:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Le/a/g/a/f0/a/d;Le/a/d4/a;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appMarketUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/a/f0/a/i;->d:Landroid/app/Activity;

    iput-object p2, p0, Le/a/g/a/f0/a/i;->e:Le/a/g/a/f0/a/d;

    iput-object p3, p0, Le/a/g/a/f0/a/i;->f:Le/a/d4/a;

    iput-object p4, p0, Le/a/g/a/f0/a/i;->g:Le/a/p5/c0;

    .line 2
    iput-object p0, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Le/a/g/a/f0/a/h;

    invoke-direct {p1, p0}, Le/a/g/a/f0/a/h;-><init>(Le/a/g/a/f0/a/i;)V

    iput-object p1, p0, Le/a/g/a/f0/a/i;->a:Le/a/g/a/f0/a/h;

    .line 4
    new-instance p1, Le/a/g/a/f0/a/g;

    invoke-direct {p1, p0}, Le/a/g/a/f0/a/g;-><init>(Le/a/g/a/f0/a/i;)V

    iput-object p1, p0, Le/a/g/a/f0/a/i;->b:Le/a/g/a/f0/a/g;

    .line 5
    new-instance p1, Le/a/g/a/f0/a/f;

    invoke-direct {p1, p0}, Le/a/g/a/f0/a/f;-><init>(Le/a/g/a/f0/a/i;)V

    iput-object p1, p0, Le/a/g/a/f0/a/i;->c:Le/a/g/a/f0/a/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/f0/a/i;->f:Le/a/d4/a;

    invoke-interface {v0}, Le/a/d4/a;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/g/a/f0/a/i;->d:Landroid/app/Activity;

    invoke-static {v1, v0}, Le/a/b0/q/t;->i(Landroid/content/Context;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 14

    .line 1
    sget-object v0, Le/a/b0/a/a/h;->k:Le/a/b0/a/a/h$c;

    .line 2
    iget-object v1, p0, Le/a/g/a/f0/a/i;->d:Landroid/app/Activity;

    const-string v2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Ln3/b/a/h;

    .line 3
    iget-object v2, p0, Le/a/g/a/f0/a/i;->g:Le/a/p5/c0;

    sget v3, Lcom/truecaller/acs/R$string;->FeedbackQuestionEnjoyingCallerId:I

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "resourceProvider.getStri\u2026QuestionEnjoyingCallerId)"

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Le/a/g/a/f0/a/i;->g:Le/a/p5/c0;

    sget v5, Lcom/truecaller/acs/R$string;->StrYes:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v2, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "resourceProvider.getString(R.string.StrYes)"

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Le/a/g/a/f0/a/i;->g:Le/a/p5/c0;

    sget v6, Lcom/truecaller/acs/R$string;->FeedbackOptionDismiss:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v6, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 6
    sget v2, Lcom/truecaller/acs/R$drawable;->ic_rate_app_promo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 7
    iget-object v8, p0, Le/a/g/a/f0/a/i;->a:Le/a/g/a/f0/a/h;

    .line 8
    iget-object v9, p0, Le/a/g/a/f0/a/i;->b:Le/a/g/a/f0/a/g;

    .line 9
    iget-object v10, p0, Le/a/g/a/f0/a/i;->c:Le/a/g/a/f0/a/f;

    const/4 v11, 0x0

    .line 10
    new-instance v12, Le/a/g/a/f0/a/a;

    invoke-direct {v12}, Le/a/g/a/f0/a/a;-><init>()V

    const/16 v13, 0x200

    const-string v2, ""

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move v10, v11

    move-object v11, v12

    move v12, v13

    .line 11
    invoke-static/range {v0 .. v12}, Le/a/b0/a/a/h$c;->b(Le/a/b0/a/a/h$c;Ln3/b/a/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ls1/z/b/a;Ls1/z/b/a;Ls1/z/b/l;ZLe/a/b0/a/a/h;I)V

    return-void
.end method

.method public c()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/g/a/f0/a/i;->d:Landroid/app/Activity;

    .line 2
    iget-object v1, p0, Le/a/g/a/f0/a/i;->g:Le/a/p5/c0;

    sget v2, Lcom/truecaller/acs/R$string;->FeedbackDismissedPermanently:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public d(Lcom/truecaller/acs/analytics/AnalyticsContext;Le/a/g/a/f0/a/b;)V
    .locals 3

    const-string v0, "analyticsContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "listener"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, p0, Le/a/g/a/f0/a/i;->e:Le/a/g/a/f0/a/d;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Le/a/g/a/f0/a/d;->b:Ljava/lang/String;

    .line 4
    iput-object p2, v2, Le/a/g/a/f0/a/d;->c:Le/a/g/a/f0/a/b;

    .line 5
    iget-object p1, v2, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    const-string p2, "FEEDBACK_HAS_ASKED_AFTERCALL"

    .line 7
    invoke-static {p2, p1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    .line 8
    iget-object p1, v2, Le/a/g/a/f0/a/d;->e:Le/a/g/j/w;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "GOOGLE_REVIEW_ASK_TIMESTAMP"

    .line 10
    invoke-static {p1}, Le/a/j4/b/a/h;->B(Ljava/lang/String;)V

    .line 11
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/f0/a/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/g/a/f0/a/c;->b()V

    :cond_0
    return-void
.end method
