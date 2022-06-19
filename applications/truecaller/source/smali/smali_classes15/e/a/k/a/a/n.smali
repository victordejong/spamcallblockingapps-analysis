.class public final Le/a/k/a/a/n;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/k/a/a/m;",
        ">;",
        "Le/a/k/a/a/n;"
    }
.end annotation


# instance fields
.field public final b:Le/a/p5/c0;

.field public final c:Le/a/k/j;

.field public final d:Le/a/k/c/y0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/k/j;Le/a/k/c/y0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdSupport"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onboardingManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/k/a/a/n;->b:Le/a/p5/c0;

    iput-object p2, p0, Le/a/k/a/a/n;->c:Le/a/k/j;

    iput-object p3, p0, Le/a/k/a/a/n;->d:Le/a/k/c/y0;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Le/a/k/a/a/m;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-interface {p1}, Le/a/k/a/a/m;->k0()Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/ui/onboarding/VideoCallerIdBottomSheetOnboardingData;->getContactName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/m;

    if-eqz p1, :cond_3

    iget-object v1, p0, Le/a/k/a/a/n;->b:Le/a/p5/c0;

    sget v2, Lcom/truecaller/videocallerid/R$string;->vid_caller_id_onboarding_pacs_expanded_title:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "resourceProvider.getStri\u2026ding_pacs_expanded_title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/k/a/a/m;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, " "

    const/4 v2, 0x6

    .line 7
    invoke-static {p1, v1, v0, v0, v2}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    if-ltz v3, :cond_2

    .line 8
    invoke-static {p1, v1, v0, v0, v2}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    :cond_2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/k/a/a/m;

    if-eqz v1, :cond_3

    .line 10
    iget-object v2, p0, Le/a/k/a/a/n;->b:Le/a/p5/c0;

    .line 11
    sget v3, Lcom/truecaller/videocallerid/R$string;->vid_caller_id_onboarding_title:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    const/4 p1, 0x1

    sget v5, Lcom/truecaller/videocallerid/R$string;->video_caller_id:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {v2, v5, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    .line 12
    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026caller_id),\n            )"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v1, p1}, Le/a/k/a/a/m;->setTitle(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
