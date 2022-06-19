.class public final Le/d/a/a/c0;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Le/d/a/a/q;

.field public b:Z

.field public final synthetic c:Le/d/a/a/d0;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/d0;Le/d/a/a/q;)V
    .locals 0

    iput-object p1, p0, Le/d/a/a/c0;->c:Le/d/a/a/d0;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Le/d/a/a/c0;->a:Le/d/a/a/q;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "BillingBroadcastManager"

    .line 1
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/play_billing/zza;->zzg(Landroid/content/Intent;Ljava/lang/String;)Le/d/a/a/k;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/zza;->zzi(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Le/d/a/a/c0;->a:Le/d/a/a/q;

    .line 3
    invoke-interface {v0, p1, p2}, Le/d/a/a/q;->onPurchasesUpdated(Le/d/a/a/k;Ljava/util/List;)V

    return-void
.end method
