.class public final Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$AddressResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AddressResultReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$AddressResultReceiver;->a:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    const-string p1, "resultData"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity$AddressResultReceiver;->a:Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->ta()Le/a/y/a/e/b;

    move-result-object p1

    invoke-interface {p1, p2}, Le/a/y/a/e/b;->V0(Landroid/os/Bundle;)V

    return-void
.end method
