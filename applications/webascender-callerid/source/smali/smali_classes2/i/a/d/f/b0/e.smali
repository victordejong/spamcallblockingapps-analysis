.class final Li/a/d/f/b0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/b0/h;


# instance fields
.field private final f:Li/a/d/f/b0/h;

.field private final g:Li/a/d/f/b0/h;

.field private final h:Li/a/d/f/b0/h;

.field private final i:Li/a/d/f/b0/h;

.field private final j:Li/a/d/f/b0/h;


# direct methods
.method constructor <init>(Li/a/d/f/b0/h;Li/a/d/f/b0/h;Li/a/d/f/b0/h;Li/a/d/f/b0/h;Li/a/d/f/b0/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/d/f/b0/e;->f:Li/a/d/f/b0/h;

    if-nez p2, :cond_0

    .line 3
    invoke-static {}, Li/a/d/f/b0/g;->b()Li/a/d/f/b0/h;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Li/a/d/f/b0/e;->g:Li/a/d/f/b0/h;

    if-nez p3, :cond_1

    .line 4
    invoke-static {}, Li/a/d/f/b0/g;->a()Li/a/d/f/b0/h;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Li/a/d/f/b0/e;->h:Li/a/d/f/b0/h;

    if-nez p4, :cond_2

    .line 5
    invoke-static {}, Li/a/d/f/b0/g;->b()Li/a/d/f/b0/h;

    move-result-object p4

    :cond_2
    iput-object p4, p0, Li/a/d/f/b0/e;->i:Li/a/d/f/b0/h;

    if-nez p5, :cond_3

    .line 6
    invoke-static {}, Li/a/d/f/b0/g;->a()Li/a/d/f/b0/h;

    move-result-object p5

    :cond_3
    iput-object p5, p0, Li/a/d/f/b0/e;->j:Li/a/d/f/b0/h;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Li/a/d/f/b0/e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Li/a/d/f/b0/e;

    .line 3
    iget-object v1, p0, Li/a/d/f/b0/e;->f:Li/a/d/f/b0/h;

    iget-object v3, p1, Li/a/d/f/b0/e;->f:Li/a/d/f/b0/h;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Li/a/d/f/b0/e;->g:Li/a/d/f/b0/h;

    iget-object v3, p1, Li/a/d/f/b0/e;->g:Li/a/d/f/b0/h;

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Li/a/d/f/b0/e;->h:Li/a/d/f/b0/h;

    iget-object v3, p1, Li/a/d/f/b0/e;->h:Li/a/d/f/b0/h;

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Li/a/d/f/b0/e;->i:Li/a/d/f/b0/h;

    iget-object v3, p1, Li/a/d/f/b0/e;->i:Li/a/d/f/b0/h;

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Li/a/d/f/b0/e;->j:Li/a/d/f/b0/h;

    iget-object p1, p1, Li/a/d/f/b0/e;->j:Li/a/d/f/b0/h;

    .line 7
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Li/a/d/f/b0/e;->f:Li/a/d/f/b0/h;

    .line 2
    invoke-interface {v1}, Li/a/d/f/b0/h;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Li/a/d/f/b0/e;->g:Li/a/d/f/b0/h;

    .line 3
    invoke-interface {v1}, Li/a/d/f/b0/h;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Li/a/d/f/b0/e;->h:Li/a/d/f/b0/h;

    .line 4
    invoke-interface {v1}, Li/a/d/f/b0/h;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Li/a/d/f/b0/e;->i:Li/a/d/f/b0/h;

    .line 5
    invoke-interface {v1}, Li/a/d/f/b0/h;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Li/a/d/f/b0/e;->j:Li/a/d/f/b0/h;

    .line 6
    invoke-interface {v1}, Li/a/d/f/b0/h;->getDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "ParentBased{root:%s,remoteParentSampled:%s,remoteParentNotSampled:%s,localParentSampled:%s,localParentNotSampled:%s}"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/d/f/b0/e;->f:Li/a/d/f/b0/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Li/a/d/f/b0/e;->g:Li/a/d/f/b0/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Li/a/d/f/b0/e;->h:Li/a/d/f/b0/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Li/a/d/f/b0/e;->i:Li/a/d/f/b0/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Li/a/d/f/b0/e;->j:Li/a/d/f/b0/h;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public shouldSample(Li/a/b/e;Ljava/lang/String;Ljava/lang/String;Li/a/a/f/q;Li/a/a/c/j;Ljava/util/List;)Li/a/d/f/b0/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/e;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Li/a/a/f/q;",
            "Li/a/a/c/j;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Li/a/d/f/b0/k;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/a/a/f/j;->e(Li/a/b/e;)Li/a/a/f/k;

    move-result-object v0

    invoke-interface {v0}, Li/a/a/f/k;->b()Li/a/a/f/n;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Li/a/a/f/n;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v2, p0, Li/a/d/f/b0/e;->f:Li/a/d/f/b0/h;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Li/a/d/f/b0/h;->shouldSample(Li/a/b/e;Ljava/lang/String;Ljava/lang/String;Li/a/a/f/q;Li/a/a/c/j;Ljava/util/List;)Li/a/d/f/b0/k;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0}, Li/a/a/f/n;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v0}, Li/a/a/f/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Li/a/d/f/b0/e;->g:Li/a/d/f/b0/h;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Li/a/d/f/b0/h;->shouldSample(Li/a/b/e;Ljava/lang/String;Ljava/lang/String;Li/a/a/f/q;Li/a/a/c/j;Ljava/util/List;)Li/a/d/f/b0/k;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Li/a/d/f/b0/e;->h:Li/a/d/f/b0/h;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Li/a/d/f/b0/h;->shouldSample(Li/a/b/e;Ljava/lang/String;Ljava/lang/String;Li/a/a/f/q;Li/a/a/c/j;Ljava/util/List;)Li/a/d/f/b0/k;

    move-result-object p1

    :goto_0
    return-object p1

    .line 8
    :cond_2
    invoke-interface {v0}, Li/a/a/f/n;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v1, p0, Li/a/d/f/b0/e;->i:Li/a/d/f/b0/h;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Li/a/d/f/b0/h;->shouldSample(Li/a/b/e;Ljava/lang/String;Ljava/lang/String;Li/a/a/f/q;Li/a/a/c/j;Ljava/util/List;)Li/a/d/f/b0/k;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Li/a/d/f/b0/e;->j:Li/a/d/f/b0/h;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Li/a/d/f/b0/h;->shouldSample(Li/a/b/e;Ljava/lang/String;Ljava/lang/String;Li/a/a/f/q;Li/a/a/c/j;Ljava/util/List;)Li/a/d/f/b0/k;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/d/f/b0/e;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
