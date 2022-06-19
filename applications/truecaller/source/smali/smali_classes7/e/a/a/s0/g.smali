.class public Le/a/a/s0/g;
.super Le/a/a/s0/h;
.source "SourceFile"


# instance fields
.field public n:Z


# direct methods
.method public constructor <init>(Le/a/a/r0/a;Le/a/p5/g;Ljava/lang/String;Le/a/r2/f;Le/a/a/i0;Ljava/lang/String;Le/a/p5/a0;Le/a/a/p;Le/a/a/s0/d;Le/a/q2/i0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/r0/a;",
            "Le/a/p5/g;",
            "Ljava/lang/String;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/a/i0;",
            "Ljava/lang/String;",
            "Le/a/p5/a0;",
            "Le/a/a/p;",
            "Le/a/a/s0/d;",
            "Le/a/q2/i0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 1
    invoke-direct/range {v0 .. v11}, Le/a/a/s0/h;-><init>(Le/a/a/r0/a;Le/a/p5/g;Ljava/lang/String;Le/a/r2/f;Le/a/a/i0;Le/a/p5/a0;Le/a/a/p;Le/a/a/s0/d;Le/a/q2/i0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public Hj()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/a/s0/g;->n:Z

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast v1, Le/a/a/s0/i;

    .line 3
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "xiaomi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 4
    :goto_0
    invoke-interface {v1, v0}, Le/a/a/s0/i;->na(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0}, Le/a/a/s0/i;->z8()V

    :cond_1
    return-void
.end method

.method public Mj(Le/a/a/s0/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Le/a/a/s0/h;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Le/a/a/s0/h;->Oj()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1, v0}, Le/a/a/s0/i;->d2(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/a/s0/h;->f:Le/a/a/i0;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/a/i0;->W2(Z)V

    return-void
.end method

.method public Nj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 2
    check-cast v0, Le/a/a/s0/i;

    .line 3
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "xiaomi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Le/a/a/s0/i;->e2(I)V

    :cond_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/s0/i;

    .line 2
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Le/a/a/s0/h;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Le/a/a/s0/h;->Oj()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1, v0}, Le/a/a/s0/i;->d2(Ljava/lang/String;)V

    .line 6
    :goto_0
    iget-object p1, p0, Le/a/a/s0/h;->f:Le/a/a/i0;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Le/a/a/i0;->W2(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/s0/g;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Le/a/a/s0/i;

    invoke-interface {v0}, Le/a/a/s0/i;->z8()V

    :cond_0
    return-void
.end method
