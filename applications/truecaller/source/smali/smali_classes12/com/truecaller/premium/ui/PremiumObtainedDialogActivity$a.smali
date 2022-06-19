.class public final Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$a;
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


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$a;->a:Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity$a;->a:Lcom/truecaller/premium/ui/PremiumObtainedDialogActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
