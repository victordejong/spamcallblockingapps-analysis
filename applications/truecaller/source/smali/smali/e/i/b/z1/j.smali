.class public final Le/i/b/z1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/Exception;)Le/i/b/q2/f;
    .locals 4

    const-string v0, "exception"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/i/b/q2/f;

    const/4 v1, 0x5

    const-string v2, "Error while reading queue file. Recovering by recreating it or using in-memory queue"

    const-string v3, "onRecoveringFromStaleQueueFile"

    invoke-direct {v0, v1, v2, p0, v3}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method
