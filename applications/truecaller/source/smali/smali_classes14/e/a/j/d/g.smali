.class public final Le/a/j/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/j0/a;


# instance fields
.field public final a:Landroidx/fragment/app/FragmentContainerView;

.field public final b:Lcom/airbnb/lottie/LottieAnimationView;

.field public final c:Landroidx/constraintlayout/widget/Group;

.field public final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/fragment/app/FragmentContainerView;Lcom/airbnb/lottie/LottieAnimationView;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/j/d/g;->a:Landroidx/fragment/app/FragmentContainerView;

    .line 3
    iput-object p3, p0, Le/a/j/d/g;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 4
    iput-object p4, p0, Le/a/j/d/g;->c:Landroidx/constraintlayout/widget/Group;

    .line 5
    iput-object p5, p0, Le/a/j/d/g;->d:Landroid/widget/TextView;

    return-void
.end method

.method public static a(Landroid/view/View;)Le/a/j/d/g;
    .locals 8

    .line 1
    sget v0, Lcom/truecaller/surveys/R$id;->questionContainer:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v4, :cond_0

    .line 3
    sget v0, Lcom/truecaller/surveys/R$id;->thanksAnimation:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v5, :cond_0

    .line 5
    sget v0, Lcom/truecaller/surveys/R$id;->thanksGroup:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    .line 7
    sget v0, Lcom/truecaller/surveys/R$id;->thanksText:I

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 9
    new-instance v0, Le/a/j/d/g;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Le/a/j/d/g;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/fragment/app/FragmentContainerView;Lcom/airbnb/lottie/LottieAnimationView;Landroidx/constraintlayout/widget/Group;Landroid/widget/TextView;)V

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
