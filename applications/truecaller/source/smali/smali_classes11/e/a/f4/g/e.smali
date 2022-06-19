.class public final Le/a/f4/g/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/UUID;

.field public final d:Landroid/content/Context;

.field public final e:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/h0/j;

.field public final g:Le/a/q2/a;

.field public final h:Le/a/p5/u;

.field public final i:Le/a/p5/c;

.field public final j:Le/a/g5/p;

.field public final k:Le/m/f/a/j;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Landroid/content/Context;Le/a/r2/f;Le/a/h0/j;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;Le/a/g5/p;Le/m/f/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Landroid/content/Context;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/h0/j;",
            "Le/a/q2/a;",
            "Le/a/p5/u;",
            "Le/a/p5/c;",
            "Le/a/g5/p;",
            "Le/m/f/a/j;",
            ")V"
        }
    .end annotation

    const-string v0, "searchSource"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDisplayUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/g/e;->b:Ljava/lang/String;

    iput-object p2, p0, Le/a/f4/g/e;->c:Ljava/util/UUID;

    iput-object p3, p0, Le/a/f4/g/e;->d:Landroid/content/Context;

    iput-object p4, p0, Le/a/f4/g/e;->e:Le/a/r2/f;

    iput-object p5, p0, Le/a/f4/g/e;->f:Le/a/h0/j;

    iput-object p6, p0, Le/a/f4/g/e;->g:Le/a/q2/a;

    iput-object p7, p0, Le/a/f4/g/e;->h:Le/a/p5/u;

    iput-object p8, p0, Le/a/f4/g/e;->i:Le/a/p5/c;

    iput-object p9, p0, Le/a/f4/g/e;->j:Le/a/g5/p;

    iput-object p10, p0, Le/a/f4/g/e;->k:Le/m/f/a/j;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/f4/g/e;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lx3/b;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx3/b<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/f4/g/e;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    iget-object v1, v0, Le/a/f4/g/e;->a:Ljava/util/Set;

    .line 3
    new-instance v10, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/String;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Le/a/w4/l;->a()Le/a/w4/m;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v3, ","

    move-object v2, v10

    .line 8
    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Le/a/w4/m;->d(Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v3

    .line 9
    new-instance v1, Le/a/f4/g/i$a;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    iget-object v8, v0, Le/a/f4/g/e;->k:Le/m/f/a/j;

    move-object v2, v1

    move-object v4, v10

    invoke-direct/range {v2 .. v8}, Le/a/f4/g/i$a;-><init>(Lx3/b;Ljava/util/Collection;ZZZLe/m/f/a/j;)V

    .line 10
    new-instance v18, Le/a/f4/g/d;

    .line 11
    new-instance v4, Le/a/k3/j/b;

    iget-object v2, v0, Le/a/f4/g/e;->d:Landroid/content/Context;

    invoke-direct {v4, v2}, Le/a/k3/j/b;-><init>(Landroid/content/Context;)V

    .line 12
    iget-object v6, v0, Le/a/f4/g/e;->e:Le/a/r2/f;

    .line 13
    iget-object v7, v0, Le/a/f4/g/e;->f:Le/a/h0/j;

    const/16 v9, 0x18

    .line 14
    iget-object v11, v0, Le/a/f4/g/e;->b:Ljava/lang/String;

    .line 15
    iget-object v12, v0, Le/a/f4/g/e;->c:Ljava/util/UUID;

    const/4 v13, 0x0

    .line 16
    iget-object v14, v0, Le/a/f4/g/e;->g:Le/a/q2/a;

    .line 17
    iget-object v15, v0, Le/a/f4/g/e;->h:Le/a/p5/u;

    .line 18
    iget-object v8, v0, Le/a/f4/g/e;->i:Le/a/p5/c;

    const/16 v16, 0x0

    .line 19
    iget-object v3, v0, Le/a/f4/g/e;->j:Le/a/g5/p;

    move-object/from16 v2, v18

    move-object/from16 v17, v3

    move-object v3, v1

    move-object v1, v8

    move-object v8, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    move-object v15, v1

    .line 20
    invoke-direct/range {v2 .. v17}, Le/a/f4/g/d;-><init>(Lx3/b;Le/a/k3/j/b;ZLe/a/r2/f;Le/a/h0/j;Ljava/util/List;ILjava/lang/String;Ljava/util/UUID;Ljava/util/List;Le/a/q2/a;Le/a/p5/u;Le/a/p5/c;ZLe/a/g5/p;)V

    return-object v18

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No IM IDs to search for"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
