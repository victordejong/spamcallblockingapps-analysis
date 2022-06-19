.class public final Le/a/c/r/b$f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/b$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public A:Lcom/truecaller/insights/models/InsightsDomain$f;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:J

.field public r:Ljava/lang/String;

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Le/a/c/r/c;",
            ">;"
        }
    .end annotation
.end field

.field public t:I

.field public u:Ljava/lang/String;

.field public v:I

.field public w:Z

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/insights/binders/utils/TravelUiProperties;",
            ">;"
        }
    .end annotation
.end field

.field public y:Z

.field public z:Lw3/b/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;ILjava/lang/String;IZLjava/util/List;ZLw3/b/a/b;Lcom/truecaller/insights/models/InsightsDomain$f;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p25

    move-object/from16 v2, p28

    move/from16 v3, p29

    and-int/lit8 v4, v3, 0x1

    const-string v6, ""

    if-eqz v4, :cond_0

    move-object v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v7, v3, 0x2

    if-eqz v7, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    and-int/lit8 v8, v3, 0x4

    if-eqz v8, :cond_2

    move-object v8, v6

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    and-int/lit8 v9, v3, 0x8

    if-eqz v9, :cond_3

    move-object v9, v6

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    and-int/lit8 v10, v3, 0x10

    if-eqz v10, :cond_4

    move-object v10, v6

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    and-int/lit8 v11, v3, 0x20

    if-eqz v11, :cond_5

    move-object v11, v6

    goto :goto_5

    :cond_5
    const/4 v11, 0x0

    :goto_5
    and-int/lit8 v12, v3, 0x40

    if-eqz v12, :cond_6

    move-object v12, v6

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    and-int/lit16 v13, v3, 0x80

    if-eqz v13, :cond_7

    move-object v13, v6

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    :goto_7
    and-int/lit16 v14, v3, 0x100

    if-eqz v14, :cond_8

    move-object v14, v6

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    :goto_8
    and-int/lit16 v15, v3, 0x200

    if-eqz v15, :cond_9

    move-object v15, v6

    goto :goto_9

    :cond_9
    const/4 v15, 0x0

    :goto_9
    and-int/lit16 v5, v3, 0x400

    if-eqz v5, :cond_a

    move-object v5, v6

    goto :goto_a

    :cond_a
    const/4 v5, 0x0

    :goto_a
    move-object/from16 p2, v6

    and-int/lit16 v6, v3, 0x800

    if-eqz v6, :cond_b

    move-object/from16 v6, p2

    goto :goto_b

    :cond_b
    const/4 v6, 0x0

    :goto_b
    move-object/from16 p3, v6

    and-int/lit16 v6, v3, 0x1000

    if-eqz v6, :cond_c

    move-object/from16 v6, p2

    goto :goto_c

    :cond_c
    const/4 v6, 0x0

    :goto_c
    move-object/from16 p4, v6

    and-int/lit16 v6, v3, 0x2000

    if-eqz v6, :cond_d

    move-object/from16 v6, p2

    goto :goto_d

    :cond_d
    const/4 v6, 0x0

    :goto_d
    move-object/from16 p5, v6

    and-int/lit16 v6, v3, 0x4000

    if-eqz v6, :cond_e

    move-object/from16 v6, p2

    goto :goto_e

    :cond_e
    const/4 v6, 0x0

    :goto_e
    const v16, 0x8000

    and-int v16, v3, v16

    if-eqz v16, :cond_f

    move-object/from16 v17, p2

    goto :goto_f

    :cond_f
    const/16 v17, 0x0

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v3, v16

    if-eqz v16, :cond_10

    const-wide/16 v18, -0x1

    move-wide/from16 v20, v18

    goto :goto_10

    :cond_10
    move-wide/from16 v20, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v3, v16

    if-eqz v16, :cond_11

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    goto :goto_11

    :cond_11
    move-object/from16 v16, v5

    const/4 v5, 0x0

    :goto_11
    const/high16 v18, 0x40000

    and-int v18, v3, v18

    if-eqz v18, :cond_12

    .line 1
    sget-object v18, Ls1/u/s;->a:Ls1/u/s;

    move-object/from16 v28, v18

    move-object/from16 v18, v15

    move-object/from16 v15, v28

    goto :goto_12

    :cond_12
    move-object/from16 v18, v15

    const/4 v15, 0x0

    :goto_12
    const/high16 v19, 0x80000

    and-int v19, v3, v19

    const/16 v22, 0x0

    if-eqz v19, :cond_13

    move/from16 v23, v22

    goto :goto_13

    :cond_13
    move/from16 v23, p21

    :goto_13
    const/high16 v19, 0x100000

    and-int v19, v3, v19

    if-eqz v19, :cond_14

    move-object/from16 v19, v14

    move-object/from16 v14, p2

    goto :goto_14

    :cond_14
    move-object/from16 v19, v14

    const/4 v14, 0x0

    :goto_14
    const/high16 v24, 0x200000

    and-int v24, v3, v24

    if-eqz v24, :cond_15

    move/from16 v25, v22

    goto :goto_15

    :cond_15
    move/from16 v25, p23

    :goto_15
    const/high16 v24, 0x400000

    and-int v24, v3, v24

    if-eqz v24, :cond_16

    move/from16 v26, v22

    goto :goto_16

    :cond_16
    move/from16 v26, p24

    :goto_16
    const/high16 v24, 0x1000000

    and-int v24, v3, v24

    if-eqz v24, :cond_17

    move/from16 v27, v22

    goto :goto_17

    :cond_17
    move/from16 v27, p26

    :goto_17
    const/high16 v22, 0x2000000

    and-int v3, v3, v22

    if-eqz v3, :cond_18

    .line 2
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    .line 3
    invoke-virtual {v3}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v3

    move-object/from16 v22, v13

    const-string v13, "DateTime.now().withTimeAtStartOfDay()"

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_18

    :cond_18
    move-object/from16 v22, v13

    const/4 v3, 0x0

    :goto_18
    const-string v13, "title"

    .line 4
    invoke-static {v4, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "date"

    invoke-static {v9, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "time"

    invoke-static {v10, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "uiDate"

    invoke-static {v11, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "category"

    invoke-static {v6, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "senderId"

    invoke-static {v5, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "uiTags"

    invoke-static {v15, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "status"

    invoke-static {v14, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "properties"

    invoke-static {v1, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "travelDateTime"

    invoke-static {v3, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "domain"

    invoke-static {v2, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Le/a/c/r/b$f$a;->a:Ljava/lang/String;

    iput-object v7, v0, Le/a/c/r/b$f$a;->b:Ljava/lang/String;

    iput-object v8, v0, Le/a/c/r/b$f$a;->c:Ljava/lang/String;

    iput-object v9, v0, Le/a/c/r/b$f$a;->d:Ljava/lang/String;

    iput-object v10, v0, Le/a/c/r/b$f$a;->e:Ljava/lang/String;

    iput-object v11, v0, Le/a/c/r/b$f$a;->f:Ljava/lang/String;

    iput-object v12, v0, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    move-object/from16 v4, v22

    iput-object v4, v0, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    move-object/from16 v4, v19

    iput-object v4, v0, Le/a/c/r/b$f$a;->i:Ljava/lang/String;

    move-object/from16 v4, v18

    iput-object v4, v0, Le/a/c/r/b$f$a;->j:Ljava/lang/String;

    move-object/from16 v4, v16

    iput-object v4, v0, Le/a/c/r/b$f$a;->k:Ljava/lang/String;

    move-object/from16 v4, p3

    iput-object v4, v0, Le/a/c/r/b$f$a;->l:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    move-object/from16 v4, p5

    iput-object v4, v0, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    iput-object v6, v0, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    move-object/from16 v4, v17

    iput-object v4, v0, Le/a/c/r/b$f$a;->p:Ljava/lang/String;

    move-wide/from16 v6, v20

    iput-wide v6, v0, Le/a/c/r/b$f$a;->q:J

    iput-object v5, v0, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    iput-object v15, v0, Le/a/c/r/b$f$a;->s:Ljava/util/List;

    move/from16 v4, v23

    iput v4, v0, Le/a/c/r/b$f$a;->t:I

    iput-object v14, v0, Le/a/c/r/b$f$a;->u:Ljava/lang/String;

    move/from16 v4, v25

    iput v4, v0, Le/a/c/r/b$f$a;->v:I

    move/from16 v4, v26

    iput-boolean v4, v0, Le/a/c/r/b$f$a;->w:Z

    iput-object v1, v0, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    move/from16 v1, v27

    iput-boolean v1, v0, Le/a/c/r/b$f$a;->y:Z

    iput-object v3, v0, Le/a/c/r/b$f$a;->z:Lw3/b/a/b;

    iput-object v2, v0, Le/a/c/r/b$f$a;->A:Lcom/truecaller/insights/models/InsightsDomain$f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Le/a/c/r/b$f$a;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/b$f$a;->u:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Le/a/c/r/b$f$a;
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/c/r/b$f$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/b$f$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/b$f$a;

    iget-object v0, p0, Le/a/c/r/b$f$a;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->d:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->e:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->i:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->j:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->k:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->l:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->p:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/c/r/b$f$a;->q:J

    iget-wide v2, p1, Le/a/c/r/b$f$a;->q:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->s:Ljava/util/List;

    iget-object v1, p1, Le/a/c/r/b$f$a;->s:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/c/r/b$f$a;->t:I

    iget v1, p1, Le/a/c/r/b$f$a;->t:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->u:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/b$f$a;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/c/r/b$f$a;->v:I

    iget v1, p1, Le/a/c/r/b$f$a;->v:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/c/r/b$f$a;->w:Z

    iget-boolean v1, p1, Le/a/c/r/b$f$a;->w:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    iget-object v1, p1, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/r/b$f$a;->y:Z

    iget-boolean v1, p1, Le/a/c/r/b$f$a;->y:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->z:Lw3/b/a/b;

    iget-object v1, p1, Le/a/c/r/b$f$a;->z:Lw3/b/a/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/b$f$a;->A:Lcom/truecaller/insights/models/InsightsDomain$f;

    iget-object p1, p1, Le/a/c/r/b$f$a;->A:Lcom/truecaller/insights/models/InsightsDomain$f;

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

    iget-object v0, p0, Le/a/c/r/b$f$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->f:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->i:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->j:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v1

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->k:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v1

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->l:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    move v2, v1

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    move v2, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    move v2, v1

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    move v2, v1

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->p:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    move v2, v1

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/c/r/b$f$a;->q:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    move v2, v1

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->s:Ljava/util/List;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    move v2, v1

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/c/r/b$f$a;->t:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->u:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    move v2, v1

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/c/r/b$f$a;->v:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/c/r/b$f$a;->w:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    move v2, v3

    :cond_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_14
    move v2, v1

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/c/r/b$f$a;->y:Z

    if-eqz v2, :cond_15

    goto :goto_14

    :cond_15
    move v3, v2

    :goto_14
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->z:Lw3/b/a/b;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Lw3/b/a/e0/c;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_16
    move v2, v1

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/b$f$a;->A:Lcom/truecaller/insights/models/InsightsDomain$f;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Lcom/truecaller/insights/models/InsightsDomain$f;->hashCode()I

    move-result v1

    :cond_17
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Builder(title="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/r/b$f$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uiDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", travelTypeTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", travelTypeValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pnrTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pnrValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seatTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seatValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moreInfoTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", moreInfoValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alertType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/c/r/b$f$a;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uiTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/c/r/b$f$a;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", statusColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/c/r/b$f$a;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSenderVerifiedForSmartFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/c/r/b$f$a;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->x:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isTimeFiltered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/c/r/b$f$a;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", travelDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->z:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/b$f$a;->A:Lcom/truecaller/insights/models/InsightsDomain$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
