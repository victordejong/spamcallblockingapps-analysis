.class public final synthetic Le/a/h/b/m$a;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/m;->a(Le/a/h/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/h/b/m;)V
    .locals 7

    const-class v3, Le/a/h/b/m;

    const/4 v1, 0x0

    const-string v4, "onConditionChanged"

    const-string v5, "onConditionChanged()V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/m;

    .line 2
    iget-boolean v1, v0, Le/a/h/b/m;->f:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Le/a/h/b/m;->e:Ljava/util/HashSet;

    .line 3
    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h/b/l;

    .line 5
    invoke-interface {v2}, Le/a/h/b/l;->a()Z

    move-result v2

    if-nez v2, :cond_1

    move v4, v3

    :cond_2
    :goto_0
    if-eqz v4, :cond_4

    .line 6
    iget-object v1, v0, Le/a/h/b/g;->b:Le/a/h/b/r$a;

    if-eqz v1, :cond_3

    .line 7
    invoke-interface {v1}, Le/a/h/b/r$a;->onDataChanged()V

    .line 8
    :cond_3
    iput-boolean v3, v0, Le/a/h/b/m;->f:Z

    .line 9
    :cond_4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
