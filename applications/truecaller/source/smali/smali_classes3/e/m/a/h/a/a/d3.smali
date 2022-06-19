.class public final synthetic Le/m/a/h/a/a/d3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/h/c;


# instance fields
.field public final synthetic a:Le/m/a/h/a/a/e0;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/a/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/a/d3;->a:Le/m/a/h/a/a/e0;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Le/m/a/h/a/a/d3;->a:Le/m/a/h/a/a/e0;

    check-cast p1, Ljava/util/List;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/a/e0;->b:Le/m/a/h/a/a/l2;

    .line 2
    invoke-virtual {v1}, Le/m/a/h/a/a/l2;->a()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Le/m/a/h/a/a/e0;->h()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    .line 5
    invoke-static {v2, v3}, Le/m/a/h/a/a/e0;->d(Ljava/io/File;Z)J

    move-result-wide v3

    int-to-long v5, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v2}, Le/m/a/h/a/a/e0;->j(Ljava/io/File;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
