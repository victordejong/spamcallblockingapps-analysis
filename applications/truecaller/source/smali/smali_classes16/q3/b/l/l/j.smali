.class public Lq3/b/l/l/j;
.super Lq3/b/l/l/a;
.source "SourceFile"


# instance fields
.field public e:I

.field public final f:Lq3/b/l/j;

.field public final g:Ljava/lang/String;

.field public final h:Lq3/b/i/d;


# direct methods
.method public constructor <init>(Lq3/b/l/a;Lq3/b/l/j;Ljava/lang/String;Lq3/b/i/d;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lq3/b/l/l/a;-><init>(Lq3/b/l/a;Lq3/b/l/e;Ls1/z/c/f;)V

    iput-object p2, p0, Lq3/b/l/l/j;->f:Lq3/b/l/j;

    iput-object p3, p0, Lq3/b/l/l/j;->g:Ljava/lang/String;

    iput-object p4, p0, Lq3/b/l/l/j;->h:Lq3/b/i/d;

    return-void
.end method

.method public constructor <init>(Lq3/b/l/a;Lq3/b/l/j;Ljava/lang/String;Lq3/b/i/d;I)V
    .locals 0

    and-int/lit8 p3, p5, 0x4

    and-int/lit8 p3, p5, 0x8

    const-string p3, "json"

    .line 1
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "value"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lq3/b/l/l/a;-><init>(Lq3/b/l/a;Lq3/b/l/e;Ls1/z/c/f;)V

    iput-object p2, p0, Lq3/b/l/l/j;->f:Lq3/b/l/j;

    iput-object p3, p0, Lq3/b/l/l/j;->g:Ljava/lang/String;

    iput-object p3, p0, Lq3/b/l/l/j;->h:Lq3/b/i/d;

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lq3/b/l/e;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lq3/b/l/l/j;->I()Lq3/b/l/j;

    move-result-object v0

    invoke-static {v0, p1}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq3/b/l/e;

    return-object p1
.end method

.method public bridge synthetic G()Lq3/b/l/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/b/l/l/j;->I()Lq3/b/l/j;

    move-result-object v0

    return-object v0
.end method

.method public I()Lq3/b/l/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/l/l/j;->f:Lq3/b/l/j;

    return-object v0
.end method

.method public a(Lq3/b/i/d;)Lq3/b/j/b;
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq3/b/l/l/j;->h:Lq3/b/i/d;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lq3/b/l/l/a;->a(Lq3/b/i/d;)Lq3/b/j/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Lq3/b/i/d;)V
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq3/b/l/l/a;->c:Lq3/b/l/l/c;

    iget-boolean v0, v0, Lq3/b/l/l/c;->b:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v0

    instance-of v0, v0, Lq3/b/i/b;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->v2(Lq3/b/i/d;)Ljava/util/Set;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lq3/b/l/l/j;->I()Lq3/b/l/j;

    move-result-object v0

    invoke-virtual {v0}, Lq3/b/l/j;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lq3/b/l/l/j;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0}, Lq3/b/l/l/j;->I()Lq3/b/l/j;

    move-result-object p1

    invoke-virtual {p1}, Lq3/b/l/j;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key"

    .line 6
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered unknown key \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Current input: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    .line 8
    invoke-static {p1, v1}, Ls1/a/a/a/v0/f/d;->G2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->k(ILjava/lang/String;)Lq3/b/l/l/d;

    move-result-object p1

    .line 11
    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public q(Lq3/b/i/d;)I
    .locals 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :cond_0
    iget v0, p0, Lq3/b/l/l/j;->e:I

    invoke-interface {p1}, Lq3/b/i/d;->d()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 2
    iget v0, p0, Lq3/b/l/l/j;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lq3/b/l/l/j;->e:I

    invoke-virtual {p0, p1, v0}, Lq3/b/l/l/a;->F(Lq3/b/i/d;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lq3/b/l/l/j;->I()Lq3/b/l/j;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lq3/b/l/l/a;->c:Lq3/b/l/l/c;

    iget-boolean v1, v1, Lq3/b/l/l/c;->g:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget v1, p0, Lq3/b/l/l/j;->e:I

    sub-int/2addr v1, v2

    .line 4
    invoke-interface {p1, v1}, Lq3/b/i/d;->c(I)Lq3/b/i/d;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v0}, Lq3/b/l/l/j;->C(Ljava/lang/String;)Lq3/b/l/e;

    move-result-object v3

    instance-of v3, v3, Lq3/b/l/i;

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lq3/b/i/d;->a()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    move v4, v2

    goto :goto_2

    .line 6
    :cond_1
    invoke-interface {v1}, Lq3/b/i/d;->getKind()Lq3/b/i/h;

    move-result-object v3

    sget-object v4, Lq3/b/i/h$b;->a:Lq3/b/i/h$b;

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {p0, v0}, Lq3/b/l/l/j;->C(Ljava/lang/String;)Lq3/b/l/e;

    move-result-object v0

    instance-of v3, v0, Lq3/b/l/k;

    const/4 v5, 0x0

    if-nez v3, :cond_2

    move-object v0, v5

    :cond_2
    check-cast v0, Lq3/b/l/k;

    if-eqz v0, :cond_4

    const-string v3, "$this$contentOrNull"

    .line 8
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    instance-of v3, v0, Lq3/b/l/i;

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lq3/b/l/k;->c()Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_4

    .line 10
    invoke-interface {v1, v5}, Lq3/b/i/d;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v4, :cond_0

    .line 11
    :cond_5
    iget p1, p0, Lq3/b/l/l/j;->e:I

    sub-int/2addr p1, v2

    return p1

    :cond_6
    const/4 p1, -0x1

    return p1
.end method
