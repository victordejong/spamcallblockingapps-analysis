.class public Le/h/a/c/n0/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/n0/e;->g(Landroid/content/Context;Le/h/a/c/n0/c;)V
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
.field public final synthetic a:Le/h/a/c/n0/c;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Le/h/a/c/n0/e;


# direct methods
.method public constructor <init>(Le/h/a/c/n0/e;Le/h/a/c/n0/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/n0/e$a;->c:Le/h/a/c/n0/e;

    iput-object p2, p0, Le/h/a/c/n0/e$a;->a:Le/h/a/c/n0/c;

    iput-object p3, p0, Le/h/a/c/n0/e$a;->b:Landroid/content/Context;

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
    iget-object v0, p0, Le/h/a/c/n0/e$a;->a:Le/h/a/c/n0/c;

    sget-object v1, Le/h/a/c/n0/c;->c:Le/h/a/c/n0/c;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/h/a/c/n0/e$a;->c:Le/h/a/c/n0/e;

    .line 3
    iget-object v1, v0, Le/h/a/c/n0/e;->j:Le/h/a/c/g0;

    .line 4
    iget-object v0, v0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Pushing Notification Viewed event onto queue flush sync"

    .line 6
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/h/a/c/n0/e$a;->c:Le/h/a/c/n0/e;

    .line 8
    iget-object v1, v0, Le/h/a/c/n0/e;->j:Le/h/a/c/g0;

    .line 9
    iget-object v0, v0, Le/h/a/c/n0/e;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Pushing event onto queue flush sync"

    .line 11
    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_0
    iget-object v0, p0, Le/h/a/c/n0/e$a;->c:Le/h/a/c/n0/e;

    iget-object v1, p0, Le/h/a/c/n0/e$a;->b:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/n0/e$a;->a:Le/h/a/c/n0/c;

    invoke-virtual {v0, v1, v2}, Le/h/a/c/n0/e;->a(Landroid/content/Context;Le/h/a/c/n0/c;)V

    const/4 v0, 0x0

    return-object v0
.end method
