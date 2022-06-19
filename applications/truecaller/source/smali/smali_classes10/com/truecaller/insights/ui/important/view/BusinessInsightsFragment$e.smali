.class public final Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$e;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment$e;->a:Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 2
    iget-object v0, p1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->c:Le/a/c/b/h;

    const-string v1, "insightsPermissionHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Le/a/c/b/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->c:Le/a/c/b/h;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Le/a/c/b/h;->h()Z

    move-result v0

    const-string v3, "grant_permission"

    const-string v4, "view"

    const-string v5, "eventCategory"

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->c:Le/a/c/b/h;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Le/a/c/b/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object v0

    const-string v1, "default_sms"

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1, v4, v3}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->d:Le/a/c/h/f;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "context ?: return"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/c/h/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xc

    .line 8
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    const-string p1, "insightsSmsIntents"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 10
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object v0

    const-string v6, "read_sms"

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, v6, v4, v3}, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->c:Le/a/c/b/h;

    if-eqz v0, :cond_6

    .line 15
    invoke-interface {v0}, Le/a/c/b/h;->a()[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    .line 16
    invoke-interface {v0, p1, v1, v2}, Le/a/c/b/h;->d(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_7
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_8
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
