.class public final Lcom/hiya/stingray/ui/local/settings/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/manager/e1;

.field private final b:Lcom/hiya/stingray/manager/o2;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/manager/o2;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserAccountManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/settings/b;->a:Lcom/hiya/stingray/manager/e1;

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/settings/b;->b:Lcom/hiya/stingray/manager/o2;

    return-void
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/b;->a:Lcom/hiya/stingray/manager/e1;

    invoke-static {p1, p2}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object p1

    invoke-static {p1}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/manager/e1;->f(Ljava/util/Map;)V

    return-void
.end method

.method private final i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/settings/b;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    new-instance v1, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v1}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    .line 3
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v1, p2}, Lcom/hiya/stingray/util/g0/c$a;->n(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string p2, "apply_setting"

    .line 6
    invoke-virtual {v0, p2, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "block"

    goto :goto_0

    :cond_0
    const-string p2, "warn"

    :goto_0
    const-string v0, "fraud_calls"

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/hiya/stingray/ui/local/settings/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/settings/b;->b:Lcom/hiya/stingray/manager/o2;

    invoke-static {p2, p1}, Lcom/hiya/stingray/util/g;->b(Lcom/hiya/stingray/manager/o2;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AnalyticsUtil.getBlockCa\u2026rAccountManager, context)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block_calls"

    invoke-direct {p0, p2, p1}, Lcom/hiya/stingray/ui/local/settings/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "show_caller_id"

    goto :goto_0

    :cond_0
    const-string p1, "do_nothing"

    :goto_0
    const-string v0, "other_incoming_calls"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/local/settings/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/b;->b:Lcom/hiya/stingray/manager/o2;

    invoke-static {p1}, Lcom/hiya/stingray/util/g;->c(Lcom/hiya/stingray/manager/o2;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnalyticsUtil.getIdCalls\u2026deviceUserAccountManager)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id_calls"

    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/local/settings/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "show_caller_id"

    goto :goto_0

    :cond_0
    const-string p1, "do_nothing"

    :goto_0
    const-string v0, "outgoing_calls"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/local/settings/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/b;->b:Lcom/hiya/stingray/manager/o2;

    invoke-static {p1}, Lcom/hiya/stingray/util/g;->c(Lcom/hiya/stingray/manager/o2;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnalyticsUtil.getIdCalls\u2026deviceUserAccountManager)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id_calls"

    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/local/settings/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "block"

    goto :goto_0

    :cond_0
    const-string p2, "warn"

    :goto_0
    const-string v0, "private_calls"

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/hiya/stingray/ui/local/settings/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/settings/b;->b:Lcom/hiya/stingray/manager/o2;

    invoke-static {p2, p1}, Lcom/hiya/stingray/util/g;->b(Lcom/hiya/stingray/manager/o2;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AnalyticsUtil.getBlockCa\u2026rAccountManager, context)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block_calls"

    invoke-direct {p0, p2, p1}, Lcom/hiya/stingray/ui/local/settings/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "show_caller_id"

    goto :goto_0

    :cond_0
    const-string p1, "do_nothing"

    :goto_0
    const-string v0, "saved_contacts"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/local/settings/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/settings/b;->b:Lcom/hiya/stingray/manager/o2;

    invoke-static {p1}, Lcom/hiya/stingray/util/g;->c(Lcom/hiya/stingray/manager/o2;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnalyticsUtil.getIdCalls\u2026deviceUserAccountManager)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id_calls"

    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/local/settings/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "show_caller_id"

    goto :goto_0

    :cond_0
    const-string p1, "do_nothing"

    :goto_0
    const-string v0, "screened_calls"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/hiya/stingray/ui/local/settings/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "block"

    goto :goto_0

    :cond_0
    const-string p2, "warn"

    :goto_0
    const-string v0, "spam_calls"

    .line 1
    invoke-direct {p0, v0, p2}, Lcom/hiya/stingray/ui/local/settings/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/ui/local/settings/b;->b:Lcom/hiya/stingray/manager/o2;

    invoke-static {p2, p1}, Lcom/hiya/stingray/util/g;->b(Lcom/hiya/stingray/manager/o2;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AnalyticsUtil.getBlockCa\u2026rAccountManager, context)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block_calls"

    invoke-direct {p0, p2, p1}, Lcom/hiya/stingray/ui/local/settings/b;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
