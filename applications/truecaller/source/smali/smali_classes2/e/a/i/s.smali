.class public final Le/a/i/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/s$a;,
        Le/a/i/s$b;,
        Le/a/i/s$c;
    }
.end annotation


# static fields
.field public static final r:Le/a/i/s$c;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/AdSize;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/ads/CustomTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/i/o;

.field public final h:Le/a/i/b0/d/a;

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Le/a/i/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Le/a/i/s$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/i/s$c;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/i/s;->r:Le/a/i/s$c;

    return-void
.end method

.method public constructor <init>(Le/a/i/s$a;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "builder"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v1, Le/a/i/s$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2
    iget-object v3, v1, Le/a/i/s$a;->d:Ljava/lang/String;

    .line 3
    iget-object v4, v1, Le/a/i/s$a;->g:Ljava/util/Map;

    .line 4
    iget v5, v1, Le/a/i/s$a;->e:I

    .line 5
    iget-object v6, v1, Le/a/i/s$a;->f:Ljava/util/List;

    .line 6
    iget-object v7, v1, Le/a/i/s$a;->h:Ljava/util/List;

    .line 7
    iget-object v8, v1, Le/a/i/s$a;->b:Le/a/i/o;

    .line 8
    iget-object v9, v1, Le/a/i/s$a;->c:Le/a/i/b0/d/a;

    .line 9
    iget v10, v1, Le/a/i/s$a;->p:I

    .line 10
    iget-object v11, v1, Le/a/i/s$a;->i:Ljava/lang/String;

    .line 11
    iget-boolean v12, v1, Le/a/i/s$a;->j:Z

    .line 12
    iget-boolean v13, v1, Le/a/i/s$a;->k:Z

    .line 13
    iget-boolean v14, v1, Le/a/i/s$a;->l:Z

    .line 14
    iget-boolean v15, v1, Le/a/i/s$a;->m:Z

    move/from16 v16, v15

    .line 15
    iget-boolean v15, v1, Le/a/i/s$a;->n:Z

    .line 16
    iget-object v1, v1, Le/a/i/s$a;->o:Le/a/i/f;

    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Le/a/i/s;->a:Ljava/lang/String;

    iput-object v3, v0, Le/a/i/s;->b:Ljava/lang/String;

    iput-object v4, v0, Le/a/i/s;->c:Ljava/util/Map;

    iput v5, v0, Le/a/i/s;->d:I

    iput-object v6, v0, Le/a/i/s;->e:Ljava/util/List;

    iput-object v7, v0, Le/a/i/s;->f:Ljava/util/List;

    iput-object v8, v0, Le/a/i/s;->g:Le/a/i/o;

    iput-object v9, v0, Le/a/i/s;->h:Le/a/i/b0/d/a;

    iput v10, v0, Le/a/i/s;->i:I

    iput-object v11, v0, Le/a/i/s;->j:Ljava/lang/String;

    iput-boolean v12, v0, Le/a/i/s;->k:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Le/a/i/s;->l:Z

    iput-boolean v13, v0, Le/a/i/s;->m:Z

    iput-boolean v14, v0, Le/a/i/s;->n:Z

    move/from16 v2, v16

    iput-boolean v2, v0, Le/a/i/s;->o:Z

    iput-boolean v15, v0, Le/a/i/s;->p:Z

    iput-object v1, v0, Le/a/i/s;->q:Le/a/i/f;

    return-void

    :cond_0
    const-string v1, "adUnit"

    .line 18
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;)Le/a/i/s$a;
    .locals 3

    const-string p1, "adUnitId"

    .line 1
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "placement"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Le/a/i/s$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le/a/i/s$a;-><init>(Le/a/i/s;I)V

    .line 3
    invoke-virtual {v0, p0, v1}, Le/a/i/s$a;->b(Ljava/lang/String;Ljava/lang/String;)Le/a/i/s$a;

    .line 4
    invoke-virtual {p3}, Le/a/u3/g;->O()Le/a/u3/b;

    move-result-object p0

    invoke-interface {p0}, Le/a/u3/b;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p0, Le/a/i/b0/d/a;->h:Le/a/i/b0/d/a$b;

    .line 7
    new-instance p0, Le/a/i/b0/d/a$a;

    invoke-direct {p0}, Le/a/i/b0/d/a$a;-><init>()V

    new-array p1, v2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 8
    invoke-virtual {p0, p1}, Le/a/i/b0/d/a$a;->c([Ljava/lang/String;)Le/a/i/b0/d/a$a;

    invoke-virtual {p0}, Le/a/i/b0/d/a$a;->a()Le/a/i/b0/d/a;

    move-result-object p0

    iput-object p0, v0, Le/a/i/s$a;->c:Le/a/i/b0/d/a;

    goto :goto_0

    :cond_0
    const-string p0, "campaign"

    const-string p1, "CampaignConfig.Builder(campaign).build()"

    .line 9
    invoke-static {p2, p0, p2, p1}, Le/d/c/a/a;->k1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/i/o;

    move-result-object p0

    .line 10
    iput-object p0, v0, Le/a/i/s$a;->b:Le/a/i/o;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Le/a/i/s;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.truecaller.ads.UnitConfig"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/i/s;

    .line 3
    iget-object v1, p0, Le/a/i/s;->a:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/s;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Le/a/i/s;->b:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/s;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Le/a/i/s;->c:Ljava/util/Map;

    iget-object v3, p1, Le/a/i/s;->c:Ljava/util/Map;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget v1, p0, Le/a/i/s;->d:I

    iget v3, p1, Le/a/i/s;->d:I

    if-eq v1, v3, :cond_6

    return v2

    .line 7
    :cond_6
    iget-object v1, p0, Le/a/i/s;->e:Ljava/util/List;

    iget-object v3, p1, Le/a/i/s;->e:Ljava/util/List;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_7

    return v2

    .line 8
    :cond_7
    iget-object v1, p0, Le/a/i/s;->f:Ljava/util/List;

    iget-object v3, p1, Le/a/i/s;->f:Ljava/util/List;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_8

    return v2

    .line 9
    :cond_8
    iget-object v1, p0, Le/a/i/s;->g:Le/a/i/o;

    iget-object v3, p1, Le/a/i/s;->g:Le/a/i/o;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_9

    return v2

    .line 10
    :cond_9
    iget-object v1, p0, Le/a/i/s;->h:Le/a/i/b0/d/a;

    iget-object v3, p1, Le/a/i/s;->h:Le/a/i/b0/d/a;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_a

    return v2

    .line 11
    :cond_a
    iget v1, p0, Le/a/i/s;->i:I

    iget v3, p1, Le/a/i/s;->i:I

    if-eq v1, v3, :cond_b

    return v2

    .line 12
    :cond_b
    iget-object v1, p0, Le/a/i/s;->j:Ljava/lang/String;

    iget-object v3, p1, Le/a/i/s;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_c

    return v2

    .line 13
    :cond_c
    iget-boolean v1, p0, Le/a/i/s;->k:Z

    iget-boolean v3, p1, Le/a/i/s;->k:Z

    if-eq v1, v3, :cond_d

    return v2

    .line 14
    :cond_d
    iget-boolean v1, p0, Le/a/i/s;->l:Z

    iget-boolean v3, p1, Le/a/i/s;->l:Z

    if-eq v1, v3, :cond_e

    return v2

    .line 15
    :cond_e
    iget-boolean v1, p0, Le/a/i/s;->m:Z

    iget-boolean v3, p1, Le/a/i/s;->m:Z

    if-eq v1, v3, :cond_f

    return v2

    .line 16
    :cond_f
    iget-boolean v1, p0, Le/a/i/s;->n:Z

    iget-boolean v3, p1, Le/a/i/s;->n:Z

    if-eq v1, v3, :cond_10

    return v2

    .line 17
    :cond_10
    iget-boolean v1, p0, Le/a/i/s;->o:Z

    iget-boolean v3, p1, Le/a/i/s;->o:Z

    if-eq v1, v3, :cond_11

    return v2

    .line 18
    :cond_11
    iget-boolean v1, p0, Le/a/i/s;->p:Z

    iget-boolean v3, p1, Le/a/i/s;->p:Z

    if-eq v1, v3, :cond_12

    return v2

    .line 19
    :cond_12
    iget-object v1, p0, Le/a/i/s;->q:Le/a/i/f;

    iget-object p1, p1, Le/a/i/s;->q:Le/a/i/f;

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/a/i/s;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Le/a/i/s;->c:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget v0, p0, Le/a/i/s;->d:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Le/a/i/s;->e:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Le/a/i/s;->f:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Le/a/i/s;->g:Le/a/i/o;

    invoke-virtual {v0}, Le/a/i/o;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Le/a/i/s;->h:Le/a/i/b0/d/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget v0, p0, Le/a/i/s;->i:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-object v0, p0, Le/a/i/s;->j:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 11
    iget-boolean v0, p0, Le/a/i/s;->k:Z

    invoke-static {v0}, Lb;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget-boolean v0, p0, Le/a/i/s;->l:Z

    invoke-static {v0}, Lb;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget-boolean v0, p0, Le/a/i/s;->m:Z

    invoke-static {v0}, Lb;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 14
    iget-boolean v0, p0, Le/a/i/s;->n:Z

    invoke-static {v0}, Lb;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 15
    iget-boolean v0, p0, Le/a/i/s;->o:Z

    invoke-static {v0}, Lb;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 16
    iget-boolean v0, p0, Le/a/i/s;->p:Z

    invoke-static {v0}, Lb;->a(Z)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 17
    iget-object v0, p0, Le/a/i/s;->q:Le/a/i/f;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Le/a/i/f;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    const/16 v0, 0x27

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/i/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'//\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/a/i/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/i/s;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
