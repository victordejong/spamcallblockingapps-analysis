.class public Lcom/appnext/base/moments/operations/imp/acap;
.super Lcom/appnext/base/moments/operations/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/moments/operations/imp/acap$CollectedDataModelByDateComparator;
    }
.end annotation


# virtual methods
.method public getData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/appnext/base/moments/a/a/b;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    const-string v2, "acap$getData"

    .line 2
    invoke-static {v2, v1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
