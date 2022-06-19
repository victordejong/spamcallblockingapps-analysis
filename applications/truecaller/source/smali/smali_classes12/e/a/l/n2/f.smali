.class public final Le/a/l/n2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:J

.field public final h:Lw3/b/a/u;

.field public final i:I

.field public final j:Lw3/b/a/u;

.field public final k:Lcom/truecaller/premium/data/ProductKind;

.field public final l:Lcom/truecaller/premium/data/PremiumProductType;

.field public final m:Z

.field public final n:Le/a/l/p2/n1;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p7

    move-object/from16 v6, p13

    const-string v7, "sku"

    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "title"

    invoke-static {p2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "price"

    invoke-static {p3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "priceCurrencyCode"

    invoke-static {p4, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "introductoryPrice"

    invoke-static {p7, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "productKind"

    invoke-static {v6, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/l/n2/f;->a:Ljava/lang/String;

    iput-object v2, v0, Le/a/l/n2/f;->b:Ljava/lang/String;

    iput-object v3, v0, Le/a/l/n2/f;->c:Ljava/lang/String;

    iput-object v4, v0, Le/a/l/n2/f;->d:Ljava/lang/String;

    move-wide v1, p5

    iput-wide v1, v0, Le/a/l/n2/f;->e:J

    iput-object v5, v0, Le/a/l/n2/f;->f:Ljava/lang/String;

    move-wide/from16 v1, p8

    iput-wide v1, v0, Le/a/l/n2/f;->g:J

    move-object/from16 v1, p10

    iput-object v1, v0, Le/a/l/n2/f;->h:Lw3/b/a/u;

    move/from16 v1, p11

    iput v1, v0, Le/a/l/n2/f;->i:I

    move-object/from16 v1, p12

    iput-object v1, v0, Le/a/l/n2/f;->j:Lw3/b/a/u;

    iput-object v6, v0, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    move-object/from16 v1, p14

    iput-object v1, v0, Le/a/l/n2/f;->l:Lcom/truecaller/premium/data/PremiumProductType;

    move/from16 v1, p15

    iput-boolean v1, v0, Le/a/l/n2/f;->m:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Le/a/l/n2/f;->n:Le/a/l/p2/n1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V
    .locals 19

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object/from16 v9, p7

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    move-wide v10, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v10, p8

    :goto_1
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v12, v2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p10

    :goto_2
    and-int/lit16 v1, v0, 0x100

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    move v13, v3

    goto :goto_3

    :cond_3
    move/from16 v13, p11

    :goto_3
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_4

    move-object v14, v2

    goto :goto_4

    :cond_4
    move-object/from16 v14, p12

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    .line 2
    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->NONE:Lcom/truecaller/premium/data/ProductKind;

    move-object v15, v1

    goto :goto_5

    :cond_5
    move-object/from16 v15, p13

    :goto_5
    and-int/lit16 v1, v0, 0x800

    const/16 v16, 0x0

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    move/from16 v17, v3

    goto :goto_6

    :cond_6
    move/from16 v17, p15

    :goto_6
    and-int/lit16 v0, v0, 0x2000

    const/16 v18, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 3
    invoke-direct/range {v2 .. v18}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;)V

    return-void
.end method

.method public static a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Le/a/l/n2/f;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v3, v0, Le/a/l/n2/f;->b:Ljava/lang/String;

    :cond_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Le/a/l/n2/f;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Le/a/l/n2/f;->d:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Le/a/l/n2/f;->e:J

    goto :goto_3

    :cond_4
    move-wide/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Le/a/l/n2/f;->f:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-wide v9, v0, Le/a/l/n2/f;->g:J

    goto :goto_5

    :cond_6
    move-wide/from16 v9, p8

    :goto_5
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Le/a/l/n2/f;->h:Lw3/b/a/u;

    goto :goto_6

    :cond_7
    move-object/from16 v11, p10

    :goto_6
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget v12, v0, Le/a/l/n2/f;->i:I

    goto :goto_7

    :cond_8
    move/from16 v12, p11

    :goto_7
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_9

    iget-object v13, v0, Le/a/l/n2/f;->j:Lw3/b/a/u;

    goto :goto_8

    :cond_9
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v1, 0x400

    if-eqz v14, :cond_a

    iget-object v14, v0, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    goto :goto_9

    :cond_a
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget-object v15, v0, Le/a/l/n2/f;->l:Lcom/truecaller/premium/data/PremiumProductType;

    goto :goto_a

    :cond_b
    move-object/from16 v15, p14

    :goto_a
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    iget-boolean v15, v0, Le/a/l/n2/f;->m:Z

    goto :goto_b

    :cond_c
    move/from16 v15, p15

    :goto_b
    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_d

    iget-object v1, v0, Le/a/l/n2/f;->n:Le/a/l/p2/n1;

    goto :goto_c

    :cond_d
    move-object/from16 v1, p16

    .line 1
    :goto_c
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sku"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priceCurrencyCode"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "introductoryPrice"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productKind"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/n2/f;

    move-object/from16 p0, v0

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move-wide/from16 p8, v9

    move-object/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p15, v15

    move-object/from16 p16, v1

    invoke-direct/range {p0 .. p16}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/n2/f;->f:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/l/n2/f;->f:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/n2/f;->f:Ljava/lang/String;

    invoke-static {v0}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/l/n2/f;->e:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Le/a/l/n2/f;->g:J

    :goto_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/n2/f;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/n2/f;

    iget-object v0, p0, Le/a/l/n2/f;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/n2/f;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->b:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/n2/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/n2/f;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->d:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/n2/f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/l/n2/f;->e:J

    iget-wide v2, p1, Le/a/l/n2/f;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/n2/f;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/l/n2/f;->g:J

    iget-wide v2, p1, Le/a/l/n2/f;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->h:Lw3/b/a/u;

    iget-object v1, p1, Le/a/l/n2/f;->h:Lw3/b/a/u;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/a/l/n2/f;->i:I

    iget v1, p1, Le/a/l/n2/f;->i:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->j:Lw3/b/a/u;

    iget-object v1, p1, Le/a/l/n2/f;->j:Lw3/b/a/u;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    iget-object v1, p1, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->l:Lcom/truecaller/premium/data/PremiumProductType;

    iget-object v1, p1, Le/a/l/n2/f;->l:Lcom/truecaller/premium/data/PremiumProductType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/l/n2/f;->m:Z

    iget-boolean v1, p1, Le/a/l/n2/f;->m:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/l/n2/f;->n:Le/a/l/p2/n1;

    iget-object p1, p1, Le/a/l/n2/f;->n:Le/a/l/p2/n1;

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

    iget-object v0, p0, Le/a/l/n2/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/n2/f;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/n2/f;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/n2/f;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/l/n2/f;->e:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/n2/f;->f:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/l/n2/f;->g:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lw3/b/a/e0/d;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Le/a/l/n2/f;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/n2/f;->j:Lw3/b/a/u;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lw3/b/a/e0/d;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/n2/f;->l:Lcom/truecaller/premium/data/PremiumProductType;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/l/n2/f;->m:Z

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :cond_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/l/n2/f;->n:Le/a/l/p2/n1;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Le/a/l/p2/n1;->hashCode()I

    move-result v1

    :cond_a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Subscription(sku="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/l/n2/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/n2/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/n2/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priceCurrencyCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/n2/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priceAmountMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/l/n2/f;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", introductoryPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/n2/f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", introductoryPriceAmountMicros="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/l/n2/f;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", freeTrialPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/n2/f;->h:Lw3/b/a/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", introductoryPriceCycles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/l/n2/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", introductoryPricePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/n2/f;->j:Lw3/b/a/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productKind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/n2/f;->l:Lcom/truecaller/premium/data/PremiumProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isWinback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/l/n2/f;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", promotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/n2/f;->n:Le/a/l/p2/n1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
