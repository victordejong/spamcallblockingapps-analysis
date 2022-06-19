.class public Le/h/a/c/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/f0;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Le/h/a/c/f0;


# direct methods
.method public constructor <init>(Le/h/a/c/f0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/f0$a;->b:Le/h/a/c/f0;

    iput-object p2, p0, Le/h/a/c/f0$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/h/a/c/f0$a;->b:Le/h/a/c/f0;

    .line 2
    iget-object v0, v0, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Le/h/a/c/f0$a;->b:Le/h/a/c/f0;

    .line 5
    iget-object v1, v1, Le/h/a/c/f0;->e:Le/h/a/c/l0/b;

    .line 6
    iget-object v2, p0, Le/h/a/c/f0$a;->a:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Le/h/a/c/f0$a;->b:Le/h/a/c/f0;

    .line 7
    iget-object v4, v4, Le/h/a/c/f0;->b:Ljava/util/HashMap;

    .line 8
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Le/h/a/c/l0/b;->m(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v1

    .line 9
    iget-object v3, p0, Le/h/a/c/f0$a;->b:Le/h/a/c/f0;

    .line 10
    invoke-virtual {v3}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v3

    .line 11
    iget-object v4, p0, Le/h/a/c/f0$a;->b:Le/h/a/c/f0;

    .line 12
    iget-object v4, v4, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persist Local Profile complete with status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " for id "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/h/a/c/f0$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
