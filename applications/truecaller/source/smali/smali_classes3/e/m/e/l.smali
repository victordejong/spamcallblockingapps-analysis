.class public final Le/m/e/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/m/e/e0/o;

.field public b:Le/m/e/a0;

.field public c:Le/m/e/e;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Le/m/e/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/e/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/e/c0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:I

.field public i:I

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/m/e/e0/o;->c:Le/m/e/e0/o;

    iput-object v0, p0, Le/m/e/l;->a:Le/m/e/e0/o;

    .line 3
    sget-object v0, Le/m/e/a0;->a:Le/m/e/a0;

    iput-object v0, p0, Le/m/e/l;->b:Le/m/e/a0;

    .line 4
    sget-object v0, Le/m/e/d;->a:Le/m/e/d;

    iput-object v0, p0, Le/m/e/l;->c:Le/m/e/e;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/m/e/l;->d:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/e/l;->e:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/e/l;->f:Ljava/util/List;

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Le/m/e/l;->h:I

    .line 9
    iput v0, p0, Le/m/e/l;->i:I

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Le/m/e/l;->j:Z

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Le/m/e/l;->k:Z

    return-void
.end method


# virtual methods
.method public a()Le/m/e/k;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v15, Ljava/util/ArrayList;

    iget-object v1, v0, Le/m/e/l;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, v0, Le/m/e/l;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v15, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    iget-object v1, v0, Le/m/e/l;->e:Ljava/util/List;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {v15}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Le/m/e/l;->f:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 6
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v1, v0, Le/m/e/l;->g:Ljava/lang/String;

    iget v2, v0, Le/m/e/l;->h:I

    iget v3, v0, Le/m/e/l;->i:I

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 9
    new-instance v2, Le/m/e/a;

    const-class v3, Ljava/util/Date;

    invoke-direct {v2, v3, v1}, Le/m/e/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 10
    new-instance v3, Le/m/e/a;

    const-class v4, Ljava/sql/Timestamp;

    invoke-direct {v3, v4, v1}, Le/m/e/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 11
    new-instance v4, Le/m/e/a;

    const-class v5, Ljava/sql/Date;

    invoke-direct {v4, v5, v1}, Le/m/e/a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v2, v1, :cond_1

    if-eq v3, v1, :cond_1

    .line 12
    new-instance v1, Le/m/e/a;

    const-class v4, Ljava/util/Date;

    invoke-direct {v1, v4, v2, v3}, Le/m/e/a;-><init>(Ljava/lang/Class;II)V

    .line 13
    new-instance v4, Le/m/e/a;

    const-class v5, Ljava/sql/Timestamp;

    invoke-direct {v4, v5, v2, v3}, Le/m/e/a;-><init>(Ljava/lang/Class;II)V

    .line 14
    new-instance v5, Le/m/e/a;

    const-class v6, Ljava/sql/Date;

    invoke-direct {v5, v6, v2, v3}, Le/m/e/a;-><init>(Ljava/lang/Class;II)V

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    .line 15
    :goto_0
    const-class v1, Ljava/util/Date;

    .line 16
    sget-object v5, Le/m/e/e0/a0/o;->a:Le/m/e/b0;

    .line 17
    new-instance v5, Le/m/e/e0/a0/q;

    invoke-direct {v5, v1, v2}, Le/m/e/e0/a0/q;-><init>(Ljava/lang/Class;Le/m/e/b0;)V

    .line 18
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    const-class v1, Ljava/sql/Timestamp;

    .line 20
    new-instance v2, Le/m/e/e0/a0/q;

    invoke-direct {v2, v1, v3}, Le/m/e/e0/a0/q;-><init>(Ljava/lang/Class;Le/m/e/b0;)V

    .line 21
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    const-class v1, Ljava/sql/Date;

    .line 23
    new-instance v2, Le/m/e/e0/a0/q;

    invoke-direct {v2, v1, v4}, Le/m/e/e0/a0/q;-><init>(Ljava/lang/Class;Le/m/e/b0;)V

    .line 24
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    :cond_1
    new-instance v19, Le/m/e/k;

    move-object/from16 v1, v19

    iget-object v2, v0, Le/m/e/l;->a:Le/m/e/e0/o;

    iget-object v3, v0, Le/m/e/l;->c:Le/m/e/e;

    iget-object v4, v0, Le/m/e/l;->d:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-boolean v8, v0, Le/m/e/l;->j:Z

    iget-boolean v9, v0, Le/m/e/l;->k:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, v0, Le/m/e/l;->b:Le/m/e/a0;

    iget-object v13, v0, Le/m/e/l;->g:Ljava/lang/String;

    iget v14, v0, Le/m/e/l;->h:I

    iget v5, v0, Le/m/e/l;->i:I

    move-object/from16 v18, v15

    move v15, v5

    iget-object v5, v0, Le/m/e/l;->e:Ljava/util/List;

    move-object/from16 v16, v5

    iget-object v5, v0, Le/m/e/l;->f:Ljava/util/List;

    move-object/from16 v17, v5

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v18}, Le/m/e/k;-><init>(Le/m/e/e0/o;Le/m/e/e;Ljava/util/Map;ZZZZZZZLe/m/e/a0;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public b(Ljava/lang/reflect/Type;Ljava/lang/Object;)Le/m/e/l;
    .locals 6

    .line 1
    instance-of v0, p2, Le/m/e/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    instance-of v3, p2, Le/m/e/p;

    if-nez v3, :cond_1

    instance-of v3, p2, Le/m/e/m;

    if-nez v3, :cond_1

    instance-of v3, p2, Le/m/e/b0;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    invoke-static {v3}, Le/m/d/y/n;->t(Z)V

    .line 2
    instance-of v3, p2, Le/m/e/m;

    if-eqz v3, :cond_2

    .line 3
    iget-object v3, p0, Le/m/e/l;->d:Ljava/util/Map;

    move-object v4, p2

    check-cast v4, Le/m/e/m;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    .line 4
    instance-of v0, p2, Le/m/e/p;

    if-eqz v0, :cond_5

    .line 5
    :cond_3
    invoke-static {p1}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v0

    .line 6
    iget-object v3, p0, Le/m/e/l;->e:Ljava/util/List;

    .line 7
    invoke-virtual {v0}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v0}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 8
    :cond_4
    new-instance v2, Le/m/e/e0/a0/m$c;

    const/4 v4, 0x0

    invoke-direct {v2, p2, v0, v1, v4}, Le/m/e/e0/a0/m$c;-><init>(Ljava/lang/Object;Le/m/e/f0/a;ZLjava/lang/Class;)V

    .line 9
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_5
    instance-of v0, p2, Le/m/e/b0;

    if-eqz v0, :cond_6

    .line 11
    iget-object v0, p0, Le/m/e/l;->e:Ljava/util/List;

    invoke-static {p1}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object p1

    check-cast p2, Le/m/e/b0;

    .line 12
    sget-object v1, Le/m/e/e0/a0/o;->a:Le/m/e/b0;

    .line 13
    new-instance v1, Le/m/e/e0/a0/p;

    invoke-direct {v1, p1, p2}, Le/m/e/e0/a0/p;-><init>(Le/m/e/f0/a;Le/m/e/b0;)V

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object p0
.end method
