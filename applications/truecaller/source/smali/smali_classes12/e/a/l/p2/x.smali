.class public final Le/a/l/p2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:J

.field public final d:I

.field public final e:Ljava/lang/Boolean;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/truecaller/premium/data/ProductKind;

.field public final i:Lcom/truecaller/premium/data/PremiumScope;

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Lcom/truecaller/premium/provider/Store;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1fff

    invoke-direct/range {v0 .. v17}, Le/a/l/p2/x;-><init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;I)V

    return-void
.end method

.method public constructor <init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p16

    const-string v5, "level"

    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "kind"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "scope"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "paymentProvider"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v5, p1

    iput-wide v5, v0, Le/a/l/p2/x;->a:J

    move-wide v5, p3

    iput-wide v5, v0, Le/a/l/p2/x;->b:J

    move-wide v5, p5

    iput-wide v5, v0, Le/a/l/p2/x;->c:J

    move v5, p7

    iput v5, v0, Le/a/l/p2/x;->d:I

    move-object v5, p8

    iput-object v5, v0, Le/a/l/p2/x;->e:Ljava/lang/Boolean;

    move-object/from16 v5, p9

    iput-object v5, v0, Le/a/l/p2/x;->f:Ljava/lang/String;

    iput-object v1, v0, Le/a/l/p2/x;->g:Ljava/lang/String;

    iput-object v2, v0, Le/a/l/p2/x;->h:Lcom/truecaller/premium/data/ProductKind;

    iput-object v3, v0, Le/a/l/p2/x;->i:Lcom/truecaller/premium/data/PremiumScope;

    move/from16 v1, p13

    iput-boolean v1, v0, Le/a/l/p2/x;->j:Z

    move/from16 v1, p14

    iput-boolean v1, v0, Le/a/l/p2/x;->k:Z

    move/from16 v1, p15

    iput-boolean v1, v0, Le/a/l/p2/x;->l:Z

    iput-object v4, v0, Le/a/l/p2/x;->m:Lcom/truecaller/premium/provider/Store;

    return-void
.end method

.method public synthetic constructor <init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;I)V
    .locals 16

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v2, p5

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    move/from16 v1, p7

    :goto_3
    and-int/lit8 v9, v0, 0x10

    const/4 v9, 0x0

    and-int/lit8 v10, v0, 0x20

    const/4 v10, 0x0

    and-int/lit8 v11, v0, 0x40

    if-eqz v11, :cond_4

    const-string v11, "none"

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_5

    .line 2
    sget-object v13, Lcom/truecaller/premium/data/ProductKind;->NONE:Lcom/truecaller/premium/data/ProductKind;

    goto :goto_5

    :cond_5
    const/4 v13, 0x0

    :goto_5
    and-int/lit16 v14, v0, 0x100

    if-eqz v14, :cond_6

    .line 3
    sget-object v14, Lcom/truecaller/premium/data/PremiumScope;->NONE:Lcom/truecaller/premium/data/PremiumScope;

    goto :goto_6

    :cond_6
    const/4 v14, 0x0

    :goto_6
    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_7

    const/4 v15, 0x0

    goto :goto_7

    :cond_7
    move/from16 v15, p13

    :goto_7
    and-int/lit16 v8, v0, 0x400

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    goto :goto_8

    :cond_8
    move/from16 v8, p14

    :goto_8
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    goto :goto_9

    :cond_9
    move/from16 v12, p15

    :goto_9
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    .line 4
    sget-object v0, Lcom/truecaller/premium/provider/Store;->NONE:Lcom/truecaller/premium/provider/Store;

    goto :goto_a

    :cond_a
    const/4 v0, 0x0

    :goto_a
    move-object/from16 p1, p0

    move-wide/from16 p2, v4

    move-wide/from16 p4, v6

    move-wide/from16 p6, v2

    move/from16 p8, v1

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move/from16 p14, v15

    move/from16 p15, v8

    move/from16 p16, v12

    move-object/from16 p17, v0

    invoke-direct/range {p1 .. p17}, Le/a/l/p2/x;-><init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/l/p2/x;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/l/p2/x;

    iget-wide v0, p0, Le/a/l/p2/x;->a:J

    iget-wide v2, p1, Le/a/l/p2/x;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Le/a/l/p2/x;->b:J

    iget-wide v2, p1, Le/a/l/p2/x;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Le/a/l/p2/x;->c:J

    iget-wide v2, p1, Le/a/l/p2/x;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Le/a/l/p2/x;->d:I

    iget v1, p1, Le/a/l/p2/x;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/l/p2/x;->e:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/l/p2/x;->e:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/x;->f:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/p2/x;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/x;->g:Ljava/lang/String;

    iget-object v1, p1, Le/a/l/p2/x;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/x;->h:Lcom/truecaller/premium/data/ProductKind;

    iget-object v1, p1, Le/a/l/p2/x;->h:Lcom/truecaller/premium/data/ProductKind;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/l/p2/x;->i:Lcom/truecaller/premium/data/PremiumScope;

    iget-object v1, p1, Le/a/l/p2/x;->i:Lcom/truecaller/premium/data/PremiumScope;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/l/p2/x;->j:Z

    iget-boolean v1, p1, Le/a/l/p2/x;->j:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/l/p2/x;->k:Z

    iget-boolean v1, p1, Le/a/l/p2/x;->k:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/l/p2/x;->l:Z

    iget-boolean v1, p1, Le/a/l/p2/x;->l:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/l/p2/x;->m:Lcom/truecaller/premium/provider/Store;

    iget-object p1, p1, Le/a/l/p2/x;->m:Lcom/truecaller/premium/provider/Store;

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

    iget-wide v0, p0, Le/a/l/p2/x;->a:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/a/l/p2/x;->b:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/a/l/p2/x;->c:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Le/a/l/p2/x;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/l/p2/x;->e:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/l/p2/x;->f:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/l/p2/x;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/l/p2/x;->h:Lcom/truecaller/premium/data/ProductKind;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/l/p2/x;->i:Lcom/truecaller/premium/data/PremiumScope;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/l/p2/x;->j:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    move v1, v3

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/l/p2/x;->k:Z

    if-eqz v1, :cond_6

    move v1, v3

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/l/p2/x;->l:Z

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move v3, v1

    :goto_5
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/l/p2/x;->m:Lcom/truecaller/premium/provider/Store;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Premium(expiresTimestamp="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/l/p2/x;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", startTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/l/p2/x;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gracePeriodExpiresTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/l/p2/x;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Le/a/l/p2/x;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isFreeTrialActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/x;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/x;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/x;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/x;->h:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/x;->i:Lcom/truecaller/premium/data/PremiumScope;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/l/p2/x;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInGracePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/l/p2/x;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isInAppPurchaseAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/l/p2/x;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", paymentProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/l/p2/x;->m:Lcom/truecaller/premium/provider/Store;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
