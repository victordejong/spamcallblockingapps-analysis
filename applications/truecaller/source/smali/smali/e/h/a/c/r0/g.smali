.class public Le/h/a/c/r0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

.field public final synthetic b:Le/h/a/c/r0/h;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/h;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r0/g;->b:Le/h/a/c/r0/h;

    iput-object p2, p0, Le/h/a/c/r0/g;->a:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/g;->b:Le/h/a/c/r0/h;

    .line 2
    iget-object v0, v0, Le/h/a/c/r0/h;->f:Le/h/a/c/m;

    .line 3
    iget-object v0, v0, Le/h/a/c/m;->a:Ljava/lang/Object;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Le/h/a/c/r0/g;->b:Le/h/a/c/r0/h;

    iget-object v2, p0, Le/h/a/c/r0/g;->a:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 6
    iget-object v2, v2, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->l:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Le/h/a/c/r0/h;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Le/h/a/c/r0/g;->b:Le/h/a/c/r0/h;

    .line 9
    iget-object v1, v1, Le/h/a/c/r0/h;->g:Le/h/a/c/k;

    .line 10
    check-cast v1, Le/h/a/c/o;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
