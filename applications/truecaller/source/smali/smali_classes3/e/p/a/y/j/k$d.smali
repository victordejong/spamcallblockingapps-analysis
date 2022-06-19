.class public Le/p/a/y/j/k$d;
.super Lv3/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/j/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic l:Le/p/a/y/j/k;


# direct methods
.method public constructor <init>(Le/p/a/y/j/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/j/k$d;->l:Le/p/a/y/j/k;

    invoke-direct {p0}, Lv3/b;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 1
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/a/y/j/k$d;->l:Le/p/a/y/j/k;

    sget-object v1, Le/p/a/y/j/a;->o:Le/p/a/y/j/a;

    invoke-virtual {v0, v1}, Le/p/a/y/j/k;->e(Le/p/a/y/j/a;)V

    return-void
.end method

.method public l()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv3/b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    .line 3
    throw v0

    :cond_0
    return-void
.end method
