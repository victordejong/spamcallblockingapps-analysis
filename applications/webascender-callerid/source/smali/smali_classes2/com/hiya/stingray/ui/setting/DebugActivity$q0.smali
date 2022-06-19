.class final Lcom/hiya/stingray/ui/setting/DebugActivity$q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$q0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$q0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->n0()Lcom/hiya/stingray/manager/v3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/v3;->d()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$q0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$q0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    const-class v2, Lcom/hiya/stingray/ui/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$q0;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    sget v2, Lcom/hiya/stingray/o;->c3:I

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "promoPremiumDuration"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/c0/m;->k(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3

    .line 4
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "promo_premium_duration"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "promo_premium_token"

    const-string v2, "7d8hA3Yx4GE5FQl710YaEo6r95YUTZrg"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
