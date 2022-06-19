.class public Le/a/j4/b/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic n:I


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/a/b0/p/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/j4/b/c/b;Le/a/b0/p/b;ZZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/a/j4/b/c/e;->i:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Le/a/j4/b/c/e;->j:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Le/a/j4/b/c/e;->k:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Le/a/j4/b/c/e;->l:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Le/a/j4/b/c/e;->m:Ljava/util/Set;

    .line 7
    iget-object v0, p1, Le/a/j4/b/c/b;->l:Le/a/j4/b/b/c;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget v0, v0, Le/a/j4/b/b/c;->n:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Le/a/j4/b/c/e;->b:I

    .line 8
    new-instance v2, Ln3/g/i;

    invoke-direct {v2}, Ln3/g/i;-><init>()V

    .line 9
    iget-object v3, p1, Le/a/j4/b/c/b;->k:Ljava/lang/String;

    .line 10
    iget v4, p2, Le/a/b0/p/b;->a:I

    if-eq v4, v1, :cond_6

    if-eq v0, v4, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    .line 11
    :cond_1
    new-instance v1, Le/a/b0/p/b$e;

    invoke-direct {v1, v3}, Le/a/b0/p/b$e;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 13
    sget-object v4, Le/a/b0/p/b;->d:Le/a/b0/p/b$c;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    :goto_1
    invoke-virtual {v1}, Le/a/b0/p/b$e;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    :cond_2
    :goto_2
    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/p/b$c;

    sget-object v5, Le/a/b0/p/b;->d:Le/a/b0/p/b$c;

    if-eq v4, v5, :cond_3

    .line 16
    invoke-virtual {v4, v1}, Le/a/b0/p/b$c;->a(Ljava/lang/CharSequence;)Le/a/b0/p/b$c;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {p2, v4, v2}, Le/a/b0/p/b;->b(Le/a/b0/p/b$c;Ln3/g/i;)V

    .line 18
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_3
    iget-object v4, p2, Le/a/b0/p/b;->b:Le/a/b0/p/b$c;

    invoke-virtual {v4, v1}, Le/a/b0/p/b$c;->a(Ljava/lang/CharSequence;)Le/a/b0/p/b$c;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 20
    invoke-virtual {p2, v4, v2}, Le/a/b0/p/b;->b(Le/a/b0/p/b$c;Ln3/g/i;)V

    .line 21
    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_5
    invoke-virtual {v2}, Ln3/g/i;->j()I

    :cond_6
    :goto_3
    const/4 p2, 0x0

    move v1, p2

    .line 24
    :goto_4
    invoke-virtual {v2}, Ln3/g/i;->j()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 25
    iget-object v3, p0, Le/a/j4/b/c/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ln3/g/i;->k(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b0/p/a;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 26
    :cond_7
    iget-object v1, p0, Le/a/j4/b/c/e;->i:Ljava/util/ArrayList;

    sget-object v3, Le/a/j4/b/c/a;->a:Le/a/j4/b/c/a;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 27
    invoke-virtual {v2}, Ln3/g/i;->j()I

    move-result v1

    const/4 v3, 0x3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 28
    iget-object v4, p0, Le/a/j4/b/c/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ln3/g/i;->j()I

    move-result v5

    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 29
    invoke-virtual {v2}, Ln3/g/i;->j()I

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {v2, p2}, Ln3/g/i;->k(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/p/a;

    iget v0, v0, Le/a/b0/p/a;->b:I

    .line 30
    :goto_5
    iput v0, p0, Le/a/j4/b/c/e;->a:I

    .line 31
    iget-object v0, p1, Le/a/j4/b/c/b;->m:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/j4/b/c/c;

    .line 33
    iget-object v2, v1, Le/a/j4/b/c/c;->b:Ljava/lang/String;

    .line 34
    sget-object v4, Le/a/b0/q/c0;->a:Ljava/util/List;

    .line 35
    invoke-static {v2}, Lw3/c/a/a/a/h;->l(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x14

    if-ge v2, v4, :cond_a

    move v2, v5

    goto :goto_7

    :cond_a
    move v2, p2

    :goto_7
    if-eqz v2, :cond_9

    .line 36
    iget v2, v1, Le/a/j4/b/c/c;->c:I

    if-ne v2, v5, :cond_b

    .line 37
    iget-object v2, p0, Le/a/j4/b/c/e;->j:Ljava/util/Set;

    iget-object v1, v1, Le/a/j4/b/c/c;->b:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    .line 38
    iget-object v2, p0, Le/a/j4/b/c/e;->k:Ljava/util/Set;

    iget-object v1, v1, Le/a/j4/b/c/c;->b:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    if-ne v2, v3, :cond_9

    .line 39
    iget-object v2, p0, Le/a/j4/b/c/e;->l:Ljava/util/Set;

    iget-object v1, v1, Le/a/j4/b/c/c;->b:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    if-eqz p4, :cond_e

    .line 40
    iget-object p2, p1, Le/a/j4/b/c/b;->n:Ljava/util/List;

    if-eqz p2, :cond_e

    .line 41
    iget-object p4, p0, Le/a/j4/b/c/e;->m:Ljava/util/Set;

    invoke-interface {p4, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    :cond_e
    iget-wide v0, p1, Le/a/j4/b/c/b;->j:J

    iput-wide v0, p0, Le/a/j4/b/c/e;->h:J

    if-eqz p3, :cond_f

    .line 43
    iget-object p2, p1, Le/a/j4/b/c/b;->k:Ljava/lang/String;

    goto :goto_8

    :cond_f
    const/4 p2, 0x0

    :goto_8
    iput-object p2, p0, Le/a/j4/b/c/e;->c:Ljava/lang/String;

    .line 44
    iget-object p1, p1, Le/a/j4/b/c/b;->l:Le/a/j4/b/b/c;

    const-string p3, ""

    if-eqz p1, :cond_10

    iget-object p4, p1, Le/a/j4/b/b/c;->c:Ljava/lang/String;

    goto :goto_9

    :cond_10
    move-object p4, p3

    :goto_9
    iput-object p4, p0, Le/a/j4/b/c/e;->d:Ljava/lang/String;

    if-eqz p1, :cond_11

    .line 45
    iget-object p3, p1, Le/a/j4/b/b/c;->f:Ljava/lang/String;

    :cond_11
    iput-object p3, p0, Le/a/j4/b/c/e;->e:Ljava/lang/String;

    const-string p1, "\u00a7"

    .line 46
    invoke-static {p2, p1, p4, p1, p3}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Le/a/j4/b/c/e;->l:Ljava/util/Set;

    const-string p4, ","

    .line 47
    invoke-static {p4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Le/a/j4/b/c/e;->k:Ljava/util/Set;

    .line 48
    invoke-static {p4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Le/a/j4/b/c/e;->j:Ljava/util/Set;

    .line 49
    invoke-static {p4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Le/a/j4/b/c/e;->m:Ljava/util/Set;

    .line 50
    invoke-static {p4, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Le/a/j4/b/c/e;->a:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    iput-object p1, p0, Le/a/j4/b/c/e;->g:Ljava/lang/String;

    const-string p2, "$this$toMD5"

    .line 52
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "MD5"

    .line 53
    invoke-static {p1, p2}, Le/a/p5/s0/f;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    iput-object p1, p0, Le/a/j4/b/c/e;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Le/m/e/t;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/m/e/t;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static b(Le/m/e/t;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/t;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/m/e/l;

    invoke-direct {v0}, Le/m/e/l;-><init>()V

    invoke-virtual {v0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object v0

    invoke-virtual {v0, p2}, Le/m/e/k;->t(Ljava/lang/Object;)Le/m/e/q;

    move-result-object p2

    .line 3
    invoke-virtual {p2}, Le/m/e/q;->c()Le/m/e/n;

    move-result-object p2

    .line 4
    iget-object p0, p0, Le/m/e/t;->a:Le/m/e/e0/s;

    invoke-virtual {p0, p1, p2}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Le/m/e/t;
    .locals 7

    .line 1
    new-instance v0, Le/m/e/t;

    invoke-direct {v0}, Le/m/e/t;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/j4/b/c/e;->c:Ljava/lang/String;

    const-string v2, "FN"

    invoke-static {v0, v2, v1}, Le/a/j4/b/c/e;->a(Le/m/e/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/j4/b/c/e;->d:Ljava/lang/String;

    const-string v2, "FID"

    invoke-static {v0, v2, v1}, Le/a/j4/b/c/e;->a(Le/m/e/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/j4/b/c/e;->e:Ljava/lang/String;

    const-string v2, "GID"

    invoke-static {v0, v2, v1}, Le/a/j4/b/c/e;->a(Le/m/e/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Le/a/j4/b/c/e;->l:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "TEL_CELL"

    invoke-static {v0, v2, v1}, Le/a/j4/b/c/e;->b(Le/m/e/t;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Le/a/j4/b/c/e;->k:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "TEL_WORK"

    invoke-static {v0, v2, v1}, Le/a/j4/b/c/e;->b(Le/m/e/t;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Le/a/j4/b/c/e;->j:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "TEL_HOME"

    invoke-static {v0, v2, v1}, Le/a/j4/b/c/e;->b(Le/m/e/t;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Le/a/j4/b/c/e;->m:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "EMAIL"

    invoke-static {v0, v2, v1}, Le/a/j4/b/c/e;->b(Le/m/e/t;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 9
    iget-object v1, p0, Le/a/j4/b/c/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 10
    new-instance v1, Le/m/e/n;

    invoke-direct {v1}, Le/m/e/n;-><init>()V

    .line 11
    iget-object v2, p0, Le/a/j4/b/c/e;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/p/a;

    .line 12
    new-instance v4, Le/m/e/t;

    invoke-direct {v4}, Le/m/e/t;-><init>()V

    .line 13
    iget v5, v3, Le/a/b0/p/a;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "tagId"

    invoke-virtual {v4, v6, v5}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 14
    iget-wide v5, v3, Le/a/b0/p/a;->c:D

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const-string v5, "score"

    invoke-virtual {v4, v5, v3}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 16
    iget-object v3, v1, Le/m/e/n;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    new-instance v2, Le/m/e/t;

    invoke-direct {v2}, Le/m/e/t;-><init>()V

    .line 18
    iget v3, p0, Le/a/j4/b/c/e;->a:I

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "version"

    invoke-virtual {v2, v4, v3}, Le/m/e/t;->i(Ljava/lang/String;Ljava/lang/Number;)V

    .line 20
    iget-object v3, v2, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v4, "tags"

    invoke-virtual {v3, v4, v1}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v1, v0, Le/m/e/t;->a:Le/m/e/e0/s;

    const-string v3, "autoTag"

    invoke-virtual {v1, v3, v2}, Le/m/e/e0/s;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_1
    iget-object v1, p0, Le/a/j4/b/c/e;->f:Ljava/lang/String;

    const-string v2, "CONTACT_ID"

    invoke-static {v0, v2, v1}, Le/a/j4/b/c/e;->a(Le/m/e/t;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Ugc{mAutoTagVersion="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/a/j4/b/c/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMetaDataAutoTagVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/j4/b/c/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUgcId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/j4/b/c/e;->f:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", mContactId="

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->P0(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-wide v1, p0, Le/a/j4/b/c/e;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
