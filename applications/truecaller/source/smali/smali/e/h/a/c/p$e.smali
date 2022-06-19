.class public Le/h/a/c/p$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/p;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)V
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
.field public final synthetic a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final synthetic b:Le/h/a/c/p;


# direct methods
.method public constructor <init>(Le/h/a/c/p;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/p$e;->b:Le/h/a/c/p;

    iput-object p2, p0, Le/h/a/c/p$e;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

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
    iget-object v0, p0, Le/h/a/c/p$e;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-boolean v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/h/a/c/p$e;->b:Le/h/a/c/p;

    .line 4
    iget-object v1, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 5
    iget-object v1, v1, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    invoke-static {v1}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v1

    invoke-virtual {v1}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v1

    .line 7
    new-instance v2, Le/h/a/c/q;

    invoke-direct {v2, v0}, Le/h/a/c/q;-><init>(Le/h/a/c/p;)V

    .line 8
    iget-object v0, v1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 9
    new-instance v3, Le/h/a/c/y0/j;

    const-string v4, "Manifest Validation"

    invoke-direct {v3, v1, v4, v2}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 10
    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
