.class public Lcom/criteo/publisher/CriteoInterstitialActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/q1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/CriteoInterstitialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/criteo/publisher/CriteoInterstitialActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/criteo/publisher/CriteoInterstitialActivity$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/CriteoInterstitialActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->a(Lcom/criteo/publisher/CriteoInterstitialActivity;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/CriteoInterstitialActivity;

    if-eqz v0, :cond_0

    .line 2
    sget v1, Lcom/criteo/publisher/CriteoInterstitialActivity;->f:I

    const/16 v1, 0xca

    const-string v2, "Action"

    .line 3
    invoke-static {v2, v1}, Le/d/c/a/a;->M0(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 4
    iget-object v2, v0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
