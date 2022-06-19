.class public final Le/d/a/a/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/d/a/a/c0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/d/a/a/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/d0;->a:Landroid/content/Context;

    new-instance p1, Le/d/a/a/c0;

    .line 1
    invoke-direct {p1, p0, p2}, Le/d/a/a/c0;-><init>(Le/d/a/a/d0;Le/d/a/a/q;)V

    iput-object p1, p0, Le/d/a/a/d0;->b:Le/d/a/a/c0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Le/d/a/a/d0;->b:Le/d/a/a/c0;

    iget-object v1, p0, Le/d/a/a/d0;->a:Landroid/content/Context;

    .line 1
    iget-boolean v2, v0, Le/d/a/a/c0;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Le/d/a/a/c0;->c:Le/d/a/a/d0;

    .line 2
    iget-object v2, v2, Le/d/a/a/d0;->b:Le/d/a/a/c0;

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Le/d/a/a/c0;->b:Z

    goto :goto_0

    :cond_0
    const-string v0, "BillingBroadcastManager"

    const-string v1, "Receiver is not registered."

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zza;->zzk(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
