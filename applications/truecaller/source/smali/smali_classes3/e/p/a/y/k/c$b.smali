.class public Le/p/a/y/k/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/y/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Le/p/a/s;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/p/a/s;->c:Le/p/a/m;

    const-string v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Le/p/a/s;->c:Le/p/a/m;

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
