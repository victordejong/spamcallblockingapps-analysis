.class public final Le/m/a/h/a/a/z;
.super Le/m/a/h/a/e/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/h/a/e/c<",
        "Le/m/a/h/a/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final g:Le/m/a/h/a/a/p1;

.field public final h:Le/m/a/h/a/a/y0;

.field public final i:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/m/a/h/a/a/p0;

.field public final k:Le/m/a/h/a/a/b1;

.field public final l:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/m/a/h/a/d/f1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Le/m/a/h/a/a/j2;

.field public final o:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/m/a/h/a/a/p1;Le/m/a/h/a/a/y0;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/b1;Le/m/a/h/a/a/p0;Le/m/a/h/a/d/f1;Le/m/a/h/a/d/f1;Le/m/a/h/a/a/j2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/m/a/h/a/a/p1;",
            "Le/m/a/h/a/a/y0;",
            "Le/m/a/h/a/d/f1<",
            "Le/m/a/h/a/a/s3;",
            ">;",
            "Le/m/a/h/a/a/b1;",
            "Le/m/a/h/a/a/p0;",
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Le/m/a/h/a/d/f1<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Le/m/a/h/a/a/j2;",
            ")V"
        }
    .end annotation

    new-instance v0, Le/m/a/h/a/d/g;

    const-string v1, "AssetPackServiceListenerRegistry"

    .line 1
    invoke-direct {v0, v1}, Le/m/a/h/a/d/g;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.play.core.assetpacks.receiver.ACTION_SESSION_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Le/m/a/h/a/e/c;-><init>(Le/m/a/h/a/d/g;Landroid/content/IntentFilter;Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Le/m/a/h/a/a/z;->o:Landroid/os/Handler;

    iput-object p2, p0, Le/m/a/h/a/a/z;->g:Le/m/a/h/a/a/p1;

    iput-object p3, p0, Le/m/a/h/a/a/z;->h:Le/m/a/h/a/a/y0;

    iput-object p4, p0, Le/m/a/h/a/a/z;->i:Le/m/a/h/a/d/f1;

    iput-object p5, p0, Le/m/a/h/a/a/z;->k:Le/m/a/h/a/a/b1;

    iput-object p6, p0, Le/m/a/h/a/a/z;->j:Le/m/a/h/a/a/p0;

    iput-object p7, p0, Le/m/a/h/a/a/z;->l:Le/m/a/h/a/d/f1;

    iput-object p8, p0, Le/m/a/h/a/a/z;->m:Le/m/a/h/a/d/f1;

    iput-object p9, p0, Le/m/a/h/a/a/z;->n:Le/m/a/h/a/a/j2;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string p1, "com.google.android.play.core.assetpacks.receiver.EXTRA_SESSION_STATE"

    .line 1
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    const-string v0, "pack_names"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Le/m/a/h/a/a/z;->k:Le/m/a/h/a/a/b1;

    iget-object v3, p0, Le/m/a/h/a/a/z;->n:Le/m/a/h/a/a/j2;

    sget-object v4, Le/m/a/h/a/a/b0;->a:Le/m/a/h/a/a/b0;

    .line 5
    invoke-static {p1, v0, v1, v3, v4}, Le/m/a/h/a/a/c;->i(Landroid/os/Bundle;Ljava/lang/String;Le/m/a/h/a/a/b1;Le/m/a/h/a/a/j2;Le/m/a/h/a/a/c0;)Le/m/a/h/a/a/c;

    move-result-object v0

    iget-object v1, p0, Le/m/a/h/a/e/c;->a:Le/m/a/h/a/d/g;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p2

    const-string p2, "ListenerRegistryBroadcastReceiver.onReceive: %s"

    .line 6
    invoke-virtual {v1, p2, v2}, Le/m/a/h/a/d/g;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p2, "confirmation_intent"

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    if-eqz p2, :cond_1

    iget-object p2, p0, Le/m/a/h/a/a/z;->j:Le/m/a/h/a/a/p0;

    .line 8
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_1
    iget-object p2, p0, Le/m/a/h/a/a/z;->m:Le/m/a/h/a/d/f1;

    .line 10
    invoke-interface {p2}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v1, Le/m/a/h/a/a/w;

    invoke-direct {v1, p0, p1, v0}, Le/m/a/h/a/a/w;-><init>(Le/m/a/h/a/a/z;Landroid/os/Bundle;Le/m/a/h/a/a/c;)V

    .line 11
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p0, Le/m/a/h/a/a/z;->l:Le/m/a/h/a/d/f1;

    .line 12
    invoke-interface {p2}, Le/m/a/h/a/d/f1;->zza()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/Executor;

    new-instance v0, Le/m/a/h/a/a/v;

    invoke-direct {v0, p0, p1}, Le/m/a/h/a/a/v;-><init>(Le/m/a/h/a/a/z;Landroid/os/Bundle;)V

    .line 13
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 14
    :cond_2
    :goto_0
    iget-object p1, p0, Le/m/a/h/a/e/c;->a:Le/m/a/h/a/d/g;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Corrupt bundle received from broadcast."

    .line 15
    invoke-virtual {p1, v0, p2}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    .line 16
    :cond_3
    iget-object p1, p0, Le/m/a/h/a/e/c;->a:Le/m/a/h/a/d/g;

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Empty bundle received from broadcast."

    .line 17
    invoke-virtual {p1, v0, p2}, Le/m/a/h/a/d/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
