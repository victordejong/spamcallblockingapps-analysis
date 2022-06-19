.class public final Le/a/c/a/j/c/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/j/c/f;->submitList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/j/c/f;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/c/a/j/c/f;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/j/c/f$a;->a:Le/a/c/a/j/c/f;

    iput-object p2, p0, Le/a/c/a/j/c/f$a;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/c/a/j/c/f$a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Le/a/c/a/j/b/j;

    .line 5
    iget-boolean v3, v2, Le/a/c/a/j/b/j;->e:Z

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2}, Le/a/c/a/j/b/j;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    .line 9
    :cond_3
    iget-object v0, p0, Le/a/c/a/j/c/f$a;->a:Le/a/c/a/j/c/f;

    .line 10
    iget-object v0, v0, Le/a/c/a/j/c/f;->b:Ljava/util/Set;

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 12
    iget-object v0, p0, Le/a/c/a/j/c/f$a;->a:Le/a/c/a/j/c/f;

    .line 13
    iget-object v0, v0, Le/a/c/a/j/c/f;->b:Ljava/util/Set;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
