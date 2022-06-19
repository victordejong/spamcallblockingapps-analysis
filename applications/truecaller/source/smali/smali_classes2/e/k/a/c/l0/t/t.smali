.class public Le/k/a/c/l0/t/t;
.super Le/k/a/c/l0/h;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/h<",
        "Ljava/util/Map<",
        "**>;>;",
        "Le/k/a/c/l0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final r:Le/k/a/c/i;

.field public static final s:Ljava/lang/Object;


# instance fields
.field public final c:Le/k/a/c/d;

.field public final d:Z

.field public final e:Le/k/a/c/i;

.field public final f:Le/k/a/c/i;

.field public g:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public h:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/k/a/c/j0/h;

.field public j:Le/k/a/c/l0/s/l;

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

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;

.field public final o:Z

.field public final p:Le/k/a/c/n0/l;

.field public final q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object v0

    sput-object v0, Le/k/a/c/l0/t/t;->r:Le/k/a/c/i;

    .line 2
    sget-object v0, Le/k/a/a/r$a;->d:Le/k/a/a/r$a;

    sput-object v0, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/t;Le/k/a/c/d;Le/k/a/c/n;Le/k/a/c/n;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/t;",
            "Le/k/a/c/d;",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/n<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Le/k/a/c/l0/h;-><init>(Ljava/lang/Class;Z)V

    if-eqz p5, :cond_0

    .line 18
    invoke-interface {p5}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 p5, 0x0

    :cond_1
    iput-object p5, p0, Le/k/a/c/l0/t/t;->k:Ljava/util/Set;

    .line 19
    iput-object p6, p0, Le/k/a/c/l0/t/t;->l:Ljava/util/Set;

    .line 20
    iget-object v0, p1, Le/k/a/c/l0/t/t;->e:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->e:Le/k/a/c/i;

    .line 21
    iget-object v0, p1, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    .line 22
    iget-boolean v0, p1, Le/k/a/c/l0/t/t;->d:Z

    iput-boolean v0, p0, Le/k/a/c/l0/t/t;->d:Z

    .line 23
    iget-object v0, p1, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    .line 24
    iput-object p3, p0, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    .line 25
    iput-object p4, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    .line 26
    sget-object p3, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p3, p0, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    .line 27
    iput-object p2, p0, Le/k/a/c/l0/t/t;->c:Le/k/a/c/d;

    .line 28
    iget-object p2, p1, Le/k/a/c/l0/t/t;->m:Ljava/lang/Object;

    iput-object p2, p0, Le/k/a/c/l0/t/t;->m:Ljava/lang/Object;

    .line 29
    iget-boolean p2, p1, Le/k/a/c/l0/t/t;->q:Z

    iput-boolean p2, p0, Le/k/a/c/l0/t/t;->q:Z

    .line 30
    iget-object p2, p1, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    iput-object p2, p0, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    .line 31
    iget-boolean p1, p1, Le/k/a/c/l0/t/t;->o:Z

    iput-boolean p1, p0, Le/k/a/c/l0/t/t;->o:Z

    .line 32
    invoke-static {p5, p6}, Ln3/g0/y;->o(Ljava/util/Set;Ljava/util/Set;)Le/k/a/c/n0/l;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/t;Le/k/a/c/j0/h;Ljava/lang/Object;Z)V
    .locals 2

    .line 33
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Le/k/a/c/l0/h;-><init>(Ljava/lang/Class;Z)V

    .line 34
    iget-object v0, p1, Le/k/a/c/l0/t/t;->k:Ljava/util/Set;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->k:Ljava/util/Set;

    .line 35
    iget-object v0, p1, Le/k/a/c/l0/t/t;->l:Ljava/util/Set;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->l:Ljava/util/Set;

    .line 36
    iget-object v0, p1, Le/k/a/c/l0/t/t;->e:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->e:Le/k/a/c/i;

    .line 37
    iget-object v0, p1, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    .line 38
    iget-boolean v0, p1, Le/k/a/c/l0/t/t;->d:Z

    iput-boolean v0, p0, Le/k/a/c/l0/t/t;->d:Z

    .line 39
    iput-object p2, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    .line 40
    iget-object p2, p1, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    iput-object p2, p0, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    .line 41
    iget-object p2, p1, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    iput-object p2, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    .line 42
    iget-object p2, p1, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    iput-object p2, p0, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    .line 43
    iget-object p2, p1, Le/k/a/c/l0/t/t;->c:Le/k/a/c/d;

    iput-object p2, p0, Le/k/a/c/l0/t/t;->c:Le/k/a/c/d;

    .line 44
    iget-object p2, p1, Le/k/a/c/l0/t/t;->m:Ljava/lang/Object;

    iput-object p2, p0, Le/k/a/c/l0/t/t;->m:Ljava/lang/Object;

    .line 45
    iget-boolean p2, p1, Le/k/a/c/l0/t/t;->q:Z

    iput-boolean p2, p0, Le/k/a/c/l0/t/t;->q:Z

    .line 46
    iput-object p3, p0, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    .line 47
    iput-boolean p4, p0, Le/k/a/c/l0/t/t;->o:Z

    .line 48
    iget-object p1, p1, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    iput-object p1, p0, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/t;Ljava/lang/Object;Z)V
    .locals 2

    .line 49
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Le/k/a/c/l0/h;-><init>(Ljava/lang/Class;Z)V

    .line 50
    iget-object v0, p1, Le/k/a/c/l0/t/t;->k:Ljava/util/Set;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->k:Ljava/util/Set;

    .line 51
    iget-object v0, p1, Le/k/a/c/l0/t/t;->l:Ljava/util/Set;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->l:Ljava/util/Set;

    .line 52
    iget-object v0, p1, Le/k/a/c/l0/t/t;->e:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->e:Le/k/a/c/i;

    .line 53
    iget-object v0, p1, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    .line 54
    iget-boolean v0, p1, Le/k/a/c/l0/t/t;->d:Z

    iput-boolean v0, p0, Le/k/a/c/l0/t/t;->d:Z

    .line 55
    iget-object v0, p1, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    .line 56
    iget-object v0, p1, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    .line 57
    iget-object v0, p1, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    .line 58
    sget-object v0, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    .line 59
    iget-object v0, p1, Le/k/a/c/l0/t/t;->c:Le/k/a/c/d;

    iput-object v0, p0, Le/k/a/c/l0/t/t;->c:Le/k/a/c/d;

    .line 60
    iput-object p2, p0, Le/k/a/c/l0/t/t;->m:Ljava/lang/Object;

    .line 61
    iput-boolean p3, p0, Le/k/a/c/l0/t/t;->q:Z

    .line 62
    iget-object p2, p1, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    iput-object p2, p0, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    .line 63
    iget-boolean p2, p1, Le/k/a/c/l0/t/t;->o:Z

    iput-boolean p2, p0, Le/k/a/c/l0/t/t;->o:Z

    .line 64
    iget-object p1, p1, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    iput-object p1, p0, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;Le/k/a/c/i;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Le/k/a/c/i;",
            "Le/k/a/c/i;",
            "Z",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;",
            "Le/k/a/c/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Le/k/a/c/l0/h;-><init>(Ljava/lang/Class;Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object p1, v0

    :cond_1
    iput-object p1, p0, Le/k/a/c/l0/t/t;->k:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Le/k/a/c/l0/t/t;->l:Ljava/util/Set;

    .line 4
    iput-object p3, p0, Le/k/a/c/l0/t/t;->e:Le/k/a/c/i;

    .line 5
    iput-object p4, p0, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    .line 6
    iput-boolean p5, p0, Le/k/a/c/l0/t/t;->d:Z

    .line 7
    iput-object p6, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    .line 8
    iput-object p7, p0, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    .line 9
    iput-object p8, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    .line 10
    sget-object p3, Le/k/a/c/l0/s/l$b;->b:Le/k/a/c/l0/s/l$b;

    iput-object p3, p0, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    .line 11
    iput-object v0, p0, Le/k/a/c/l0/t/t;->c:Le/k/a/c/d;

    .line 12
    iput-object v0, p0, Le/k/a/c/l0/t/t;->m:Ljava/lang/Object;

    .line 13
    iput-boolean v1, p0, Le/k/a/c/l0/t/t;->q:Z

    .line 14
    iput-object v0, p0, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    .line 15
    iput-boolean v1, p0, Le/k/a/c/l0/t/t;->o:Z

    .line 16
    invoke-static {p1, p2}, Ln3/g0/y;->o(Ljava/util/Set;Ljava/util/Set;)Le/k/a/c/n0/l;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    return-void
.end method

.method public static r(Ljava/util/Set;Ljava/util/Set;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n;Ljava/lang/Object;)Le/k/a/c/l0/t/t;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Le/k/a/c/i;",
            "Z",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Le/k/a/c/l0/t/t;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1
    sget-object v0, Le/k/a/c/l0/t/t;->r:Le/k/a/c/i;

    move-object v8, v0

    move-object v9, v8

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->o()Le/k/a/c/i;

    move-result-object v4

    .line 3
    const-class v5, Ljava/util/Properties;

    .line 4
    iget-object v6, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v6, v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    if-eqz v5, :cond_2

    .line 5
    invoke-static {}, Le/k/a/c/m0/o;->p()Le/k/a/c/i;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v0

    :goto_1
    move-object v9, v0

    move-object v8, v4

    :goto_2
    if-nez p3, :cond_4

    if-eqz v9, :cond_3

    .line 7
    invoke-virtual {v9}, Le/k/a/c/i;->C()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    move v10, v2

    goto :goto_4

    .line 8
    :cond_4
    iget-object v0, v9, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 9
    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_5

    move v10, v3

    goto :goto_4

    :cond_5
    move/from16 v10, p3

    .line 10
    :goto_4
    new-instance v0, Le/k/a/c/l0/t/t;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v5 .. v13}, Le/k/a/c/l0/t/t;-><init>(Ljava/util/Set;Ljava/util/Set;Le/k/a/c/i;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/n;Le/k/a/c/n;)V

    if-eqz v1, :cond_6

    .line 11
    const-class v2, Le/k/a/c/l0/t/t;

    const-string v3, "withFilterId"

    invoke-static {v2, v0, v3}, Le/k/a/c/n0/g;->M(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v2, Le/k/a/c/l0/t/t;

    iget-boolean v3, v0, Le/k/a/c/l0/t/t;->q:Z

    invoke-direct {v2, v0, v1, v3}, Le/k/a/c/l0/t/t;-><init>(Le/k/a/c/l0/t/t;Ljava/lang/Object;Z)V

    move-object v0, v2

    :cond_6
    return-object v0
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v9, :cond_0

    move-object v12, v11

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface/range {p2 .. p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v0

    move-object v12, v0

    .line 3
    :goto_0
    invoke-static {v12, v10}, Le/k/a/c/l0/t/q0;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {v10, v12}, Le/k/a/c/b;->s(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v8, v12, v0}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v11

    .line 6
    :goto_1
    invoke-virtual {v10, v12}, Le/k/a/c/b;->d(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v8, v12, v1}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v11

    goto :goto_2

    :cond_3
    move-object v0, v11

    move-object v1, v0

    :goto_2
    if-nez v1, :cond_4

    .line 8
    iget-object v1, v7, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    .line 9
    :cond_4
    invoke-virtual {v7, v8, v9, v1}, Le/k/a/c/l0/t/q0;->k(Le/k/a/c/a0;Le/k/a/c/d;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object v1

    if-nez v1, :cond_5

    .line 10
    iget-boolean v2, v7, Le/k/a/c/l0/t/t;->d:Z

    if-eqz v2, :cond_5

    iget-object v2, v7, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    invoke-virtual {v2}, Le/k/a/c/i;->E()Z

    move-result v2

    if-nez v2, :cond_5

    .line 11
    iget-object v1, v7, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    invoke-virtual {v8, v1, v9}, Le/k/a/c/a0;->u(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v1

    :cond_5
    move-object v4, v1

    if-nez v0, :cond_6

    .line 12
    iget-object v0, v7, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    :cond_6
    if-nez v0, :cond_7

    .line 13
    iget-object v0, v7, Le/k/a/c/l0/t/t;->e:Le/k/a/c/i;

    invoke-virtual {v8, v0, v9}, Le/k/a/c/a0;->w(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v0

    goto :goto_3

    .line 14
    :cond_7
    invoke-virtual {v8, v0, v9}, Le/k/a/c/a0;->I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v0

    :goto_3
    move-object v3, v0

    .line 15
    iget-object v0, v7, Le/k/a/c/l0/t/t;->k:Ljava/util/Set;

    .line 16
    iget-object v1, v7, Le/k/a/c/l0/t/t;->l:Ljava/util/Set;

    .line 17
    invoke-static {v12, v10}, Le/k/a/c/l0/t/q0;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_d

    .line 18
    iget-object v2, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 19
    invoke-virtual {v10, v2, v12}, Le/k/a/c/b;->H(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/p$a;

    move-result-object v5

    invoke-virtual {v5}, Le/k/a/a/p$a;->e()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 20
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v13

    goto :goto_4

    :cond_8
    const/4 v6, 0x0

    :goto_4
    if-eqz v6, :cond_a

    if-nez v0, :cond_9

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_5

    :cond_9
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v0, v6

    .line 22
    :goto_5
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 23
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 24
    :cond_a
    invoke-virtual {v10, v2, v12}, Le/k/a/c/b;->K(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/s$a;

    move-result-object v2

    .line 25
    iget-object v2, v2, Le/k/a/a/s$a;->a:Ljava/util/Set;

    if-eqz v2, :cond_c

    if-nez v1, :cond_b

    .line 26
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_7

    :cond_b
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v1, v5

    .line 27
    :goto_7
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 28
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 29
    :cond_c
    invoke-virtual {v10, v12}, Le/k/a/c/b;->T(Le/k/a/c/g0/b;)Ljava/lang/Boolean;

    move-result-object v2

    .line 30
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object v5, v0

    move-object v6, v1

    goto :goto_9

    :cond_d
    move-object v5, v0

    move-object v6, v1

    const/4 v2, 0x0

    .line 31
    :goto_9
    const-class v0, Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v0}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 32
    sget-object v1, Le/k/a/a/k$a;->g:Le/k/a/a/k$a;

    invoke-virtual {v0, v1}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_e
    move v15, v2

    .line 34
    const-class v0, Le/k/a/c/l0/t/t;

    const-string v1, "withResolved"

    invoke-static {v0, v7, v1}, Le/k/a/c/n0/g;->M(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v2, Le/k/a/c/l0/t/t;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v14, v2

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Le/k/a/c/l0/t/t;-><init>(Le/k/a/c/l0/t/t;Le/k/a/c/d;Le/k/a/c/n;Le/k/a/c/n;Ljava/util/Set;Ljava/util/Set;)V

    .line 36
    iget-boolean v0, v14, Le/k/a/c/l0/t/t;->q:Z

    if-eq v15, v0, :cond_f

    .line 37
    new-instance v2, Le/k/a/c/l0/t/t;

    iget-object v0, v7, Le/k/a/c/l0/t/t;->m:Ljava/lang/Object;

    invoke-direct {v2, v14, v0, v15}, Le/k/a/c/l0/t/t;-><init>(Le/k/a/c/l0/t/t;Ljava/lang/Object;Z)V

    goto :goto_a

    :cond_f
    move-object v2, v14

    :goto_a
    if-eqz v12, :cond_11

    .line 38
    invoke-virtual {v10, v12}, Le/k/a/c/b;->m(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 39
    iget-object v1, v2, Le/k/a/c/l0/t/t;->m:Ljava/lang/Object;

    if-ne v1, v0, :cond_10

    goto :goto_b

    .line 40
    :cond_10
    const-class v1, Le/k/a/c/l0/t/t;

    const-string v3, "withFilterId"

    invoke-static {v1, v2, v3}, Le/k/a/c/n0/g;->M(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v1, Le/k/a/c/l0/t/t;

    iget-boolean v3, v2, Le/k/a/c/l0/t/t;->q:Z

    invoke-direct {v1, v2, v0, v3}, Le/k/a/c/l0/t/t;-><init>(Le/k/a/c/l0/t/t;Ljava/lang/Object;Z)V

    move-object v2, v1

    .line 42
    :cond_11
    :goto_b
    const-class v0, Ljava/util/Map;

    if-eqz v9, :cond_12

    .line 43
    iget-object v1, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 44
    invoke-interface {v9, v1, v0}, Le/k/a/c/d;->f(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object v0

    goto :goto_c

    .line 45
    :cond_12
    iget-object v1, v8, Le/k/a/c/a0;->a:Le/k/a/c/y;

    invoke-virtual {v1, v0}, Le/k/a/c/c0/l;->i(Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_1a

    .line 46
    iget-object v1, v0, Le/k/a/a/r$b;->b:Le/k/a/a/r$a;

    .line 47
    sget-object v3, Le/k/a/a/r$a;->g:Le/k/a/a/r$a;

    if-eq v1, v3, :cond_1a

    .line 48
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eq v1, v13, :cond_19

    const/4 v3, 0x2

    if-eq v1, v3, :cond_17

    const/4 v3, 0x3

    if-eq v1, v3, :cond_16

    const/4 v3, 0x4

    if-eq v1, v3, :cond_15

    const/4 v3, 0x5

    if-eq v1, v3, :cond_13

    const/4 v13, 0x0

    goto :goto_e

    .line 49
    :cond_13
    iget-object v0, v0, Le/k/a/a/r$b;->d:Ljava/lang/Class;

    .line 50
    invoke-virtual {v8, v11, v0}, Le/k/a/c/a0;->J(Le/k/a/c/g0/s;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_14

    goto :goto_e

    .line 51
    :cond_14
    invoke-virtual {v8, v11}, Le/k/a/c/a0;->K(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_e

    .line 52
    :cond_15
    iget-object v0, v7, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    invoke-static {v0}, Ln3/g0/y;->i0(Le/k/a/c/i;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 54
    invoke-static {v0}, Le/k/a/c/n0/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    .line 55
    :cond_16
    sget-object v0, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    goto :goto_d

    .line 56
    :cond_17
    iget-object v0, v7, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/b/z/a;->d()Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    :cond_18
    :goto_d
    move-object v11, v0

    .line 57
    :cond_19
    :goto_e
    invoke-virtual {v2, v11, v13}, Le/k/a/c/l0/t/t;->u(Ljava/lang/Object;Z)Le/k/a/c/l0/t/t;

    move-result-object v2

    :cond_1a
    return-object v2
.end method

.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 7

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 4
    iget-boolean v3, p0, Le/k/a/c/l0/t/t;->o:Z

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    move v1, v2

    goto/16 :goto_4

    .line 5
    :cond_2
    iget-object v3, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    .line 6
    sget-object v4, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    if-ne v4, v0, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-eqz v3, :cond_7

    .line 7
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 8
    iget-boolean v6, p0, Le/k/a/c/l0/t/t;->o:Z

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_5
    if-eqz v4, :cond_6

    .line 9
    invoke-virtual {v3, p1, v6}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    .line 11
    :cond_7
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_9

    .line 12
    iget-boolean v5, p0, Le/k/a/c/l0/t/t;->o:Z

    if-eqz v5, :cond_1

    goto :goto_3

    .line 13
    :cond_9
    :try_start_0
    invoke-virtual {p0, p1, v5}, Le/k/a/c/l0/t/t;->q(Le/k/a/c/a0;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v6
    :try_end_0
    .catch Le/k/a/c/k; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_a

    .line 14
    invoke-virtual {v6, p1, v5}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_0

    :cond_a
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    :catch_0
    goto :goto_0

    :cond_b
    :goto_4
    return v1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    invoke-virtual {p2, p1}, Le/k/a/b/g;->O1(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/t;->t(Ljava/util/Map;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 4
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/util/Map;

    .line 2
    invoke-virtual {p2, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Le/k/a/b/m;->j:Le/k/a/b/m;

    .line 4
    invoke-virtual {p4, p1, v0}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v0

    .line 5
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/t;->t(Ljava/util/Map;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 7
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public p(Le/k/a/c/j0/h;)Le/k/a/c/l0/h;
    .locals 3

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    const-class v0, Le/k/a/c/l0/t/t;

    const-string v1, "_withValueTypeSerializer"

    invoke-static {v0, p0, v1}, Le/k/a/c/n0/g;->M(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/k/a/c/l0/t/t;

    iget-object v1, p0, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    iget-boolean v2, p0, Le/k/a/c/l0/t/t;->o:Z

    invoke-direct {v0, p0, p1, v1, v2}, Le/k/a/c/l0/t/t;-><init>(Le/k/a/c/l0/t/t;Le/k/a/c/j0/h;Ljava/lang/Object;Z)V

    :goto_0
    return-object v0
.end method

.method public final q(Le/k/a/c/a0;Ljava/lang/Object;)Le/k/a/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Ljava/lang/Object;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 2
    iget-object v0, p0, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    invoke-virtual {v0, p2}, Le/k/a/c/l0/s/l;->c(Ljava/lang/Class;)Le/k/a/c/n;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    invoke-virtual {v0}, Le/k/a/c/i;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    iget-object v1, p0, Le/k/a/c/l0/t/t;->f:Le/k/a/c/i;

    .line 5
    invoke-virtual {p1, v1, p2}, Le/k/a/c/a0;->s(Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object p2

    .line 6
    iget-object v1, p0, Le/k/a/c/l0/t/t;->c:Le/k/a/c/d;

    invoke-virtual {v0, p2, p1, v1}, Le/k/a/c/l0/s/l;->a(Le/k/a/c/i;Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/l0/s/l$d;

    move-result-object p1

    .line 7
    iget-object p2, p1, Le/k/a/c/l0/s/l$d;->b:Le/k/a/c/l0/s/l;

    if-eq v0, p2, :cond_1

    .line 8
    iput-object p2, p0, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    .line 9
    :cond_1
    iget-object p1, p1, Le/k/a/c/l0/s/l$d;->a:Le/k/a/c/n;

    return-object p1

    .line 10
    :cond_2
    iget-object v0, p0, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    .line 11
    iget-object v1, p0, Le/k/a/c/l0/t/t;->c:Le/k/a/c/d;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1, p2, v1}, Le/k/a/c/a0;->v(Ljava/lang/Class;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    .line 14
    invoke-virtual {v0, p2, p1}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object p2

    if-eq v0, p2, :cond_3

    .line 15
    iput-object p2, p0, Le/k/a/c/l0/t/t;->j:Le/k/a/c/l0/s/l;

    :cond_3
    return-object p1
.end method

.method public s(Ljava/util/Map;Le/k/a/b/g;Le/k/a/c/a0;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4
    iget-object v4, p3, Le/k/a/c/a0;->i:Le/k/a/c/n;

    goto :goto_2

    .line 5
    :cond_1
    iget-object v4, p0, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Le/k/a/c/n0/l;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v4, p0, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    .line 7
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 8
    iget-boolean v5, p0, Le/k/a/c/l0/t/t;->o:Z

    if-eqz v5, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v5, p3, Le/k/a/c/a0;->h:Le/k/a/c/n;

    goto :goto_3

    .line 10
    :cond_4
    iget-object v5, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    if-nez v5, :cond_5

    .line 11
    invoke-virtual {p0, p3, v2}, Le/k/a/c/l0/t/t;->q(Le/k/a/c/a0;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v5

    :cond_5
    if-eqz v0, :cond_6

    .line 12
    invoke-virtual {v5, p3, v2}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    :cond_6
    if-eqz p4, :cond_7

    .line 13
    invoke-virtual {p4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 14
    :cond_7
    :goto_3
    invoke-virtual {v4, v3, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 15
    :try_start_0
    iget-object v4, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    invoke-virtual {v5, v2, p2, p3, v4}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 16
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p3, p2, p1, p4}, Le/k/a/c/l0/t/q0;->o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_8
    return-void
.end method

.method public t(Ljava/util/Map;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Le/k/a/b/g;",
            "Le/k/a/c/a0;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 2
    iget-boolean v0, p0, Le/k/a/c/l0/t/t;->q:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    sget-object v0, Le/k/a/c/z;->y:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3
    :cond_0
    instance-of v0, p1, Ljava/util/SortedMap;

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 4
    :cond_1
    instance-of v0, p1, Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_9

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    .line 8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 9
    iget-object v5, p3, Le/k/a/c/a0;->i:Le/k/a/c/n;

    if-nez v4, :cond_4

    .line 10
    iget-boolean v6, p0, Le/k/a/c/l0/t/t;->o:Z

    if-eqz v6, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object v6, p3, Le/k/a/c/a0;->h:Le/k/a/c/n;

    goto :goto_2

    .line 12
    :cond_4
    iget-object v6, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    if-nez v6, :cond_5

    .line 13
    invoke-virtual {p0, p3, v4}, Le/k/a/c/l0/t/t;->q(Le/k/a/c/a0;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v6

    .line 14
    :cond_5
    iget-object v7, p0, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    sget-object v8, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    if-ne v7, v8, :cond_6

    .line 15
    invoke-virtual {v6, p3, v4}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v7, :cond_7

    .line 16
    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_1

    .line 17
    :cond_7
    :goto_2
    :try_start_0
    invoke-virtual {v5, v3, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 18
    invoke-virtual {v6, v4, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, ""

    .line 19
    invoke-virtual {p0, p3, p1, v4, p2}, Le/k/a/c/l0/t/q0;->o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 20
    :cond_8
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 21
    :cond_9
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    :cond_a
    move-object p1, v0

    .line 22
    :cond_b
    :goto_3
    iget-object v0, p0, Le/k/a/c/l0/t/t;->m:Ljava/lang/Object;

    if-nez v0, :cond_21

    .line 23
    iget-object v0, p0, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    if-nez v0, :cond_17

    iget-boolean v4, p0, Le/k/a/c/l0/t/t;->o:Z

    if-eqz v4, :cond_c

    goto/16 :goto_9

    .line 24
    :cond_c
    iget-object v0, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    if-eqz v0, :cond_11

    .line 25
    iget-object v1, p0, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    .line 26
    iget-object v2, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    .line 27
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 29
    iget-object v7, p0, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    if-eqz v7, :cond_d

    invoke-virtual {v7, v6}, Le/k/a/c/n0/l;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_4

    :cond_d
    if-nez v6, :cond_e

    .line 30
    iget-object v7, p3, Le/k/a/c/a0;->i:Le/k/a/c/n;

    .line 31
    invoke-virtual {v7, v3, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_5

    .line 32
    :cond_e
    invoke-virtual {v1, v6, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 33
    :goto_5
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_f

    .line 34
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_4

    :cond_f
    if-nez v2, :cond_10

    .line 35
    :try_start_1
    invoke-virtual {v0, v5, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_4

    .line 36
    :cond_10
    invoke-virtual {v0, v5, p2, p3, v2}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    .line 37
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, p2, p1, v0}, Le/k/a/c/l0/t/q0;->o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 38
    :cond_11
    iget-object v0, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    if-eqz v0, :cond_12

    .line 39
    invoke-virtual {p0, p1, p2, p3, v3}, Le/k/a/c/l0/t/t;->s(Ljava/util/Map;Le/k/a/b/g;Le/k/a/c/a0;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 40
    :cond_12
    iget-object v0, p0, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    .line 41
    :try_start_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    :goto_6
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 42
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 43
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13

    .line 44
    iget-object v4, p3, Le/k/a/c/a0;->i:Le/k/a/c/n;

    .line 45
    invoke-virtual {v4, v3, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    goto :goto_7

    .line 46
    :cond_13
    iget-object v4, p0, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    if-eqz v4, :cond_14

    invoke-virtual {v4, v2}, Le/k/a/c/n0/l;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_6

    .line 47
    :cond_14
    invoke-virtual {v0, v2, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :goto_7
    if-nez v5, :cond_15

    .line 48
    invoke-virtual {p3, p2}, Le/k/a/c/a0;->t(Le/k/a/b/g;)V

    goto :goto_6

    .line 49
    :cond_15
    iget-object v4, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    if-nez v4, :cond_16

    .line 50
    invoke-virtual {p0, p3, v5}, Le/k/a/c/l0/t/t;->q(Le/k/a/c/a0;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v4

    .line 51
    :cond_16
    invoke-virtual {v4, v5, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception p2

    goto :goto_8

    :catch_3
    move-exception p2

    move-object v2, v3

    .line 52
    :goto_8
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, p2, p1, v0}, Le/k/a/c/l0/t/q0;->o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_17
    :goto_9
    iget-object v4, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    if-eqz v4, :cond_18

    .line 54
    invoke-virtual {p0, p1, p2, p3, v0}, Le/k/a/c/l0/t/t;->s(Ljava/util/Map;Le/k/a/b/g;Le/k/a/c/a0;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 55
    :cond_18
    sget-object v4, Le/k/a/c/l0/t/t;->s:Ljava/lang/Object;

    if-ne v4, v0, :cond_19

    goto :goto_a

    :cond_19
    move v1, v2

    .line 56
    :goto_a
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 57
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1a

    .line 58
    iget-object v6, p3, Le/k/a/c/a0;->i:Le/k/a/c/n;

    goto :goto_c

    .line 59
    :cond_1a
    iget-object v6, p0, Le/k/a/c/l0/t/t;->p:Le/k/a/c/n0/l;

    if-eqz v6, :cond_1b

    invoke-virtual {v6, v5}, Le/k/a/c/n0/l;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_b

    .line 60
    :cond_1b
    iget-object v6, p0, Le/k/a/c/l0/t/t;->g:Le/k/a/c/n;

    .line 61
    :goto_c
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 62
    iget-boolean v7, p0, Le/k/a/c/l0/t/t;->o:Z

    if-eqz v7, :cond_1c

    goto :goto_b

    .line 63
    :cond_1c
    iget-object v7, p3, Le/k/a/c/a0;->h:Le/k/a/c/n;

    goto :goto_d

    .line 64
    :cond_1d
    iget-object v7, p0, Le/k/a/c/l0/t/t;->h:Le/k/a/c/n;

    if-nez v7, :cond_1e

    .line 65
    invoke-virtual {p0, p3, v4}, Le/k/a/c/l0/t/t;->q(Le/k/a/c/a0;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v7

    :cond_1e
    if-eqz v1, :cond_1f

    .line 66
    invoke-virtual {v7, p3, v4}, Le/k/a/c/n;->d(Le/k/a/c/a0;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_b

    :cond_1f
    if-eqz v0, :cond_20

    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_b

    .line 68
    :cond_20
    :goto_d
    :try_start_4
    invoke-virtual {v6, v5, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 69
    invoke-virtual {v7, v4, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception p2

    .line 70
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, p2, p1, v0}, Le/k/a/c/l0/t/q0;->o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_21
    invoke-virtual {p0, p3, v0, p1}, Le/k/a/c/l0/t/q0;->m(Le/k/a/c/a0;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/l0/l;

    throw v3

    :cond_22
    :goto_e
    return-void
.end method

.method public u(Ljava/lang/Object;Z)Le/k/a/c/l0/t/t;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/t;->n:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Le/k/a/c/l0/t/t;->o:Z

    if-ne p2, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    const-class v0, Le/k/a/c/l0/t/t;

    const-string v1, "withContentInclusion"

    invoke-static {v0, p0, v1}, Le/k/a/c/n0/g;->M(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/k/a/c/l0/t/t;

    iget-object v1, p0, Le/k/a/c/l0/t/t;->i:Le/k/a/c/j0/h;

    invoke-direct {v0, p0, v1, p1, p2}, Le/k/a/c/l0/t/t;-><init>(Le/k/a/c/l0/t/t;Le/k/a/c/j0/h;Ljava/lang/Object;Z)V

    return-object v0
.end method
