.class final Lcom/hiya/stingray/ui/login/verification/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/login/verification/g;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/login/verification/g;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/login/verification/g;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/login/verification/g$b;->f:Lcom/hiya/stingray/ui/login/verification/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/g$b;->f:Lcom/hiya/stingray/ui/login/verification/g;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/hiya/stingray/ui/login/verification/g;->h1(Lcom/hiya/stingray/ui/login/verification/g;Z)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/g$b;->f:Lcom/hiya/stingray/ui/login/verification/g;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/g;->i1()Lcom/hiya/stingray/ui/login/verification/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/i;->c()V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/g$b;->f:Lcom/hiya/stingray/ui/login/verification/g;

    invoke-static {p1}, Lcom/hiya/stingray/ui/login/verification/g;->g1(Lcom/hiya/stingray/ui/login/verification/g;)Lcom/hiya/stingray/ui/login/verification/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/login/verification/e;->k()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "android.intent.action.VIEW"

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "com.webascender.callerid"

    .line 4
    iget-object v1, p0, Lcom/hiya/stingray/ui/login/verification/g$b;->f:Lcom/hiya/stingray/ui/login/verification/g;

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://play.google.com/store/account/subscriptions?sku="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hiya/stingray/ui/login/verification/g$b;->f:Lcom/hiya/stingray/ui/login/verification/g;

    invoke-static {v4}, Lcom/hiya/stingray/ui/login/verification/g;->g1(Lcom/hiya/stingray/ui/login/verification/g;)Lcom/hiya/stingray/ui/login/verification/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/hiya/stingray/ui/login/verification/e;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/hiya/stingray/ui/login/verification/g$b;->f:Lcom/hiya/stingray/ui/login/verification/g;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://play.google.com/store/account?utm_source=google&utm_medium=account&utm_campaign=my-account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v6, Landroidx/appcompat/app/b$a;

    iget-object v0, p0, Lcom/hiya/stingray/ui/login/verification/g$b;->f:Lcom/hiya/stingray/ui/login/verification/g;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {v6, v0}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/util/e0;->c(Landroidx/appcompat/app/b$a;Ljava/lang/Integer;Ljava/lang/Integer;ZILjava/lang/Object;)Landroidx/appcompat/app/b$a;

    invoke-virtual {v6}, Landroidx/appcompat/app/b$a;->a()Landroidx/appcompat/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 7
    invoke-static {p1}, Lr/a/a;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 8
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
