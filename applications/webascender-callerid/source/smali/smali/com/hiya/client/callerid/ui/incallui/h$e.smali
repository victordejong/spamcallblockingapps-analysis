.class final Lcom/hiya/client/callerid/ui/incallui/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/h;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "Lcom/hiya/client/callerid/ui/d$g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/h;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/h;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/h$e;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/client/callerid/ui/d$g;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/h$e;->b(Lcom/hiya/client/callerid/ui/d$g;)V

    return-void
.end method

.method public final b(Lcom/hiya/client/callerid/ui/d$g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$e;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/incallui/h;->e1(Lcom/hiya/client/callerid/ui/incallui/h;)Lcom/hiya/client/callerid/ui/incallui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/incallui/l;->o()Landroidx/lifecycle/t;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/callerid/ui/a0/c$b;

    if-eqz v0, :cond_3

    .line 2
    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->ADD_CONTACT:Lcom/hiya/client/callerid/ui/d$g;

    const-string v2, "requireContext()"

    const/high16 v3, 0x10000000

    if-ne p1, v1, :cond_1

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.dir/contact"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "phone"

    .line 7
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->c()Lcom/hiya/client/callerid/ui/b0/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/e;->a()Lg/g/b/c/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "name"

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$e;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$e;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 12
    :cond_1
    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->MESSAGE:Lcom/hiya/client/callerid/ui/d$g;

    if-ne p1, v1, :cond_2

    .line 13
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smsto:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 16
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$e;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$e;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 18
    :cond_2
    sget-object v1, Lcom/hiya/client/callerid/ui/d$g;->REDIAL:Lcom/hiya/client/callerid/ui/d$g;

    if-ne p1, v1, :cond_3

    .line 19
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/a0/c$b;->n()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$e;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/h$e;->a:Lcom/hiya/client/callerid/ui/incallui/h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method
