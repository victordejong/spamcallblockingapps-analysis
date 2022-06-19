.class public final Le/a/g/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/j0/a;


# instance fields
.field public final a:Lcom/truecaller/ads/ui/AdsSwitchView;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Lcom/truecaller/ads/ui/AdsSwitchView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/truecaller/ads/ui/AdsSwitchView;Le/a/g/h/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/g/h/d;->a:Lcom/truecaller/ads/ui/AdsSwitchView;

    .line 3
    iput-object p2, p0, Le/a/g/h/d;->b:Landroid/widget/FrameLayout;

    .line 4
    iput-object p3, p0, Le/a/g/h/d;->c:Landroid/widget/FrameLayout;

    .line 5
    iput-object p4, p0, Le/a/g/h/d;->d:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static a(Landroid/view/View;)Le/a/g/h/d;
    .locals 9

    .line 1
    sget v0, Lcom/truecaller/acs/R$id;->adsHolderBanner:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/FrameLayout;

    const-string v1, "Missing required view with ID: "

    if-eqz v4, :cond_2

    .line 3
    sget v0, Lcom/truecaller/acs/R$id;->adsHolderNative:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    .line 5
    sget v0, Lcom/truecaller/acs/R$id;->container:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/FrameLayout;

    if-eqz v6, :cond_2

    .line 7
    move-object v7, p0

    check-cast v7, Lcom/truecaller/ads/ui/AdsSwitchView;

    .line 8
    sget v2, Lcom/truecaller/acs/R$id;->outer_container:I

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    .line 11
    check-cast v3, Landroid/widget/FrameLayout;

    .line 12
    new-instance v8, Le/a/g/h/e;

    invoke-direct {v8, v3, p0, v3}, Le/a/g/h/e;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 13
    new-instance p0, Le/a/g/h/d;

    move-object v2, p0

    move-object v3, v7

    invoke-direct/range {v2 .. v8}, Le/a/g/h/d;-><init>(Lcom/truecaller/ads/ui/AdsSwitchView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Lcom/truecaller/ads/ui/AdsSwitchView;Le/a/g/h/e;)V

    return-object p0

    .line 14
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    .line 16
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
