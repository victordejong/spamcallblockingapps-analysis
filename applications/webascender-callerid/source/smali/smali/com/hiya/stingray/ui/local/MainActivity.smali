.class public Lcom/hiya/stingray/ui/local/MainActivity;
.super Lcom/hiya/stingray/ui/common/e;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/common/error/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/local/MainActivity$c;,
        Lcom/hiya/stingray/ui/local/MainActivity$b;,
        Lcom/hiya/stingray/ui/local/MainActivity$a;
    }
.end annotation


# static fields
.field public static final R:Lcom/hiya/stingray/ui/local/MainActivity$a;


# instance fields
.field public A:Lcom/hiya/stingray/manager/g3;

.field public B:Lcom/hiya/stingray/manager/x3;

.field public C:Lcom/hiya/stingray/manager/i2;

.field public D:Lcom/hiya/stingray/manager/g4;

.field public E:Lcom/hiya/stingray/manager/a4;

.field public F:Lcom/hiya/stingray/manager/o2;

.field public G:Lcom/hiya/stingray/manager/y2;

.field public H:Lcom/hiya/stingray/manager/s2;

.field public I:Lcom/hiya/stingray/q/d/a;

.field public J:Lcom/hiya/stingray/manager/d3;

.field public K:Ljava/lang/String;

.field private final L:Lcom/hiya/stingray/ui/local/MainActivity$b;

.field private M:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Landroidx/fragment/app/Fragment;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private N:Z

.field private O:I

.field protected P:[Lcom/hiya/stingray/ui/local/MainActivity$c;

.field private Q:Ljava/util/HashMap;

.field public r:Lcom/hiya/stingray/ui/common/error/e;

.field public s:Lcom/hiya/stingray/util/a0;

.field public t:Lcom/hiya/stingray/manager/e1;

.field public u:Lcom/hiya/stingray/manager/h4;

.field public v:Lcom/hiya/stingray/ui/local/b;

.field public w:Lcom/hiya/stingray/manager/p4/a;

.field public x:Lcom/hiya/stingray/manager/u3;

.field public y:Lcom/hiya/stingray/util/b0;

.field public z:Lcom/hiya/stingray/manager/u2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/ui/local/MainActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/ui/local/MainActivity$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/ui/local/MainActivity;->R:Lcom/hiya/stingray/ui/local/MainActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/e;-><init>()V

    .line 2
    new-instance v0, Lcom/hiya/stingray/ui/local/MainActivity$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/MainActivity$b;-><init>(Lcom/hiya/stingray/ui/local/MainActivity;)V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->L:Lcom/hiya/stingray/ui/local/MainActivity$b;

    return-void
.end method

.method public static final synthetic P(Lcom/hiya/stingray/ui/local/MainActivity;)Lcom/hiya/stingray/ui/local/MainActivity$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->L:Lcom/hiya/stingray/ui/local/MainActivity$b;

    return-object p0
.end method

.method public static final synthetic Q(Lcom/hiya/stingray/ui/local/MainActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->N:Z

    return p0
.end method

.method public static final synthetic R(Lcom/hiya/stingray/ui/local/MainActivity;)Lkotlin/w/b/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->M:Lkotlin/w/b/l;

    return-object p0
.end method

.method public static final synthetic S(Lcom/hiya/stingray/ui/local/MainActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->O:I

    return p0
.end method

.method public static final synthetic T(Lcom/hiya/stingray/ui/local/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->e0()V

    return-void
.end method

.method public static final synthetic U(Lcom/hiya/stingray/ui/local/MainActivity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->N:Z

    return-void
.end method

.method public static final synthetic V(Lcom/hiya/stingray/ui/local/MainActivity;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->O:I

    return-void
.end method

.method public static final synthetic W(Lcom/hiya/stingray/ui/local/MainActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->j0()V

    return-void
.end method

.method private final a0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->z:Lcom/hiya/stingray/manager/u2;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hiya/stingray/manager/u2$b;->APP_LAUNCH:Lcom/hiya/stingray/manager/u2$b;

    invoke-virtual {v0, p0, v1}, Lcom/hiya/stingray/manager/u2;->k(Landroid/content/Context;Lcom/hiya/stingray/manager/u2$b;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "feedbackManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final b0()Z
    .locals 12

    .line 1
    const-class v0, Lcom/hiya/stingray/manager/i2$b;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->y:Lcom/hiya/stingray/util/b0;

    const/4 v2, 0x0

    const-string v3, "sticky"

    if-eqz v1, :cond_a

    sget-object v4, Lcom/hiya/stingray/ui/local/MainActivity$d;->f:Lcom/hiya/stingray/ui/local/MainActivity$d;

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v5, v4}, Lcom/hiya/stingray/util/b0;->a(Ljava/lang/Class;ZLkotlin/w/b/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/i2$b;

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/hiya/stingray/ui/premium/NewsletterActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->y:Lcom/hiya/stingray/util/b0;

    if-eqz v1, :cond_9

    sget-object v4, Lcom/hiya/stingray/ui/local/MainActivity$e;->f:Lcom/hiya/stingray/ui/local/MainActivity$e;

    invoke-virtual {v1, v0, v5, v4}, Lcom/hiya/stingray/util/b0;->a(Ljava/lang/Class;ZLkotlin/w/b/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/i2$b;

    if-eqz v1, :cond_1

    .line 4
    const-class v1, Lcom/hiya/stingray/ui/premium/n;

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/MainActivity;->m0(Ljava/lang/Class;)V

    .line 5
    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    sget-object v4, Lcom/hiya/stingray/ui/premium/upsell/c$b;->DEFAULT:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v1, p0, v4}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->y:Lcom/hiya/stingray/util/b0;

    if-eqz v1, :cond_8

    sget-object v4, Lcom/hiya/stingray/ui/local/MainActivity$f;->f:Lcom/hiya/stingray/ui/local/MainActivity$f;

    invoke-virtual {v1, v0, v5, v4}, Lcom/hiya/stingray/util/b0;->a(Ljava/lang/Class;ZLkotlin/w/b/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/i2$b;

    if-eqz v0, :cond_2

    .line 7
    const-class v0, Lcom/hiya/stingray/ui/premium/n;

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->m0(Ljava/lang/Class;)V

    .line 8
    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->PROMO_LINK:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v0, p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 9
    :cond_2
    iget-object v6, p0, Lcom/hiya/stingray/ui/local/MainActivity;->y:Lcom/hiya/stingray/util/b0;

    if-eqz v6, :cond_7

    const-class v7, Lcom/hiya/stingray/manager/i2$b;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/hiya/stingray/util/b0;->b(Lcom/hiya/stingray/util/b0;Ljava/lang/Class;ZLkotlin/w/b/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/i2$b;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0}, Lcom/hiya/stingray/manager/i2$b;->b()Lcom/hiya/stingray/manager/i2$a;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/ui/local/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v5, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    const-class v0, Lcom/hiya/stingray/ui/u/b;

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->m0(Ljava/lang/Class;)V

    goto :goto_0

    .line 12
    :cond_4
    const-class v0, Lcom/hiya/stingray/ui/u/b;

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->m0(Ljava/lang/Class;)V

    goto :goto_0

    .line 13
    :cond_5
    const-class v0, Lcom/hiya/stingray/ui/premium/n;

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->m0(Ljava/lang/Class;)V

    :goto_0
    return v5

    :cond_6
    const/4 v0, 0x0

    return v0

    .line 14
    :cond_7
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_8
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_9
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_a
    invoke-static {v3}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->A:Lcom/hiya/stingray/manager/g3;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g3;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity;->r:Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->PAYWALL:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    invoke-virtual {v0, p0, v1}, Lcom/hiya/stingray/ui/premium/upsell/SubscriptionUpsellActivity$a;->a(Landroid/content/Context;Lcom/hiya/stingray/ui/premium/upsell/c$b;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->O:I

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->d0()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->g0()V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->a0()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_3
    return-void

    :cond_4
    const-string v0, "paywallManager"

    .line 7
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final d0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->x:Lcom/hiya/stingray/manager/u3;

    const-string v1, "premiumManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->I()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->w:Lcom/hiya/stingray/manager/p4/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/p4/a;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->x:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->Q()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->x:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->x:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->J()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->x:Lcom/hiya/stingray/manager/u3;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/u3;->d0(Z)V

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/hiya/stingray/ui/premium/PremiumUpgradeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 4
    :cond_0
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string v0, "upgradeManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method

.method private final e0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->b0()Z

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->t:Lcom/hiya/stingray/manager/e1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "main_view"

    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->B:Lcom/hiya/stingray/manager/x3;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/hiya/stingray/manager/x3$c;->MAIN_ACTIVITY:Lcom/hiya/stingray/manager/x3$c;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->i(Lcom/hiya/stingray/manager/x3$c;)V

    return-void

    :cond_0
    const-string v0, "remoteConfigManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "analyticsManager"

    .line 4
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final g0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->L:Lcom/hiya/stingray/ui/local/MainActivity$b;

    sget v1, Lcom/hiya/stingray/o;->H2:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    const-string v2, "pager"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/MainActivity$b;->u(I)Lcom/hiya/stingray/ui/local/common/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/g;->o1()V

    :cond_0
    return-void
.end method

.method private final h0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->F:Lcom/hiya/stingray/manager/o2;

    const-string v1, "deviceUserInfoManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->r()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 3
    invoke-static {p0, v0}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 4
    invoke-static {p0}, Lcom/hiya/stingray/util/p;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/String;

    .line 5
    iget-object v6, p0, Lcom/hiya/stingray/ui/local/MainActivity;->K:Ljava/lang/String;

    if-eqz v6, :cond_4

    aput-object v6, v5, v3

    invoke-static {v0, v5}, Lcom/hiya/stingray/util/y;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "PhoneNumberUtil.formatPh\u2026nformattedNumber, simIso)"

    invoke-static {v0, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_6

    .line 7
    iget-object v3, p0, Lcom/hiya/stingray/ui/local/MainActivity;->F:Lcom/hiya/stingray/manager/o2;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Lcom/hiya/stingray/manager/o2;->P(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string v0, "simIso"

    .line 8
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_5
    invoke-static {v1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_2
    return-void
.end method

.method private final j0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->J:Lcom/hiya/stingray/manager/d3;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/hiya/stingray/manager/d3$b;->RECOMMENDED:Lcom/hiya/stingray/manager/d3$b;

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/manager/d3;->a(Lcom/hiya/stingray/manager/d3$b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->I:Lcom/hiya/stingray/q/d/a;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/q/d/a;->o0(J)V

    goto :goto_0

    :cond_0
    const-string v0, "commonSharedPreferences"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "onBoardingManager"

    .line 3
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private final k0(I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 3
    sget v5, Lcom/hiya/stingray/o;->n4:I

    invoke-virtual {p0, v5}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {v4}, Lcom/hiya/stingray/ui/local/MainActivity$c;->b()I

    move-result v6

    invoke-virtual {v4}, Lcom/hiya/stingray/ui/local/MainActivity$c;->c()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4}, Lcom/hiya/stingray/ui/local/MainActivity$c;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v7, v4}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->d(ILjava/lang/Integer;Ljava/lang/Integer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lcom/hiya/stingray/o;->n4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    new-instance v3, Lcom/hiya/stingray/ui/local/MainActivity$i;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/local/MainActivity$i;-><init>(Lcom/hiya/stingray/ui/local/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->setSelectedCallback(Lkotlin/w/b/p;)V

    .line 5
    invoke-static {p0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    new-instance v3, Lcom/hiya/stingray/ui/local/MainActivity$j;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/ui/local/MainActivity$j;-><init>(Lcom/hiya/stingray/ui/local/MainActivity;)V

    invoke-virtual {v1, v3}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->setLongPressedCallback(Lkotlin/w/b/l;)V

    .line 7
    :cond_1
    sget v1, Lcom/hiya/stingray/o;->H2:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    invoke-virtual {v1, p1, v2}, Landroidx/viewpager/widget/ViewPager;->N(IZ)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->setSelectedIndex(I)V

    return-void
.end method

.method public static final l0(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/hiya/stingray/ui/local/MainActivity;->R:Lcom/hiya/stingray/ui/local/MainActivity$a;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/ui/local/MainActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method private final n0()V
    .locals 7

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->B:Lcom/hiya/stingray/manager/x3;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v3, "settings_warning_dot_days"

    invoke-virtual {v1, v3}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 2
    iget-object v3, p0, Lcom/hiya/stingray/ui/local/MainActivity;->I:Lcom/hiya/stingray/q/d/a;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/hiya/stingray/q/d/a;->B()J

    move-result-wide v3

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    cmp-long v3, v5, v0

    if-lez v3, :cond_3

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->J:Lcom/hiya/stingray/manager/d3;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/hiya/stingray/manager/d3$b;->RECOMMENDED:Lcom/hiya/stingray/manager/d3$b;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/d3;->a(Lcom/hiya/stingray/manager/d3$b;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    sget v0, Lcom/hiya/stingray/o;->n4:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    .line 7
    aget-object v4, v1, v2

    .line 8
    invoke-virtual {v4}, Lcom/hiya/stingray/ui/local/MainActivity$c;->a()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/hiya/stingray/ui/local/settings/n;

    invoke-static {v4, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->e(IZ)V

    goto :goto_2

    :cond_2
    const-string v0, "onBoardingManager"

    .line 9
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_2
    return-void

    :cond_4
    const-string v0, "commonSharedPreferences"

    .line 10
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string v0, "remoteConfigManager"

    .line 11
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public N()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public O(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->Q:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->Q:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->Q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->Q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public X()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->r:Lcom/hiya/stingray/ui/common/error/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/hiya/stingray/ui/local/MainActivity;->s:Lcom/hiya/stingray/util/a0;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->L()Li/c/b0/b/v;

    move-result-object v3

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/e;->getSupportFragmentManager()Landroidx/fragment/app/n;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/hiya/stingray/t/e1/a;

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/ui/common/error/e;->h(Lcom/hiya/stingray/util/a0;Li/c/b0/b/v;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Class;)Li/c/b0/c/c;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void

    :cond_0
    const-string v0, "rxEventBus"

    .line 5
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "uiErrorHandlingHelper"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public final Y()Lcom/hiya/stingray/manager/e1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->t:Lcom/hiya/stingray/manager/e1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analyticsManager"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->P:[Lcom/hiya/stingray/ui/local/MainActivity$c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "features"

    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public a(Lcom/hiya/stingray/exception/a;)V
    .locals 1

    const-string v0, "apiErrorType"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->u:Lcom/hiya/stingray/manager/h4;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/hiya/stingray/ui/common/e;->B(Lcom/hiya/stingray/exception/a;Lcom/hiya/stingray/manager/h4;)V

    .line 2
    sget p1, Lcom/hiya/stingray/o;->B1:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "userAccountManager"

    .line 3
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final f0(Landroidx/fragment/app/Fragment;)V
    .locals 5

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->L:Lcom/hiya/stingray/ui/local/MainActivity$b;

    sget v1, Lcom/hiya/stingray/o;->H2:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    const-string v3, "pager"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/ui/local/MainActivity$b;->u(I)Lcom/hiya/stingray/ui/local/common/g;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/hiya/stingray/ui/local/common/g;->i1(Ljava/lang/Class;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->L:Lcom/hiya/stingray/ui/local/MainActivity$b;

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    invoke-static {v1, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/MainActivity$b;->u(I)Lcom/hiya/stingray/ui/local/common/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v2, v2}, Lcom/hiya/stingray/ui/local/common/g;->m1(Landroidx/fragment/app/Fragment;ZZ)V

    :cond_1
    return-void
.end method

.method protected i0([Lcom/hiya/stingray/ui/local/MainActivity$c;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->P:[Lcom/hiya/stingray/ui/local/MainActivity$c;

    return-void
.end method

.method public final m0(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/hiya/stingray/ui/common/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragmentClass"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_1

    .line 3
    aget-object v5, v0, v3

    .line 4
    invoke-virtual {v5}, Lcom/hiya/stingray/ui/local/MainActivity$c;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-eq v3, v4, :cond_2

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->L:Lcom/hiya/stingray/ui/local/MainActivity$b;

    invoke-virtual {p1, v3}, Lcom/hiya/stingray/ui/local/MainActivity$b;->v(I)V

    .line 6
    sget p1, Lcom/hiya/stingray/o;->H2:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    invoke-virtual {p1, v3, v2}, Landroidx/viewpager/widget/ViewPager;->N(IZ)V

    .line 7
    sget p1, Lcom/hiya/stingray/o;->n4:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;

    invoke-virtual {p1, v3}, Lcom/hiya/stingray/ui/local/common/NavigationTabBar;->setSelectedIndex(I)V

    goto :goto_2

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "fragmentClass must be part of features array"

    invoke-static {p1, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->L:Lcom/hiya/stingray/ui/local/MainActivity$b;

    sget v1, Lcom/hiya/stingray/o;->H2:I

    invoke-virtual {p0, v1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    const-string v2, "pager"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/local/MainActivity$b;->u(I)Lcom/hiya/stingray/ui/local/common/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/common/g;->j1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->z()Lcom/hiya/stingray/s/d/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/a;->r(Lcom/hiya/stingray/ui/local/MainActivity;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->v:Lcom/hiya/stingray/ui/local/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/ui/local/b;->a()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->i0([Lcom/hiya/stingray/ui/local/MainActivity$c;)V

    const v0, 0x7f0c00bd

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/c;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string v0, "selected_page_num"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity;->k0(I)V

    .line 6
    new-instance p1, Lcom/hiya/stingray/ui/local/MainActivity$g;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/local/MainActivity$g;-><init>(Lcom/hiya/stingray/ui/local/MainActivity;)V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/MainActivity;->M:Lkotlin/w/b/l;

    .line 7
    sget p1, Lcom/hiya/stingray/o;->H2:I

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    const-string v1, "pager"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->Z()[Lcom/hiya/stingray/ui/local/MainActivity$c;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->L:Lcom/hiya/stingray/ui/local/MainActivity$b;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    return-void

    :cond_1
    const-string p1, "fragmentProvider"

    .line 9
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/e;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/hiya/stingray/ui/common/e;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->n0()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->s:Lcom/hiya/stingray/util/a0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    const-class v2, Lcom/hiya/stingray/ui/local/e/b$a;

    invoke-virtual {v0, v2}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 5
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    .line 6
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->observeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v0

    const-wide/16 v2, 0x1

    .line 7
    invoke-virtual {v0, v2, v3}, Li/c/b0/b/v;->take(J)Li/c/b0/b/v;

    move-result-object v0

    .line 8
    new-instance v2, Lcom/hiya/stingray/ui/local/MainActivity$h;

    invoke-direct {v2, p0}, Lcom/hiya/stingray/ui/local/MainActivity$h;-><init>(Lcom/hiya/stingray/ui/local/MainActivity;)V

    invoke-virtual {v0, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/common/e;->A()Li/c/b0/c/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->E:Lcom/hiya/stingray/manager/a4;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->e()V

    .line 11
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/MainActivity;->D:Lcom/hiya/stingray/manager/g4;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/g4;->f(Z)V

    .line 12
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->h0()V

    .line 13
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->X()V

    .line 14
    invoke-direct {p0}, Lcom/hiya/stingray/ui/local/MainActivity;->c0()V

    return-void

    :cond_0
    const-string v0, "tokenManager"

    .line 15
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "selectManager"

    .line 16
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "rxEventBus"

    .line 17
    invoke-static {v0}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/c;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    sget v0, Lcom/hiya/stingray/o;->H2:I

    invoke-virtual {p0, v0}, Lcom/hiya/stingray/ui/local/MainActivity;->O(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/ui/local/common/SwipeViewPager;

    const-string v1, "pager"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    const-string v1, "selected_page_num"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
