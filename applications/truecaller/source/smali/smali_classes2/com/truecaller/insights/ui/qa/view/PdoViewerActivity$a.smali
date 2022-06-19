.class public final Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput p1, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;->a:I

    iput-object p2, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->f:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    const-string v1, "context"

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "address"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/insights/ui/qa/view/InsightsQAActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "qaPageToOpen"

    const-string v3, "InsightsAddressFiltersFragment"

    .line 7
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extras_param"

    .line 8
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 10
    throw p1

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    .line 12
    sget v0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->h:I

    const-string v0, "clipboard"

    .line 13
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipboardManager;

    .line 14
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->pa()Le/a/c/a/g/d;

    move-result-object p1

    iget-object p1, p1, Le/a/c/a/g/d;->e:Landroid/widget/TextView;

    const-string v1, "binding.result"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v1, "Pdo"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 16
    iget-object p1, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    const/4 v0, 0x0

    const-string v1, "Copied"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
