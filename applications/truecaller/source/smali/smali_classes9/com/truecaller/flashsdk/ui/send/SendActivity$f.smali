.class public final Lcom/truecaller/flashsdk/ui/send/SendActivity$f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/send/SendActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/send/SendActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/send/SendActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$f;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/send/SendActivity$f;->a:Lcom/truecaller/flashsdk/ui/send/SendActivity;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p1

    check-cast p1, Le/a/y/a/j/t;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/a/j/t;->m(Landroid/os/Bundle;)V

    return-void
.end method
