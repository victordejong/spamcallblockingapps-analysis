.class public final Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u000fJ\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R(\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u0008\u0010\t\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/u3/g;",
        "b",
        "Le/a/u3/g;",
        "getFeaturesRegistry",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "getFeaturesRegistry$annotations",
        "()V",
        "featuresRegistry",
        "Le/a/b/a/e/b;",
        "a",
        "Le/a/b/a/e/b;",
        "getBusinessAnalyticsManager",
        "()Le/a/b/a/e/b;",
        "setBusinessAnalyticsManager",
        "(Le/a/b/a/e/b;)V",
        "businessAnalyticsManager",
        "Le/a/b/m/g;",
        "c",
        "Le/a/b/m/g;",
        "binding",
        "<init>",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/b/a/e/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/b/m/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    sget v2, Lcom/truecaller/bizmon/R$layout;->activity_success_onboarding:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 5
    sget v2, Lcom/truecaller/bizmon/R$id;->addMoreBtn:I

    .line 6
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_c

    .line 7
    sget v2, Lcom/truecaller/bizmon/R$id;->animationView:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v8, :cond_c

    .line 9
    sget v2, Lcom/truecaller/bizmon/R$id;->backgroundView:I

    .line 10
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 11
    sget v2, Lcom/truecaller/bizmon/R$id;->doneBtn:I

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/Button;

    if-eqz v10, :cond_c

    .line 13
    sget v2, Lcom/truecaller/bizmon/R$id;->header:I

    .line 14
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_c

    .line 15
    sget v2, Lcom/truecaller/bizmon/R$id;->infolineFirst:I

    .line 16
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_c

    .line 17
    sget v2, Lcom/truecaller/bizmon/R$id;->infolineSecond:I

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_c

    .line 19
    sget v2, Lcom/truecaller/bizmon/R$id;->infolineThird:I

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_c

    .line 21
    sget v2, Lcom/truecaller/bizmon/R$id;->informationGroup:I

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroidx/constraintlayout/widget/Group;

    if-eqz v15, :cond_c

    .line 23
    sget v2, Lcom/truecaller/bizmon/R$id;->pitchImage:I

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/ImageView;

    if-eqz v16, :cond_c

    .line 25
    sget v2, Lcom/truecaller/bizmon/R$id;->pointerFirst:I

    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/ImageView;

    if-eqz v17, :cond_c

    .line 27
    sget v2, Lcom/truecaller/bizmon/R$id;->pointerSecond:I

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/ImageView;

    if-eqz v18, :cond_c

    .line 29
    sget v2, Lcom/truecaller/bizmon/R$id;->pointerThird:I

    .line 30
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageView;

    if-eqz v19, :cond_c

    .line 31
    sget v2, Lcom/truecaller/bizmon/R$id;->spaceView:I

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    if-eqz v20, :cond_c

    .line 33
    sget v2, Lcom/truecaller/bizmon/R$id;->subHeader:I

    .line 34
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_c

    .line 35
    new-instance v2, Le/a/b/m/g;

    move-object v5, v2

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v5 .. v21}, Le/a/b/m/g;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;)V

    const-string v1, "ActivitySuccessOnboardin\u2026ayoutInflater.from(this))"

    .line 36
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->c:Le/a/b/m/g;

    const-string v1, "binding"

    if-eqz v2, :cond_b

    .line 37
    iget-object v2, v2, Le/a/b/m/g;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 38
    invoke-virtual {v0, v2}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 39
    iget-object v2, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->c:Le/a/b/m/g;

    if-eqz v2, :cond_a

    .line 40
    iget-object v3, v2, Le/a/b/m/g;->c:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v5, "animationView"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity$a;

    invoke-direct {v5, v2}, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity$a;-><init>(Le/a/b/m/g;)V

    invoke-static {v3, v5}, Le/a/e/a2;->O(Lcom/airbnb/lottie/LottieAnimationView;Ls1/z/b/l;)V

    .line 41
    invoke-static/range {p0 .. p0}, Le/a/n/g0;->l(Landroid/content/Context;)Le/a/b/a/g/b;

    move-result-object v2

    check-cast v2, Le/a/b/a/g/e;

    .line 42
    iget-object v3, v2, Le/a/b/a/g/e;->O:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b/a/e/b;

    .line 43
    iput-object v3, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->a:Le/a/b/a/e/b;

    .line 44
    iget-object v2, v2, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {v2}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object v2

    const-string v3, "Cannot return null from a non-@Nullable component method"

    .line 45
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    iput-object v2, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->b:Le/a/u3/g;

    .line 47
    iget-object v2, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->c:Le/a/b/m/g;

    if-eqz v2, :cond_9

    .line 48
    sget-object v3, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v3

    .line 49
    instance-of v5, v3, Le/a/i5/d$c;

    if-eqz v5, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    instance-of v5, v3, Le/a/i5/d$a;

    if-eqz v5, :cond_1

    :goto_0
    iget-object v2, v2, Le/a/b/m/g;->g:Landroid/widget/ImageView;

    sget v3, Lcom/truecaller/bizmon/R$drawable;->biz_illustration_done_light:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 51
    :cond_1
    instance-of v5, v3, Le/a/i5/d$d;

    if-eqz v5, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    instance-of v3, v3, Le/a/i5/d$b;

    if-eqz v3, :cond_3

    :goto_1
    iget-object v2, v2, Le/a/b/m/g;->g:Landroid/widget/ImageView;

    sget v3, Lcom/truecaller/bizmon/R$drawable;->biz_illustration_done_dark:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 53
    :cond_3
    iget-object v2, v2, Le/a/b/m/g;->g:Landroid/widget/ImageView;

    sget v3, Lcom/truecaller/bizmon/R$drawable;->biz_illustration_done_light:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    :goto_2
    iget-object v2, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->c:Le/a/b/m/g;

    if-eqz v2, :cond_8

    iget-object v2, v2, Le/a/b/m/g;->e:Landroid/widget/Button;

    new-instance v3, Le/a/b/a/c/a/x;

    invoke-direct {v3, v0}, Le/a/b/a/c/a/x;-><init>(Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v2, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->c:Le/a/b/m/g;

    if-eqz v2, :cond_7

    .line 56
    iget-object v1, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->b:Le/a/u3/g;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Le/a/u3/g;->x()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    iget-object v1, v2, Le/a/b/m/g;->b:Landroid/widget/Button;

    const-string v3, "addMoreBtn"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 58
    iget-object v1, v2, Le/a/b/m/g;->b:Landroid/widget/Button;

    new-instance v2, Le/a/b/a/c/a/w;

    invoke-direct {v2, v0}, Le/a/b/a/c/a/w;-><init>(Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_4
    iget-object v1, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/OnboardingSuccessActivity;->a:Le/a/b/a/e/b;

    if-eqz v1, :cond_5

    sget-object v2, Le/a/b/a/e/a$k;->a:Le/a/b/a/e/a$k;

    invoke-interface {v1, v2}, Le/a/b/a/e/b;->a(Le/a/b/a/e/a;)V

    return-void

    :cond_5
    const-string v1, "businessAnalyticsManager"

    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string v1, "featuresRegistry"

    .line 60
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 61
    :cond_7
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_8
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_9
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_a
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 65
    :cond_b
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 66
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
