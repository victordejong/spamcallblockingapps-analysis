.class public final Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$b;->a:Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;

    iput-object p2, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$b;->a:Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;

    const v0, 0x7f12036b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$b;->a:Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;

    const v2, 0x7f1206ba

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$b;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2
    invoke-static/range {v1 .. v6}, Le/a/b0/q/g0;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;Ljava/lang/String;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
