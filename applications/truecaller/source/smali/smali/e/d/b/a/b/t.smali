.class public Le/d/b/a/b/t;
.super Le/d/b/a/b/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/d/b/a/b/g;-><init>()V

    const/16 v0, 0x80

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Le/d/b/a/b/f;->b(I)V

    const/16 v0, 0x12

    .line 3
    invoke-virtual {p0, v0}, Le/d/b/a/b/f;->c(I)V

    const-string v0, "application/vnd.wap.multipart.related"

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 5
    iget-object v1, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 v2, 0x84

    invoke-virtual {v1, v0, v2}, Le/d/b/a/b/m;->j([BI)V

    .line 6
    new-instance v0, Le/d/b/a/b/e;

    const-string v1, "insert-address-token"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x6a

    .line 7
    invoke-direct {v0, v2, v1}, Le/d/b/a/b/e;-><init>(I[B)V

    .line 8
    iget-object v1, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 v2, 0x89

    invoke-virtual {v1, v0, v2}, Le/d/b/a/b/m;->g(Le/d/b/a/b/e;I)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 11
    iget-object v1, p0, Le/d/b/a/b/f;->a:Le/d/b/a/b/m;

    const/16 v2, 0x98

    invoke-virtual {v1, v0, v2}, Le/d/b/a/b/m;->j([BI)V
    :try_end_0
    .catch Le/d/b/a/a; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Le/d/b/a/b/m;Le/d/b/a/b/j;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Le/d/b/a/b/g;-><init>(Le/d/b/a/b/m;Le/d/b/a/b/j;)V

    return-void
.end method
