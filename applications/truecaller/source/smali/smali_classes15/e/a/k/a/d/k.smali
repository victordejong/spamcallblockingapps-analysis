.class public final Le/a/k/a/d/k;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/k/a/d/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/k/a/d/g;",
        ">;",
        "Le/a/k/a/d/f;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b0/e/f;

.field public final c:Le/a/p5/c0;

.field public final d:Le/a/k/c/i1;

.field public final e:Le/a/k/c/h2/d;


# direct methods
.method public constructor <init>(Le/a/b0/e/f;Le/a/p5/c0;Le/a/k/c/i1;Le/a/k/c/h2/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "regionUtils"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/k/a/d/k;->b:Le/a/b0/e/f;

    iput-object p2, p0, Le/a/k/a/d/k;->c:Le/a/p5/c0;

    iput-object p3, p0, Le/a/k/a/d/k;->d:Le/a/k/c/i1;

    iput-object p4, p0, Le/a/k/a/d/k;->e:Le/a/k/c/h2/d;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Le/a/k/a/d/g;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/k/a/d/k;->b:Le/a/b0/e/f;

    invoke-interface {p1}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    const-string v4, "https://www.truecaller.com/terms-of-service#row"

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    .line 5
    new-instance p1, Le/a/k/a/d/j;

    const-string v5, "https://privacy.truecaller.com/privacy-policy"

    invoke-direct {p1, v4, v5}, Le/a/k/a/d/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Le/a/k/a/d/j;

    const-string v5, "https://www.truecaller.com/brazil-privacy-policy"

    invoke-direct {p1, v4, v5}, Le/a/k/a/d/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Le/a/k/a/d/j;

    const-string v5, "https://www.truecaller.com/south-africa-privacy-policy"

    invoke-direct {p1, v4, v5}, Le/a/k/a/d/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance p1, Le/a/k/a/d/j;

    const-string v5, "https://www.truecaller.com/california-privacy-policy"

    invoke-direct {p1, v4, v5}, Le/a/k/a/d/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_4
    new-instance p1, Le/a/k/a/d/j;

    const-string v4, "https://www.truecaller.com/terms-of-service#eu"

    const-string v5, "https://privacy.truecaller.com/privacy-policy-eu"

    invoke-direct {p1, v4, v5}, Le/a/k/a/d/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :goto_0
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/k/a/d/g;

    if-eqz v4, :cond_5

    .line 11
    iget-object v5, p0, Le/a/k/a/d/k;->c:Le/a/p5/c0;

    .line 12
    sget v6, Lcom/truecaller/videocallerid/R$string;->vid_community_guideline_description:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    sget v7, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    invoke-interface {v5, v7, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v8

    .line 14
    iget-object v7, p1, Le/a/k/a/d/j;->a:Ljava/lang/String;

    aput-object v7, v0, v3

    .line 15
    iget-object p1, p1, Le/a/k/a/d/j;->b:Ljava/lang/String;

    aput-object p1, v0, v2

    const-string p1, "https://www.truecaller.com/community-guidelines/video-caller-id"

    aput-object p1, v0, v1

    .line 16
    invoke-interface {v5, v6, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026Y_GUIDELINE\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {v4, p1}, Le/a/k/a/d/g;->d(Ljava/lang/String;)V

    .line 18
    :cond_5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/d/g;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/k/a/d/g;->k0()Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 19
    iget-object v0, p0, Le/a/k/a/d/k;->e:Le/a/k/c/h2/d;

    sget-object v1, Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;->GUIDELINE:Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;

    invoke-interface {v0, p1, v1}, Le/a/k/c/h2/d;->i(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Lcom/truecaller/videocallerid/utils/analytics/OnboardingStep;)V

    :cond_6
    return-void
.end method
