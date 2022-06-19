.class public final Le/a/y/d/j$c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/d/j$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.flashsdk.db.FlashPendingManagerImpl$updateFlashState$1$4"
    f = "FlashPendingManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/y/d/j$c;

.field public final synthetic f:Ls1/z/c/c0;

.field public final synthetic g:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/y/d/j$c;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/y/d/j$c$a;->e:Le/a/y/d/j$c;

    iput-object p2, p0, Le/a/y/d/j$c$a;->f:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/y/d/j$c$a;->g:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/d/j$c$a;

    iget-object v0, p0, Le/a/y/d/j$c$a;->e:Le/a/y/d/j$c;

    iget-object v1, p0, Le/a/y/d/j$c$a;->f:Ls1/z/c/c0;

    iget-object v2, p0, Le/a/y/d/j$c$a;->g:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/d/j$c$a;-><init>(Le/a/y/d/j$c;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/y/d/j$c$a;

    iget-object v0, p0, Le/a/y/d/j$c$a;->e:Le/a/y/d/j$c;

    iget-object v1, p0, Le/a/y/d/j$c$a;->f:Ls1/z/c/c0;

    iget-object v2, p0, Le/a/y/d/j$c$a;->g:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/y/d/j$c$a;-><init>(Le/a/y/d/j$c;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/y/d/j$c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/y/d/j$c$a;->f:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Le/a/y/d/j$c$a;->e:Le/a/y/d/j$c;

    iget-object v3, v3, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    .line 7
    iget-object v3, v3, Le/a/y/d/j;->c:Ljava/util/Map;

    .line 8
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v0

    .line 9
    :goto_1
    invoke-static {v1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {v1}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/y/d/n;

    const/4 v2, 0x0

    .line 12
    invoke-interface {v1, v2}, Le/a/y/d/n;->a(Z)V

    goto :goto_2

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/y/d/j$c$a;->g:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Le/a/y/g/d;

    .line 17
    iget-object v2, v2, Le/a/y/g/d;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 19
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    iget-object v3, p0, Le/a/y/d/j$c$a;->e:Le/a/y/d/j$c;

    iget-object v3, v3, Le/a/y/d/j$c;->f:Le/a/y/d/j;

    .line 23
    iget-object v3, v3, Le/a/y/d/j;->c:Ljava/util/Map;

    .line 24
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, v0

    .line 25
    :goto_5
    invoke-static {p1, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_4

    .line 26
    :cond_6
    invoke-static {p1}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/y/d/n;

    const/4 v1, 0x1

    .line 28
    invoke-interface {v0, v1}, Le/a/y/d/n;->a(Z)V

    goto :goto_6

    .line 29
    :cond_7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
