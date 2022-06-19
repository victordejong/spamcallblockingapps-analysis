.class public Le/h/a/c/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/f;->m(Landroid/os/Bundle;)V
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
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Le/h/a/c/f;


# direct methods
.method public constructor <init>(Le/h/a/c/f;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/f$a;->b:Le/h/a/c/f;

    iput-object p2, p0, Le/h/a/c/f$a;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "wzrk_inapp"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    iget-object v2, p0, Le/h/a/c/f$a;->a:Landroid/os/Bundle;

    .line 2
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "inapp_notifs"

    .line 5
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Le/h/a/c/f$a;->a:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 7
    new-instance v0, Le/h/a/c/x0/e;

    invoke-direct {v0}, Le/h/a/c/x0/e;-><init>()V

    .line 8
    new-instance v3, Le/h/a/c/x0/j;

    iget-object v4, p0, Le/h/a/c/f$a;->b:Le/h/a/c/f;

    .line 9
    iget-object v5, v4, Le/h/a/c/f;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object v4, v4, Le/h/a/c/f;->g:Le/h/a/c/v;

    const/4 v6, 0x1

    .line 11
    invoke-direct {v3, v0, v5, v4, v6}, Le/h/a/c/x0/j;-><init>(Le/h/a/c/x0/c;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/v;Z)V

    .line 12
    iget-object v0, p0, Le/h/a/c/f$a;->b:Le/h/a/c/f;

    .line 13
    iget-object v0, v0, Le/h/a/c/f;->f:Landroid/content/Context;

    .line 14
    invoke-virtual {v3, v2, v1, v0}, Le/h/a/c/x0/j;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v1
.end method
