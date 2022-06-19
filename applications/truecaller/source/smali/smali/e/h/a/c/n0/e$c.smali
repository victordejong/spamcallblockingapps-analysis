.class public Le/h/a/c/n0/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/n0/e;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/n0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/n0/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/n0/e$c;->a:Le/h/a/c/n0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/h/a/c/n0/e$c;->a:Le/h/a/c/n0/e;

    .line 2
    iget-object v1, v1, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/n0/e$c;->a:Le/h/a/c/n0/e;

    .line 4
    iget-object v2, v2, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Queuing daily events"

    .line 6
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Le/h/a/c/n0/e$c;->a:Le/h/a/c/n0/e;

    invoke-virtual {v1, v0}, Le/h/a/c/n0/e;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    iget-object v1, p0, Le/h/a/c/n0/e$c;->a:Le/h/a/c/n0/e;

    .line 9
    iget-object v1, v1, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/n0/e$c;->a:Le/h/a/c/n0/e;

    .line 11
    iget-object v2, v2, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object v0
.end method
