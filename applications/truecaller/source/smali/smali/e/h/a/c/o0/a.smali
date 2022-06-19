.class public Le/h/a/c/o0/a;
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
.field public final synthetic a:Le/h/a/c/o0/b;


# direct methods
.method public constructor <init>(Le/h/a/c/o0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/o0/a;->a:Le/h/a/c/o0/b;

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
    :try_start_0
    iget-object v0, p0, Le/h/a/c/o0/a;->a:Le/h/a/c/o0/b;

    iget-object v0, v0, Le/h/a/c/o0/b;->d:Le/h/a/c/j;

    invoke-virtual {v0}, Le/h/a/c/j;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Le/h/a/c/o0/a;->a:Le/h/a/c/o0/b;

    .line 3
    invoke-virtual {v1}, Le/h/a/c/o0/b;->d()Le/h/a/c/g0;

    move-result-object v1

    .line 4
    iget-object v2, p0, Le/h/a/c/o0/a;->a:Le/h/a/c/o0/b;

    .line 5
    invoke-virtual {v2}, Le/h/a/c/o0/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
