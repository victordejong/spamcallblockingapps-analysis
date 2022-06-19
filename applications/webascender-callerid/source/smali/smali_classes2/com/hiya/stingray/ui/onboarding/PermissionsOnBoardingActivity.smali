.class public final Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity$a;
    }
.end annotation


# static fields
.field public static final t:Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity$a;


# instance fields
.field public r:Lcom/hiya/stingray/manager/d3;

.field private s:Lcom/hiya/stingray/manager/d3$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->t:Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    .line 2
    sget-object v0, Lcom/hiya/stingray/manager/d3$b;->GET_STARTED:Lcom/hiya/stingray/manager/d3$b;

    iput-object v0, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->s:Lcom/hiya/stingray/manager/d3$b;

    return-void
.end method

.method public static final P(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->t:Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity$a;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity$a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private final R()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/n;->n()Landroidx/fragment/app/y;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/hiya/stingray/ui/onboarding/d;->u:Lcom/hiya/stingray/ui/onboarding/d$a;

    iget-object v2, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->s:Lcom/hiya/stingray/manager/d3$b;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hiya/stingray/ui/onboarding/d$a;->b(Lcom/hiya/stingray/ui/onboarding/d$a;Lcom/hiya/stingray/manager/d3$b;ZILjava/lang/Object;)Lcom/hiya/stingray/ui/onboarding/d;

    move-result-object v1

    const v2, 0x7f090126

    .line 3
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/y;->r(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/y;

    .line 4
    invoke-virtual {v0}, Landroidx/fragment/app/y;->i()I

    return-void
.end method


# virtual methods
.method public final O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->s:Lcom/hiya/stingray/manager/d3$b;

    sget-object v1, Lcom/hiya/stingray/ui/onboarding/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->r:Lcom/hiya/stingray/manager/d3;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/d3;->s(Z)V

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const-string v0, "onBoardingManager"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 6
    :cond_2
    sget-object v0, Lcom/hiya/stingray/manager/d3$b;->RECOMMENDED:Lcom/hiya/stingray/manager/d3$b;

    iput-object v0, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->s:Lcom/hiya/stingray/manager/d3$b;

    .line 7
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->R()V

    :goto_0
    return-void
.end method

.method public final Q(Lcom/hiya/stingray/manager/d3$a;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/hiya/stingray/s/d/a;->y(Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;)V

    const p1, 0x7f0c0027

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/c;->setContentView(I)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->r:Lcom/hiya/stingray/manager/d3;

    const-string v0, "onBoardingManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_10

    sget-object v2, Lcom/hiya/stingray/manager/d3$b;->GET_STARTED:Lcom/hiya/stingray/manager/d3$b;

    invoke-virtual {p1, v2}, Lcom/hiya/stingray/manager/d3;->j(Lcom/hiya/stingray/manager/d3$b;)Ljava/util/List;

    move-result-object p1

    .line 5
    instance-of v2, p1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hiya/stingray/manager/d3$a;

    .line 7
    iget-object v6, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->r:Lcom/hiya/stingray/manager/d3;

    if-eqz v6, :cond_3

    invoke-virtual {v6, v5}, Lcom/hiya/stingray/manager/d3;->i(Lcom/hiya/stingray/manager/d3$a;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    if-ltz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lkotlin/s/k;->o()V

    throw v1

    :cond_3
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-ne v4, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 9
    sget-object p1, Lcom/hiya/stingray/manager/d3$b;->RECOMMENDED:Lcom/hiya/stingray/manager/d3$b;

    goto :goto_3

    .line 10
    :cond_6
    sget-object p1, Lcom/hiya/stingray/manager/d3$b;->GET_STARTED:Lcom/hiya/stingray/manager/d3$b;

    .line 11
    :goto_3
    iput-object p1, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->s:Lcom/hiya/stingray/manager/d3$b;

    .line 12
    iget-object v4, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->r:Lcom/hiya/stingray/manager/d3;

    if-eqz v4, :cond_f

    invoke-virtual {v4, p1}, Lcom/hiya/stingray/manager/d3;->j(Lcom/hiya/stingray/manager/d3$b;)Ljava/util/List;

    move-result-object p1

    .line 13
    instance-of v4, p1, Ljava/util/Collection;

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    .line 14
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hiya/stingray/manager/d3$a;

    .line 15
    iget-object v7, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->r:Lcom/hiya/stingray/manager/d3;

    if-eqz v7, :cond_a

    invoke-virtual {v7, v6}, Lcom/hiya/stingray/manager/d3;->i(Lcom/hiya/stingray/manager/d3$a;)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {}, Lkotlin/s/k;->o()V

    throw v1

    :cond_a
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v5, p1, :cond_c

    const/4 v3, 0x1

    :cond_c
    if-eqz v3, :cond_e

    .line 17
    iget-object p1, p0, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->r:Lcom/hiya/stingray/manager/d3;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v2}, Lcom/hiya/stingray/manager/d3;->s(Z)V

    const/4 p1, -0x1

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 20
    :cond_d
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 21
    :cond_e
    invoke-direct {p0}, Lcom/hiya/stingray/ui/onboarding/PermissionsOnBoardingActivity;->R()V

    return-void

    .line 22
    :cond_f
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_10
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method
