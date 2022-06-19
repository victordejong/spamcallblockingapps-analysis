.class public Le/h/a/c/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/p;->l(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Le/h/a/c/p;
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
.field public final synthetic a:Le/h/a/c/p;


# direct methods
.method public constructor <init>(Le/h/a/c/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/p$d;->a:Le/h/a/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/p$d;->a:Le/h/a/c/p;

    .line 2
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 3
    iget-object v0, v0, Le/h/a/c/x;->b:Le/h/a/c/b0;

    .line 4
    invoke-virtual {v0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/h/a/c/p$d;->a:Le/h/a/c/p;

    .line 6
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 7
    iget-object v0, v0, Le/h/a/c/x;->i:Le/h/a/c/t0/e;

    .line 8
    invoke-virtual {v0}, Le/h/a/c/t0/e;->d()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
