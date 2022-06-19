.class public Le/q/f/a/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Le/q/f/a/g/f;


# direct methods
.method public static a(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget-object v0, Le/q/f/a/g/e;->a:Le/q/f/a/g/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p0}, Le/q/f/a/g/f;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
