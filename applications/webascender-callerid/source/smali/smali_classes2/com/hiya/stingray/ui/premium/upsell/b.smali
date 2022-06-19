.class public Lcom/hiya/stingray/ui/premium/upsell/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/hiya/stingray/ui/premium/upsell/c$b;

.field private final b:Lcom/hiya/stingray/manager/e1;

.field private final c:Lcom/hiya/stingray/manager/k1;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/manager/k1;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appsFlyerManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->c:Lcom/hiya/stingray/manager/k1;

    .line 2
    sget-object p1, Lcom/hiya/stingray/ui/premium/upsell/c$b;->TAB:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->a:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancel"

    invoke-static {v0, v2, v1}, Lcom/hiya/stingray/util/f;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->a:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    sget-object v1, Lcom/hiya/stingray/ui/premium/upsell/a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "premium_interstitial"

    goto :goto_0

    :cond_0
    const-string v0, "paywall"

    goto :goto_0

    :cond_1
    const-string v0, "premium_tab_upsell"

    :goto_0
    return-object v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "help"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_action"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "required_permission_deny"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_prompt_action"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "required_permission_allow"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_prompt_action"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v2, "permission_prompt"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "required_permission"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_prompt_view"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final g()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "restore_purchase"

    .line 2
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v1

    const-string v2, "user_action"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final h(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/b;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p1, "trial"

    goto :goto_0

    :cond_0
    const-string p1, "subscribe"

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/hiya/stingray/util/f;->b(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    const/4 v0, 0x0

    const-string v1, "upsell_view"

    invoke-virtual {p1, v1, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->c:Lcom/hiya/stingray/manager/k1;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hiya/stingray/manager/k1;->i(Ljava/lang/String;)V

    return-void
.end method

.method public final i(Lcom/hiya/stingray/ui/premium/upsell/c$b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->a:Lcom/hiya/stingray/ui/premium/upsell/c$b;

    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/upsell/b;->b:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p0}, Lcom/hiya/stingray/ui/premium/upsell/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "terms_of_use"

    invoke-static {v0, v2, v1}, Lcom/hiya/stingray/util/f;->a(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
