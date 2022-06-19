.class public final Le/a/g/a/a/i$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/a/i;->Wb()V
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
    c = "com.truecaller.acs.ui.popup.AfterCallPopupPresenter$onCallClicked$1"
    f = "AfterCallPopupPresenter.kt"
    l = {
        0x11e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/g/a/a/i;


# direct methods
.method public constructor <init>(Le/a/g/a/a/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/a/i$d;->f:Le/a/g/a/a/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/g/a/a/i$d;

    iget-object v0, p0, Le/a/g/a/a/i$d;->f:Le/a/g/a/a/i;

    invoke-direct {p1, v0, p2}, Le/a/g/a/a/i$d;-><init>(Le/a/g/a/a/i;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/g/a/a/i$d;

    iget-object v0, p0, Le/a/g/a/a/i$d;->f:Le/a/g/a/a/i;

    invoke-direct {p1, v0, p2}, Le/a/g/a/a/i$d;-><init>(Le/a/g/a/a/i;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g/a/a/i$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g/a/a/i$d;->e:I

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
    iget-object p1, p0, Le/a/g/a/a/i$d;->f:Le/a/g/a/a/i;

    iput v2, p0, Le/a/g/a/a/i$d;->e:I

    invoke-virtual {p1, p0}, Le/a/g/a/a/i;->Rk(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/videocallerid/utils/OnboardingType;

    .line 6
    iget-object v0, p0, Le/a/g/a/a/i$d;->f:Le/a/g/a/a/i;

    invoke-virtual {v0}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_5

    .line 8
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Le/a/g/a/a/i$d;->f:Le/a/g/a/a/i;

    .line 9
    iget-object v0, v0, Le/a/g/a/a/i;->L0:Le/a/k/h;

    .line 10
    invoke-interface {v0, p1}, Le/a/k/h;->e(Lcom/truecaller/videocallerid/utils/OnboardingType;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v0, p0, Le/a/g/a/a/i$d;->f:Le/a/g/a/a/i;

    .line 12
    iget-object v0, v0, Le/a/g/a/m;->h:Lq3/a/w2/j;

    sget-object v1, Lcom/truecaller/acs/analytics/ClickEvent;->CALL:Lcom/truecaller/acs/analytics/ClickEvent;

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Le/a/g/a/a/i$d;->f:Le/a/g/a/a/i;

    .line 14
    new-instance v1, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;

    .line 15
    invoke-virtual {v0}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    .line 16
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 18
    :goto_1
    invoke-virtual {v0}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v3

    .line 19
    iget-object v3, v3, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 20
    sget-object v4, Lcom/truecaller/acs/analytics/AnalyticsContext;->PACS:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-virtual {v4}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-direct {v1, v2, v4, p1, v3}, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/OnboardingType;Ljava/lang/String;)V

    .line 22
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/h;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Le/a/g/a/a/h;->oc(Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;)V

    .line 23
    :cond_4
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/g/a/a/h;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/g/a/h;->finish()V

    goto :goto_2

    .line 24
    :cond_5
    iget-object p1, p0, Le/a/g/a/a/i$d;->f:Le/a/g/a/a/i;

    invoke-static {p1}, Le/a/g/a/a/i;->Pk(Le/a/g/a/a/i;)V

    .line 25
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
