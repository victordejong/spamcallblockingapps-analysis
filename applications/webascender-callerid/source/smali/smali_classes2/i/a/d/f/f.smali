.class final Li/a/d/f/f;
.super Li/a/d/f/w;
.source "SourceFile"


# instance fields
.field private final a:Li/a/d/f/n;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Li/a/d/f/y/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Li/a/a/c/j;

.field private final e:I

.field private final f:I

.field private final g:Li/a/d/f/y/j;

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:Z


# direct methods
.method constructor <init>(Li/a/d/f/n;Ljava/util/List;Ljava/util/List;Li/a/a/c/j;IILi/a/d/f/y/j;Ljava/lang/String;JZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/d/f/n;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Li/a/d/f/y/d;",
            ">;",
            "Li/a/a/c/j;",
            "II",
            "Li/a/d/f/y/j;",
            "Ljava/lang/String;",
            "JZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/a/d/f/w;-><init>()V

    const-string v0, "Null delegate"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Li/a/d/f/f;->a:Li/a/d/f/n;

    const-string p1, "Null resolvedLinks"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Li/a/d/f/f;->b:Ljava/util/List;

    const-string p1, "Null resolvedEvents"

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Li/a/d/f/f;->c:Ljava/util/List;

    const-string p1, "Null attributes"

    .line 8
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    iput-object p4, p0, Li/a/d/f/f;->d:Li/a/a/c/j;

    .line 10
    iput p5, p0, Li/a/d/f/f;->e:I

    .line 11
    iput p6, p0, Li/a/d/f/f;->f:I

    const-string p1, "Null status"

    .line 12
    invoke-static {p7, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iput-object p7, p0, Li/a/d/f/f;->g:Li/a/d/f/y/j;

    const-string p1, "Null name"

    .line 14
    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object p8, p0, Li/a/d/f/f;->h:Ljava/lang/String;

    .line 16
    iput-wide p9, p0, Li/a/d/f/f;->i:J

    .line 17
    iput-boolean p11, p0, Li/a/d/f/f;->j:Z

    return-void
.end method


# virtual methods
.method A()Li/a/d/f/y/j;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/f;->g:Li/a/d/f/y/j;

    return-object v0
.end method

.method B()I
    .locals 1

    .line 1
    iget v0, p0, Li/a/d/f/f;->e:I

    return v0
.end method

.method C()I
    .locals 1

    .line 1
    iget v0, p0, Li/a/d/f/f;->f:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Li/a/d/f/w;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Li/a/d/f/w;

    .line 3
    iget-object v1, p0, Li/a/d/f/f;->a:Li/a/d/f/n;

    invoke-virtual {p1}, Li/a/d/f/w;->p()Li/a/d/f/n;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/a/d/f/f;->b:Ljava/util/List;

    .line 4
    invoke-virtual {p1}, Li/a/d/f/w;->z()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/a/d/f/f;->c:Ljava/util/List;

    .line 5
    invoke-virtual {p1}, Li/a/d/f/w;->y()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/a/d/f/f;->d:Li/a/a/c/j;

    .line 6
    invoke-virtual {p1}, Li/a/d/f/w;->n()Li/a/a/c/j;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Li/a/d/f/f;->e:I

    .line 7
    invoke-virtual {p1}, Li/a/d/f/w;->B()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Li/a/d/f/f;->f:I

    .line 8
    invoke-virtual {p1}, Li/a/d/f/w;->C()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Li/a/d/f/f;->g:Li/a/d/f/y/j;

    .line 9
    invoke-virtual {p1}, Li/a/d/f/w;->A()Li/a/d/f/y/j;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/a/d/f/f;->h:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Li/a/d/f/w;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Li/a/d/f/f;->i:J

    .line 11
    invoke-virtual {p1}, Li/a/d/f/w;->q()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-boolean v1, p0, Li/a/d/f/f;->j:Z

    .line 12
    invoke-virtual {p1}, Li/a/d/f/w;->w()Z

    move-result p1

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Li/a/d/f/f;->a:Li/a/d/f/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 2
    iget-object v2, p0, Li/a/d/f/f;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 3
    iget-object v2, p0, Li/a/d/f/f;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 4
    iget-object v2, p0, Li/a/d/f/f;->d:Li/a/a/c/j;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 5
    iget v2, p0, Li/a/d/f/f;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 6
    iget v2, p0, Li/a/d/f/f;->f:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 7
    iget-object v2, p0, Li/a/d/f/f;->g:Li/a/d/f/y/j;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 8
    iget-object v2, p0, Li/a/d/f/f;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 9
    iget-wide v2, p0, Li/a/d/f/f;->i:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    .line 10
    iget-boolean v1, p0, Li/a/d/f/f;->j:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method n()Li/a/a/c/j;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/f;->d:Li/a/a/c/j;

    return-object v0
.end method

.method p()Li/a/d/f/n;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/f;->a:Li/a/d/f/n;

    return-object v0
.end method

.method q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Li/a/d/f/f;->i:J

    return-wide v0
.end method

.method w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/a/d/f/f;->j:Z

    return v0
.end method

.method x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/f/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li/a/d/f/y/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/d/f/f;->c:Ljava/util/List;

    return-object v0
.end method

.method z()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/d/f/f;->b:Ljava/util/List;

    return-object v0
.end method
