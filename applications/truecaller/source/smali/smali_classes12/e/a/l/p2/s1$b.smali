.class public final Le/a/l/p2/s1$b;
.super Le/a/l/p2/s1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/p2/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/a/l/p2/x;

.field public final b:Z

.field public final c:Z

.field public final d:Le/a/l/n2/f;

.field public final e:Le/a/l/n2/f;

.field public final f:Le/a/l/n2/f;

.field public final g:Le/a/l/n2/f;

.field public final h:Le/a/l/n2/f;

.field public final i:Le/a/l/n2/f;

.field public final j:Le/a/l/n2/f;

.field public final k:Le/a/l/n2/f;

.field public final l:Le/a/l/n2/f;

.field public final m:Le/a/l/n2/f;

.field public final n:Le/a/l/n2/f;

.field public final o:Le/a/l/n2/f;

.field public final p:Le/a/l/n2/f;

.field public final q:Le/a/l/n2/f;

.field public final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/lang/String;

.field public final t:Le/a/l/p2/h1;

.field public final u:Le/a/l/n2/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/x;ZZLe/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/h1;Le/a/l/n2/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/x;",
            "ZZ",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Le/a/l/n2/f;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Le/a/l/p2/h1;",
            "Le/a/l/n2/f;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p20

    const-string v3, "premium"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "theme"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2
    invoke-direct {p0, v3}, Le/a/l/p2/s1;-><init>(Ls1/z/c/f;)V

    iput-object v1, v0, Le/a/l/p2/s1$b;->a:Le/a/l/p2/x;

    move v1, p2

    iput-boolean v1, v0, Le/a/l/p2/s1$b;->b:Z

    move v1, p3

    iput-boolean v1, v0, Le/a/l/p2/s1$b;->c:Z

    move-object v1, p4

    iput-object v1, v0, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    move-object v1, p5

    iput-object v1, v0, Le/a/l/p2/s1$b;->e:Le/a/l/n2/f;

    move-object v1, p6

    iput-object v1, v0, Le/a/l/p2/s1$b;->f:Le/a/l/n2/f;

    move-object v1, p7

    iput-object v1, v0, Le/a/l/p2/s1$b;->g:Le/a/l/n2/f;

    move-object v1, p8

    iput-object v1, v0, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    move-object v1, p9

    iput-object v1, v0, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    move-object v1, p10

    iput-object v1, v0, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    move-object v1, p11

    iput-object v1, v0, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    move-object/from16 v1, p12

    iput-object v1, v0, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    move-object/from16 v1, p13

    iput-object v1, v0, Le/a/l/p2/s1$b;->m:Le/a/l/n2/f;

    move-object/from16 v1, p14

    iput-object v1, v0, Le/a/l/p2/s1$b;->n:Le/a/l/n2/f;

    move-object/from16 v1, p15

    iput-object v1, v0, Le/a/l/p2/s1$b;->o:Le/a/l/n2/f;

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/l/p2/s1$b;->p:Le/a/l/n2/f;

    move-object/from16 v1, p17

    iput-object v1, v0, Le/a/l/p2/s1$b;->q:Le/a/l/n2/f;

    move-object/from16 v1, p18

    iput-object v1, v0, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    move-object/from16 v1, p19

    iput-object v1, v0, Le/a/l/p2/s1$b;->s:Ljava/lang/String;

    iput-object v2, v0, Le/a/l/p2/s1$b;->t:Le/a/l/p2/h1;

    move-object/from16 v1, p21

    iput-object v1, v0, Le/a/l/p2/s1$b;->u:Le/a/l/n2/f;

    return-void
.end method

.method public synthetic constructor <init>(Le/a/l/p2/x;ZZLe/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/h1;Le/a/l/n2/f;I)V
    .locals 25

    move/from16 v0, p22

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    const/4 v8, 0x0

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v15, v2

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object/from16 v16, v2

    goto :goto_a

    :cond_a
    move-object/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v2

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v20, v2

    goto :goto_e

    :cond_e
    move-object/from16 v20, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v21, v2

    goto :goto_f

    :cond_f
    move-object/from16 v21, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v22, v2

    goto :goto_10

    :cond_10
    move-object/from16 v22, p19

    :goto_10
    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    const/16 v24, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v23, p20

    .line 1
    invoke-direct/range {v3 .. v24}, Le/a/l/p2/s1$b;-><init>(Le/a/l/p2/x;ZZLe/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/h1;Le/a/l/n2/f;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/p2/s1$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/p2/s1$b;

    iget-object v0, p0, Le/a/l/p2/s1$b;->a:Le/a/l/p2/x;

    iget-object v1, p1, Le/a/l/p2/s1$b;->a:Le/a/l/p2/x;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/l/p2/s1$b;->b:Z

    iget-boolean v1, p1, Le/a/l/p2/s1$b;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/l/p2/s1$b;->c:Z

    iget-boolean v1, p1, Le/a/l/p2/s1$b;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->e:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->e:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->f:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->f:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->g:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->g:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->m:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->m:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->n:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->n:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->o:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->o:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->p:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->p:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->q:Le/a/l/n2/f;

    iget-object v1, p1, Le/a/l/p2/s1$b;->q:Le/a/l/n2/f;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    iget-object v1, p1, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->s:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/p2/s1$b;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->t:Le/a/l/p2/h1;

    iget-object v1, p1, Le/a/l/p2/s1$b;->t:Le/a/l/p2/h1;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/s1$b;->u:Le/a/l/n2/f;

    iget-object p1, p1, Le/a/l/p2/s1$b;->u:Le/a/l/n2/f;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Le/a/l/p2/s1$b;->a:Le/a/l/p2/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/l/p2/x;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/l/p2/s1$b;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/l/p2/s1$b;->c:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->e:Le/a/l/n2/f;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->f:Le/a/l/n2/f;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->g:Le/a/l/n2/f;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_9
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_a
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_b
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->m:Le/a/l/n2/f;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_c
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->n:Le/a/l/n2/f;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_d
    move v2, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->o:Le/a/l/n2/f;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_e
    move v2, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->p:Le/a/l/n2/f;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_f
    move v2, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->q:Le/a/l/n2/f;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_10
    move v2, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_11
    move v2, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->s:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_12
    move v2, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->t:Le/a/l/p2/h1;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Le/a/l/p2/h1;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_13
    move v2, v1

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/p2/s1$b;->u:Le/a/l/n2/f;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Le/a/l/n2/f;->hashCode()I

    move-result v1

    :cond_14
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DataFetched(premium="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l/p2/s1$b;->a:Le/a/l/p2/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", upgradeToYearlyAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/l/p2/s1$b;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", upgradeToGoldAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/l/p2/s1$b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", monthlySubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", monthlyBasicSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->e:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quarterlySubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->f:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", halfYearlySubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->g:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", yearlySubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", yearlyWelcomeSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->i:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", goldSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", yearlyConsumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", goldYearlyConsumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", halfYearlyConsumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->m:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quarterlyYearlyConsumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->n:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", monthlyConsumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->o:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", winbackSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->p:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", promotedItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->q:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", oldSkus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->t:Le/a/l/p2/h1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", purchasedSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/s1$b;->u:Le/a/l/n2/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
