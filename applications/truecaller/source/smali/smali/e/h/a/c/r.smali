.class public Le/h/a/c/r;
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
.field public final synthetic a:Le/h/a/c/x;

.field public final synthetic b:Le/h/a/c/v;

.field public final synthetic c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final synthetic d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/h/a/c/x;Le/h/a/c/v;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/r;->a:Le/h/a/c/x;

    iput-object p2, p0, Le/h/a/c/r;->b:Le/h/a/c/v;

    iput-object p3, p0, Le/h/a/c/r;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iput-object p4, p0, Le/h/a/c/r;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/r;->a:Le/h/a/c/x;

    .line 2
    iget-object v0, v0, Le/h/a/c/x;->b:Le/h/a/c/b0;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/h/a/c/r;->b:Le/h/a/c/v;

    .line 4
    iget-object v0, v0, Le/h/a/c/v;->a:Le/h/a/c/d0;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Le/h/a/c/r;->a:Le/h/a/c/x;

    .line 6
    iget-object v0, v0, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/h/a/c/r;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 8
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v3, ":async_deviceID"

    .line 9
    invoke-static {v1, v2, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Initializing InAppFC with device Id = "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/h/a/c/r;->a:Le/h/a/c/x;

    .line 10
    iget-object v3, v3, Le/h/a/c/x;->b:Le/h/a/c/b0;

    .line 11
    invoke-virtual {v3}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Le/h/a/c/r;->b:Le/h/a/c/v;

    new-instance v1, Le/h/a/c/d0;

    iget-object v2, p0, Le/h/a/c/r;->d:Landroid/content/Context;

    iget-object v3, p0, Le/h/a/c/r;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iget-object v4, p0, Le/h/a/c/r;->a:Le/h/a/c/x;

    .line 14
    iget-object v4, v4, Le/h/a/c/x;->b:Le/h/a/c/b0;

    .line 15
    invoke-virtual {v4}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Le/h/a/c/d0;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)V

    .line 16
    iput-object v1, v0, Le/h/a/c/v;->a:Le/h/a/c/d0;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
