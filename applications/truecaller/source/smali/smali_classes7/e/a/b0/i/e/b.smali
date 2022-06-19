.class public Le/a/b0/i/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/i/e/d;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Ljava/lang/Boolean;

.field public k:Ljava/lang/Boolean;

.field public l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public m:Le/a/b0/i/e/a$g;

.field public n:Le/a/b0/i/e/a$f;

.field public o:Le/a/b0/i/e/a$h;

.field public p:Le/a/b0/i/e/a$e;

.field public q:Le/a/b0/i/e/a$b;

.field public r:Le/a/b0/i/e/a$c;

.field public s:Le/a/b0/i/e/a$a;


# direct methods
.method public constructor <init>(Le/a/b0/i/e/d;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/b0/i/e/b;->a:Le/a/b0/i/e/d;

    .line 3
    iput-object p2, p0, Le/a/b0/i/e/b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/a/b0/i/e/b;->c:Ljava/lang/String;

    .line 5
    iput p4, p0, Le/a/b0/i/e/b;->d:I

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Le/a/b0/i/e/b;->i:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)Le/a/b0/i/e/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;)",
            "Le/a/b0/i/e/b;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/b0/i/e/b;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/a/b0/i/e/b;->l:Ljava/util/Set;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/b0/i/e/b;->l:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p0
.end method

.method public varargs b([Landroid/net/Uri;)Le/a/b0/i/e/b;
    .locals 1

    .line 1
    array-length v0, p1

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/a/b0/i/e/b;->l:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Le/a/b0/i/e/b;->l:Ljava/util/Set;

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/b0/i/e/b;->l:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public c()Le/a/b0/i/e/d;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Le/a/b0/i/e/b;->h:Z

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Le/a/b0/i/e/b;->f:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot combine \"count()\" with \"row()\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 3
    iget-object v3, v0, Le/a/b0/i/e/b;->l:Ljava/util/Set;

    if-eqz v3, :cond_3

    if-nez v1, :cond_2

    .line 4
    iget-boolean v1, v0, Le/a/b0/i/e/b;->g:Z

    if-nez v1, :cond_2

    .line 5
    new-instance v2, Ljava/util/HashSet;

    iget-object v1, v0, Le/a/b0/i/e/b;->l:Ljava/util/Set;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot use \"alsoNotify(Uri)\" for views or counts"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_1
    move-object v14, v2

    .line 7
    iget-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    .line 8
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Bad path, \'"

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    const-string v4, "\'"

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_5
    :goto_2
    iget v1, v0, Le/a/b0/i/e/b;->i:I

    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->g(I)V

    const/4 v1, 0x2

    .line 10
    invoke-virtual {v0, v1}, Le/a/b0/i/e/b;->g(I)V

    .line 11
    iget-object v1, v0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, v0, Le/a/b0/i/e/b;->c:Ljava/lang/String;

    .line 12
    :cond_6
    iget-boolean v2, v0, Le/a/b0/i/e/b;->h:Z

    if-eqz v2, :cond_7

    const-string v2, "/count"

    .line 13
    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_7
    iget-boolean v2, v0, Le/a/b0/i/e/b;->f:Z

    if-eqz v2, :cond_8

    const-string v2, "/#"

    .line 15
    invoke-static {v1, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_8
    iget-boolean v2, v0, Le/a/b0/i/e/b;->f:Z

    const-string v3, "vnd."

    if-eqz v2, :cond_9

    .line 17
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Le/a/b0/i/e/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".cursor.item/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Le/a/b0/i/e/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 18
    :cond_9
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Le/a/b0/i/e/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".cursor.dir/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Le/a/b0/i/e/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v12, v2

    .line 19
    iget-object v2, v0, Le/a/b0/i/e/b;->j:Ljava/lang/Boolean;

    const/4 v3, 0x1

    if-nez v2, :cond_a

    move v8, v3

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v8, v2

    .line 20
    :goto_4
    iget-object v2, v0, Le/a/b0/i/e/b;->k:Ljava/lang/Boolean;

    if-nez v2, :cond_c

    iget-boolean v2, v0, Le/a/b0/i/e/b;->h:Z

    if-nez v2, :cond_b

    iget-boolean v2, v0, Le/a/b0/i/e/b;->g:Z

    if-nez v2, :cond_b

    move v9, v3

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_5
    move v9, v2

    .line 21
    :goto_6
    iget-object v2, v0, Le/a/b0/i/e/b;->a:Le/a/b0/i/e/d;

    iget v7, v0, Le/a/b0/i/e/b;->d:I

    move v4, v7

    new-instance v15, Le/a/b0/i/e/a;

    move-object v3, v15

    iget-object v5, v0, Le/a/b0/i/e/b;->c:Ljava/lang/String;

    iget v6, v0, Le/a/b0/i/e/b;->i:I

    iget-boolean v10, v0, Le/a/b0/i/e/b;->f:Z

    iget-boolean v11, v0, Le/a/b0/i/e/b;->h:Z

    .line 22
    invoke-virtual/range {p0 .. p0}, Le/a/b0/i/e/b;->d()Landroid/net/Uri;

    move-result-object v13

    move/from16 v23, v7

    iget-object v7, v0, Le/a/b0/i/e/b;->m:Le/a/b0/i/e/a$g;

    move-object/from16 v24, v1

    move-object v1, v15

    move-object v15, v7

    iget-object v7, v0, Le/a/b0/i/e/b;->n:Le/a/b0/i/e/a$f;

    move-object/from16 v16, v7

    iget-object v7, v0, Le/a/b0/i/e/b;->o:Le/a/b0/i/e/a$h;

    move-object/from16 v17, v7

    iget-object v7, v0, Le/a/b0/i/e/b;->p:Le/a/b0/i/e/a$e;

    move-object/from16 v18, v7

    const/16 v19, 0x0

    iget-object v7, v0, Le/a/b0/i/e/b;->q:Le/a/b0/i/e/a$b;

    move-object/from16 v20, v7

    iget-object v7, v0, Le/a/b0/i/e/b;->r:Le/a/b0/i/e/a$c;

    move-object/from16 v21, v7

    iget-object v7, v0, Le/a/b0/i/e/b;->s:Le/a/b0/i/e/a$a;

    move-object/from16 v22, v7

    const/4 v7, 0x2

    move/from16 v0, v23

    invoke-direct/range {v3 .. v22}, Le/a/b0/i/e/a;-><init>(ILjava/lang/String;IIZZZZLjava/lang/String;Landroid/net/Uri;Ljava/util/Set;Le/a/b0/i/e/a$g;Le/a/b0/i/e/a$f;Le/a/b0/i/e/a$h;Le/a/b0/i/e/a$e;Le/a/b0/i/e/a$d;Le/a/b0/i/e/a$b;Le/a/b0/i/e/a$c;Le/a/b0/i/e/a$a;)V

    .line 23
    iget-object v3, v2, Le/a/b0/i/e/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    const/4 v4, -0x1

    if-gt v3, v4, :cond_d

    .line 24
    iget-object v2, v2, Le/a/b0/i/e/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v3, p0

    .line 25
    iget-object v0, v3, Le/a/b0/i/e/b;->a:Le/a/b0/i/e/d;

    .line 26
    iget-object v0, v0, Le/a/b0/i/e/d;->b:Landroid/content/UriMatcher;

    .line 27
    iget-object v1, v3, Le/a/b0/i/e/b;->b:Ljava/lang/String;

    iget v2, v3, Le/a/b0/i/e/b;->d:I

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    iget-object v0, v3, Le/a/b0/i/e/b;->a:Le/a/b0/i/e/d;

    return-object v0

    :cond_d
    move-object/from16 v3, p0

    .line 29
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Duplicated match, previous match="

    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Le/a/b0/i/e/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", replaced by match="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public d()Landroid/net/Uri;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/i/e/b;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/b0/i/e/b;->c:Ljava/lang/String;

    :cond_0
    const-string v1, "content://"

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/b0/i/e/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e(Z)Le/a/b0/i/e/b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/i/e/b;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f(Z)Le/a/b0/i/e/b;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/i/e/b;->k:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final g(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid conflict resolution method, "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method
