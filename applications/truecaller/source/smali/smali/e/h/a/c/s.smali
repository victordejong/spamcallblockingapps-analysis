.class public Le/h/a/c/s;
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
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Le/h/a/c/v;

.field public final synthetic c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final synthetic d:Le/h/a/c/b0;

.field public final synthetic e:Le/h/a/c/k;

.field public final synthetic f:Le/h/a/c/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/h/a/c/v;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;Le/h/a/c/k;Le/h/a/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/s;->a:Landroid/content/Context;

    iput-object p2, p0, Le/h/a/c/s;->b:Le/h/a/c/v;

    iput-object p3, p0, Le/h/a/c/s;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iput-object p4, p0, Le/h/a/c/s;->d:Le/h/a/c/b0;

    iput-object p5, p0, Le/h/a/c/s;->e:Le/h/a/c/k;

    iput-object p6, p0, Le/h/a/c/s;->f:Le/h/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/s;->a:Landroid/content/Context;

    iget-object v1, p0, Le/h/a/c/s;->b:Le/h/a/c/v;

    iget-object v8, p0, Le/h/a/c/s;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iget-object v2, p0, Le/h/a/c/s;->d:Le/h/a/c/b0;

    iget-object v5, p0, Le/h/a/c/s;->e:Le/h/a/c/k;

    iget-object v6, p0, Le/h/a/c/s;->f:Le/h/a/c/f;

    .line 2
    invoke-virtual {v8}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v7, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v9, ":async_deviceID"

    .line 4
    invoke-static {v4, v7, v9}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Initializing Feature Flags with device Id = "

    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 5
    invoke-virtual {v2}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-virtual {v3, v4, v7}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-boolean v3, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v8}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    .line 9
    iget-object v1, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Feature Flag is not enabled for this instance"

    .line 10
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v2}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v3

    .line 12
    new-instance v7, Le/h/a/c/z0/a;

    invoke-direct {v7, v0, v8}, Le/h/a/c/z0/a;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V

    .line 13
    new-instance v0, Le/h/a/c/o0/b;

    move-object v2, v0

    move-object v4, v8

    invoke-direct/range {v2 .. v7}, Le/h/a/c/o0/b;-><init>(Ljava/lang/String;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/k;Le/h/a/c/j;Le/h/a/c/z0/a;)V

    .line 14
    iput-object v0, v1, Le/h/a/c/v;->d:Le/h/a/c/o0/b;

    .line 15
    invoke-virtual {v8}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v2, v8, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, "Feature Flags initialized"

    .line 17
    invoke-static {v1, v2, v9, v0, v3}, Le/d/c/a/a;->R0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Le/h/a/c/g0;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
