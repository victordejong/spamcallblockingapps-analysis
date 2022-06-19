.class public final Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->a:I

    iput-object p2, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "support@truecaller.com"

    .line 3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incompatible Version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->b:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;

    .line 5
    iget-object v3, v3, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;->e:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    if-eqz p1, :cond_1

    const-string v0, "email"

    .line 10
    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 11
    iget-object p1, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;

    sget v0, Lcom/truecaller/forcedupdate/ui/R$string;->StrCopiedToClipboard:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "appVersionName"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    throw v0

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;

    .line 15
    iget-object v1, p1, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;->d:Le/a/x3/a;

    if-eqz v1, :cond_5

    const-string v2, "resourceBrokenUpdate"

    .line 16
    invoke-interface {v1, p1, v0, v2}, Le/a/x3/a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/forcedupdate/ui/SimpleForceUpdateActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    const-string p1, "appUpdateActionHelper"

    .line 18
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
