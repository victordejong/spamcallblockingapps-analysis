.class public Le/h/a/c/q0/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/b0;->m8(Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;Landroid/os/Bundle;)V
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
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

.field public final synthetic c:Le/h/a/c/q0/b0;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/b0;Landroid/content/Context;Lcom/clevertap/android/sdk/inapp/CTInAppNotification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/b0$a;->c:Le/h/a/c/q0/b0;

    iput-object p2, p0, Le/h/a/c/q0/b0$a;->a:Landroid/content/Context;

    iput-object p3, p0, Le/h/a/c/q0/b0$a;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/b0$a;->a:Landroid/content/Context;

    iget-object v1, p0, Le/h/a/c/q0/b0$a;->c:Le/h/a/c/q0/b0;

    .line 2
    iget-object v2, v1, Le/h/a/c/q0/b0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-object v3, p0, Le/h/a/c/q0/b0$a;->b:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 4
    iget-object v4, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 5
    sget-object v4, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 6
    iget-object v4, v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    .line 7
    iget-object v3, v3, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    sput-object v5, Le/h/a/c/q0/b0;->k:Lcom/clevertap/android/sdk/inapp/CTInAppNotification;

    .line 10
    invoke-static {v0, v2, v1}, Le/h/a/c/q0/b0;->d(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/q0/b0;)V

    .line 11
    :cond_0
    iget-object v0, p0, Le/h/a/c/q0/b0$a;->c:Le/h/a/c/q0/b0;

    iget-object v1, p0, Le/h/a/c/q0/b0$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Le/h/a/c/q0/b0;->b(Le/h/a/c/q0/b0;Landroid/content/Context;)V

    return-object v5
.end method
