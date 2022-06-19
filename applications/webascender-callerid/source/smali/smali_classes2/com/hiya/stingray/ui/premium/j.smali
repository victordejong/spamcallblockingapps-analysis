.class public final Lcom/hiya/stingray/ui/premium/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/manager/e1;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/j;->a:Lcom/hiya/stingray/manager/e1;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/j;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "auto_block_scam"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 4
    :goto_0
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->n(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "premium_tab"

    .line 5
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "apply_setting"

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/j;->a:Lcom/hiya/stingray/manager/e1;

    .line 2
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v1

    const-string v2, "auto_block_nuisance"

    .line 3
    invoke-virtual {v1, v2}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    if-eqz p1, :cond_0

    const-string p1, "on"

    goto :goto_0

    :cond_0
    const-string p1, "off"

    .line 4
    :goto_0
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->n(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string p1, "premium_tab"

    .line 5
    invoke-virtual {v1, p1}, Lcom/hiya/stingray/util/g0/c$a;->k(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    invoke-virtual {v1}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string v1, "apply_setting"

    .line 7
    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/j;->a:Lcom/hiya/stingray/manager/e1;

    const-string v1, "premium_tab"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/hiya/stingray/util/f;->c(Lcom/hiya/stingray/manager/e1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
