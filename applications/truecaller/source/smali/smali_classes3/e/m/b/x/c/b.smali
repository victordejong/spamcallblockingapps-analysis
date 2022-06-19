.class public Le/m/b/x/c/b;
.super Le/m/b/x/d/k;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public c:Le/m/b/x/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/b/x/d/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c()Le/m/b/x/d/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/x/c/b;->i()Le/m/b/x/c/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/c/b;->i()Le/m/b/x/c/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/b/x/c/b;->j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;

    move-result-object p1

    return-object p1
.end method

.method public i()Le/m/b/x/c/b;
    .locals 1

    .line 1
    invoke-super {p0}, Le/m/b/x/d/k;->c()Le/m/b/x/d/k;

    move-result-object v0

    check-cast v0, Le/m/b/x/c/b;

    return-object v0
.end method

.method public j(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/c/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/d/k;->h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;

    move-object p1, p0

    check-cast p1, Le/m/b/x/c/b;

    return-object p1
.end method

.method public k()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/b/x/c/b;->c:Le/m/b/x/c/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p0, v1}, Le/m/b/x/c/c;->d(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Le/m/b/x/d/k;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/b/x/c/b;->c:Le/m/b/x/c/c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {v0, p0, v1}, Le/m/b/x/c/c;->d(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    invoke-super {p0}, Le/m/b/x/d/k;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
