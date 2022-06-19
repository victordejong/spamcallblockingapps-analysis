.class final Lcom/hiya/stingray/ui/premium/i$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/premium/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Lcom/hiya/stingray/ui/stats/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/premium/i;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/premium/i;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/premium/i$g;->a:Lcom/hiya/stingray/ui/premium/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/ui/stats/c$a;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/premium/i$g;->b(Lcom/hiya/stingray/ui/stats/c$a;)V

    return-void
.end method

.method public final b(Lcom/hiya/stingray/ui/stats/c$a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/premium/i$g;->a:Lcom/hiya/stingray/ui/premium/i;

    sget v1, Lcom/hiya/stingray/o;->O4:I

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/ui/premium/i;->f1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "viewStats"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hiya/stingray/ui/premium/i$g;->a:Lcom/hiya/stingray/ui/premium/i;

    invoke-virtual {v1}, Lcom/hiya/stingray/ui/premium/i;->i1()Lcom/hiya/stingray/manager/s2;

    move-result-object v1

    sget-object v2, Lcom/hiya/stingray/manager/s2$c;->BLOCKED_CALL_STATS:Lcom/hiya/stingray/manager/s2$c;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/hiya/stingray/manager/s2;->r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Integer;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->e()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/stats/c$a;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v1}, Lkotlin/s/e;->A([Ljava/lang/Integer;)I

    move-result p1

    int-to-long v4, p1

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/premium/i$g;->a:Lcom/hiya/stingray/ui/premium/i;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/premium/i;->k1()Lcom/hiya/stingray/manager/x3;

    move-result-object p1

    const-string v1, "blocked_call_stats_min_count"

    invoke-virtual {p1, v1}, Lcom/hiya/stingray/manager/x3;->l(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-ltz p1, :cond_0

    const/4 v3, 0x1

    .line 4
    :cond_0
    invoke-static {v0, v3}, Lcom/hiya/stingray/util/e0;->z(Landroid/view/View;Z)V

    return-void
.end method
