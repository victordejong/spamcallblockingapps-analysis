.class public final Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$c;->a:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$c;->a:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;

    .line 2
    sget-object v0, Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity;->d:Lcom/truecaller/bizmon/ui/profile/BusinessProfileOnboardingActivity$b;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "arg_from_wizard"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "arg_migrating"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "context"

    .line 5
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7
    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "arg_editing"

    .line 8
    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9
    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x2000000

    .line 10
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
