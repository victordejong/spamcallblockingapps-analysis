.class public Le/h/a/c/f0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/f0;->j(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Le/h/a/c/f0;


# direct methods
.method public constructor <init>(Le/h/a/c/f0;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/f0$b;->c:Le/h/a/c/f0;

    iput-object p2, p0, Le/h/a/c/f0$b;->a:Ljava/lang/String;

    iput-object p3, p0, Le/h/a/c/f0$b;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 2
    sput-wide v0, Le/h/a/c/f0;->g:J

    .line 3
    :try_start_0
    iget-object v0, p0, Le/h/a/c/f0$b;->c:Le/h/a/c/f0;

    .line 4
    invoke-virtual {v0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/h/a/c/f0$b;->c:Le/h/a/c/f0;

    .line 6
    iget-object v1, v1, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local Data Store Executor service: Starting task - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/h/a/c/f0$b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/h/a/c/f0$b;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :catchall_0
    iget-object v0, p0, Le/h/a/c/f0$b;->c:Le/h/a/c/f0;

    .line 11
    invoke-virtual {v0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v0

    .line 12
    iget-object v1, p0, Le/h/a/c/f0$b;->c:Le/h/a/c/f0;

    .line 13
    iget-object v1, v1, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 14
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
