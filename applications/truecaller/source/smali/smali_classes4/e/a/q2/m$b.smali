.class public final Le/a/q2/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q2/m;->a()Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Le/a/h0/w/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/q2/m;


# direct methods
.method public constructor <init>(Le/a/q2/m;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/m$b;->a:Le/a/q2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/h0/w/b;

    .line 2
    iget-object v0, p0, Le/a/q2/m$b;->a:Le/a/q2/m;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 4
    iget-object v1, v0, Le/a/q2/m;->y:Le/a/b0/q/z;

    invoke-interface {v1}, Le/a/b0/q/z;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-interface {p1}, Le/a/h0/w/b;->getFilter()Le/a/h0/w/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 9
    invoke-static {v2}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    .line 10
    invoke-static {p1}, Ls1/e0/x;->h(Ls1/e0/k;)Ls1/e0/k;

    move-result-object p1

    .line 11
    sget-object v2, Le/a/q2/n;->b:Le/a/q2/n;

    invoke-static {p1, v2}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 12
    new-instance v2, Le/a/q2/o;

    invoke-direct {v2, v0}, Le/a/q2/o;-><init>(Le/a/q2/m;)V

    invoke-static {p1, v2}, Ls1/e0/x;->l(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 13
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    check-cast p1, Ls1/e0/h;

    .line 15
    new-instance v4, Ls1/e0/h$a;

    invoke-direct {v4, p1}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    .line 16
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ls1/e0/h$a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v4}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x1

    .line 17
    invoke-static {v1, v5, v6}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p1

    int-to-double v1, p1

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 20
    new-instance v1, Le/a/q2/g$b$a;

    const-string v2, "CountOfForeignCountriesWithNumberBlocked"

    invoke-direct {v1, v2, p1, v3, v3}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 21
    iget-object p1, v0, Le/a/q2/m;->k:Le/a/q2/a;

    const-string v0, "event"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 22
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    :goto_2
    return-void
.end method
