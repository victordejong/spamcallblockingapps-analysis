.class public final Le/a/c/i/e/d$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/e/d;->n(Ljava/util/List;Le/a/c/n/c;Lcom/truecaller/insights/utils/FeedbackConsentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.core.feedback.InsightsFeedbackManagerImpl$generalFeedback$1"
    f = "InsightsFeedbackManager.kt"
    l = {
        0x65
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/i/e/d;

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/truecaller/insights/utils/FeedbackConsentType;


# direct methods
.method public constructor <init>(Le/a/c/i/e/d;Ljava/util/List;Ljava/lang/String;Lcom/truecaller/insights/utils/FeedbackConsentType;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/e/d$c;->f:Le/a/c/i/e/d;

    iput-object p2, p0, Le/a/c/i/e/d$c;->g:Ljava/util/List;

    iput-object p3, p0, Le/a/c/i/e/d$c;->h:Ljava/lang/String;

    iput-object p4, p0, Le/a/c/i/e/d$c;->i:Lcom/truecaller/insights/utils/FeedbackConsentType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/e/d$c;

    iget-object v1, p0, Le/a/c/i/e/d$c;->f:Le/a/c/i/e/d;

    iget-object v2, p0, Le/a/c/i/e/d$c;->g:Ljava/util/List;

    iget-object v3, p0, Le/a/c/i/e/d$c;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/c/i/e/d$c;->i:Lcom/truecaller/insights/utils/FeedbackConsentType;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/c/i/e/d$c;-><init>(Le/a/c/i/e/d;Ljava/util/List;Ljava/lang/String;Lcom/truecaller/insights/utils/FeedbackConsentType;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/c/i/e/d$c;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/c/i/e/d$c;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/i/e/d$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/i/e/d$c;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/c/i/e/d$c;->f:Le/a/c/i/e/d;

    .line 5
    iget-object p1, p1, Le/a/c/i/e/d;->b:Le/a/c/n/d;

    .line 6
    iget-object v1, p0, Le/a/c/i/e/d$c;->g:Ljava/util/List;

    iget-object v3, p0, Le/a/c/i/e/d$c;->h:Ljava/lang/String;

    iget-object v4, p0, Le/a/c/i/e/d$c;->i:Lcom/truecaller/insights/utils/FeedbackConsentType;

    iput v2, p0, Le/a/c/i/e/d$c;->e:I

    invoke-interface {p1, v1, v3, v4, p0}, Le/a/c/n/d;->j(Ljava/util/List;Ljava/lang/String;Lcom/truecaller/insights/utils/FeedbackConsentType;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
