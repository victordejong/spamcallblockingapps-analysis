.class public final synthetic Le/a/a/c/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$w;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/q1;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 3

    iget-object v0, p0, Le/a/a/c/q1;->a:Le/a/a/c/y3;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v1, p1, Le/a/a/c/a7;

    if-eqz v1, :cond_1

    .line 3
    check-cast p1, Le/a/a/c/a7;

    invoke-interface {p1}, Le/a/a/c/a7;->k0()Ljava/lang/Iterable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/c/r8/c;

    .line 5
    iget-object v2, v0, Le/a/a/c/y3;->j:Le/a/a/c/t7;

    invoke-interface {v2, v1}, Le/a/a/c/t7;->b(Le/a/a/c/r8/c;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
