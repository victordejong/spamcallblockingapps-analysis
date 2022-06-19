.class public Lcom/hiya/stingray/manager/g3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/g3$c;,
        Lcom/hiya/stingray/manager/g3$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/u3;

.field private final c:Lcom/hiya/stingray/manager/x3;

.field private final d:Lcom/hiya/stingray/manager/p4/a;

.field private final e:Lcom/hiya/stingray/q/d/a;

.field private final f:Lcom/hiya/stingray/util/a0;

.field private final g:Lcom/hiya/stingray/manager/i1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/p4/a;Lcom/hiya/stingray/q/d/a;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/i1;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfigManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upgradeManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferences"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appSettingsManager"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/g3;->b:Lcom/hiya/stingray/manager/u3;

    iput-object p3, p0, Lcom/hiya/stingray/manager/g3;->c:Lcom/hiya/stingray/manager/x3;

    iput-object p4, p0, Lcom/hiya/stingray/manager/g3;->d:Lcom/hiya/stingray/manager/p4/a;

    iput-object p5, p0, Lcom/hiya/stingray/manager/g3;->e:Lcom/hiya/stingray/q/d/a;

    iput-object p6, p0, Lcom/hiya/stingray/manager/g3;->f:Lcom/hiya/stingray/util/a0;

    iput-object p7, p0, Lcom/hiya/stingray/manager/g3;->g:Lcom/hiya/stingray/manager/i1;

    .line 2
    const-class p1, Lcom/hiya/stingray/manager/u3$h;

    invoke-virtual {p6, p1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/hiya/stingray/s/b;

    invoke-direct {p2}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/hiya/stingray/manager/g3$a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/g3$a;-><init>(Lcom/hiya/stingray/manager/g3;)V

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->c()Lcom/hiya/stingray/manager/g3$b;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/g3$b;->ALL_USERS:Lcom/hiya/stingray/manager/g3$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->c()Lcom/hiya/stingray/manager/g3$b;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/g3$b;->NEW_USERS:Lcom/hiya/stingray/manager/g3$b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->h()Lcom/hiya/stingray/manager/g3$c;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/g3$c;->NEW:Lcom/hiya/stingray/manager/g3$c;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->b:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->b:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->f()Lcom/hiya/stingray/manager/g3$b;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/g3$b;->ALL_USERS:Lcom/hiya/stingray/manager/g3$b;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->f()Lcom/hiya/stingray/manager/g3$b;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/g3$b;->NEW_USERS:Lcom/hiya/stingray/manager/g3$b;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->h()Lcom/hiya/stingray/manager/g3$c;

    move-result-object v0

    sget-object v1, Lcom/hiya/stingray/manager/g3$c;->NEW:Lcom/hiya/stingray/manager/g3$c;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->b:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->b:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c()Lcom/hiya/stingray/manager/g3$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->OFF:Lcom/hiya/stingray/manager/g3$b;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->c:Lcom/hiya/stingray/manager/x3;

    const-string v1, "premium_paywall"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    const v2, 0x7f11025f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->OFF:Lcom/hiya/stingray/manager/g3$b;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    const v2, 0x7f11025e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->NEW_USERS:Lcom/hiya/stingray/manager/g3$b;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    const v2, 0x7f11025d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->ALL_USERS:Lcom/hiya/stingray/manager/g3$b;

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->OFF:Lcom/hiya/stingray/manager/g3$b;

    :goto_0
    return-object v0
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->e:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->C()Z

    move-result v0

    return v0
.end method

.method public final f()Lcom/hiya/stingray/manager/g3$b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->OFF:Lcom/hiya/stingray/manager/g3$b;

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->c:Lcom/hiya/stingray/manager/x3;

    const-string v1, "premium_soft_paywall"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    const v2, 0x7f11025f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->OFF:Lcom/hiya/stingray/manager/g3$b;

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    const v2, 0x7f11025e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->NEW_USERS:Lcom/hiya/stingray/manager/g3$b;

    goto :goto_0

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    const v2, 0x7f11025d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->ALL_USERS:Lcom/hiya/stingray/manager/g3$b;

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lcom/hiya/stingray/manager/g3$b;->NEW_USERS:Lcom/hiya/stingray/manager/g3$b;

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public final h()Lcom/hiya/stingray/manager/g3$c;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->e:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->t()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    .line 2
    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hiya/stingray/manager/g3$c;->valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/g3$c;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PayWallManager should be initialized before getting userType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->e:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->t()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->e:Lcom/hiya/stingray/q/d/a;

    iget-object v1, p0, Lcom/hiya/stingray/manager/g3;->d:Lcom/hiya/stingray/manager/p4/a;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/p4/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/hiya/stingray/manager/g3$c;->EXISTING:Lcom/hiya/stingray/manager/g3$c;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/hiya/stingray/manager/g3$c;->NEW:Lcom/hiya/stingray/manager/g3$c;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/a;->g0(Ljava/lang/String;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->k()V

    return-void
.end method

.method public final j(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->e:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/d/a;->q0(Z)V

    return-void
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g3;->a:Landroid/content/Context;

    const-class v1, Lcom/hiya/client/callerid/ui/CallEventReceiver;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g3;->a()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/hiya/stingray/manager/g3;->g:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/i1;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/hiya/stingray/util/h;->c(Landroid/content/Context;Ljava/lang/Class;Z)V

    return-void
.end method
