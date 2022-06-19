.class public final Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Le/a/l0/u/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;


# direct methods
.method public constructor <init>(Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver$a;->a:Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/l0/u/d/b;

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver$a;->a:Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;

    .line 3
    iget-object v0, v0, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b:Le/a/j2;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    invoke-interface {v0}, Le/a/j2;->h3()Le/a/h/q0/a;

    move-result-object v0

    const-string v2, "graph.missedCallReminderManager()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {p1}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "it.historyEvent ?: continue"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {v0, v2}, Le/a/h/q0/a;->c(Lcom/truecaller/data/entity/HistoryEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {p1, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    const-string p1, "graph"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
