.class final Lcom/hiya/stingray/ui/setting/DebugActivity$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->w0()V
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

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$m;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$m;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$m;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    const-class v2, Lcom/hiya/stingray/ui/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget-object v1, Lcom/hiya/stingray/manager/i2$a;->UPSELL_PROMO:Lcom/hiya/stingray/manager/i2$a;

    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$m;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/i2$a;->getUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
