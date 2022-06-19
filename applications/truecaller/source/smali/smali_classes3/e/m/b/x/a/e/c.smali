.class public abstract Le/m/b/x/a/e/c;
.super Le/m/b/x/d/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/b/x/a/e/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/b/x/d/k;"
    }
.end annotation


# instance fields
.field public final c:Le/m/b/x/a/e/a;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Le/m/b/x/b/g;

.field public g:Le/m/b/x/b/k;

.field public h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field public i:Le/m/b/x/a/d/a;


# direct methods
.method public constructor <init>(Le/m/b/x/a/e/a;Ljava/lang/String;Ljava/lang/String;Le/m/b/x/b/g;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/b/x/a/e/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Le/m/b/x/b/g;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/m/b/x/d/k;-><init>()V

    .line 2
    new-instance v0, Le/m/b/x/b/k;

    invoke-direct {v0}, Le/m/b/x/b/k;-><init>()V

    iput-object v0, p0, Le/m/b/x/a/e/c;->g:Le/m/b/x/b/k;

    .line 3
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p5, p0, Le/m/b/x/a/e/c;->h:Ljava/lang/Class;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Le/m/b/x/a/e/c;->c:Le/m/b/x/a/e/a;

    .line 7
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Le/m/b/x/a/e/c;->d:Ljava/lang/String;

    .line 9
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iput-object p3, p0, Le/m/b/x/a/e/c;->e:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Le/m/b/x/a/e/c;->f:Le/m/b/x/b/g;

    .line 12
    iget-object p2, p1, Le/m/b/x/a/e/a;->d:Ljava/lang/String;

    const-string p3, "Google-API-Java-Client"

    if-eqz p2, :cond_0

    .line 13
    iget-object p4, p0, Le/m/b/x/a/e/c;->g:Le/m/b/x/b/k;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Le/m/b/x/b/k;->A(Ljava/lang/String;)Le/m/b/x/b/k;

    goto :goto_0

    .line 14
    :cond_0
    iget-object p2, p0, Le/m/b/x/a/e/c;->g:Le/m/b/x/b/k;

    invoke-virtual {p2, p3}, Le/m/b/x/b/k;->A(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 15
    :goto_0
    iget-object p2, p0, Le/m/b/x/a/e/c;->g:Le/m/b/x/b/k;

    .line 16
    sget-object p3, Le/m/b/x/a/e/c$a;->b:Le/m/b/x/a/e/c$a;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 18
    iget-object p3, p3, Le/m/b/x/a/e/c$a;->a:Ljava/lang/String;

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p5, "[^\\w\\d\\-]"

    const-string v0, "-"

    invoke-virtual {p1, p5, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x0

    aput-object p1, p4, p5

    .line 20
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "X-Goog-Api-Client"

    .line 21
    invoke-virtual {p2, p3, p1}, Le/m/b/x/b/k;->s(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/b/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/b/x/a/e/c;->o(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/c;

    move-result-object p1

    return-object p1
.end method

.method public i()Le/m/b/x/b/f;
    .locals 4

    .line 1
    new-instance v0, Le/m/b/x/b/f;

    iget-object v1, p0, Le/m/b/x/a/e/c;->c:Le/m/b/x/a/e/a;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Le/m/b/x/a/e/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Le/m/b/x/a/e/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/m/b/x/a/e/c;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, p0, v3}, Le/m/b/x/b/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Le/m/b/x/b/f;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/e/c;->k()Le/m/b/x/b/q;

    move-result-object v0

    iget-object v1, p0, Le/m/b/x/a/e/c;->h:Ljava/lang/Class;

    .line 2
    iget v2, v0, Le/m/b/x/b/q;->f:I

    .line 3
    iget-object v3, v0, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 4
    iget-object v3, v3, Le/m/b/x/b/n;->j:Ljava/lang/String;

    const-string v4, "HEAD"

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    div-int/lit8 v3, v2, 0x64

    if-eq v3, v4, :cond_1

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_1

    const/16 v3, 0x130

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {v0}, Le/m/b/x/b/q;->d()V

    move v2, v5

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_2

    goto :goto_4

    .line 7
    :cond_2
    iget-object v2, v0, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 8
    iget-object v2, v2, Le/m/b/x/b/n;->q:Le/m/b/x/d/s;

    .line 9
    invoke-virtual {v0}, Le/m/b/x/b/q;->b()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v0}, Le/m/b/x/b/q;->c()Ljava/nio/charset/Charset;

    move-result-object v0

    check-cast v2, Le/m/b/x/c/e;

    .line 10
    iget-object v7, v2, Le/m/b/x/c/e;->a:Le/m/b/x/c/c;

    invoke-virtual {v7, v6, v0}, Le/m/b/x/c/c;->c(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Le/m/b/x/c/f;

    move-result-object v0

    .line 11
    iget-object v6, v2, Le/m/b/x/c/e;->b:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    :try_start_0
    iget-object v6, v2, Le/m/b/x/c/e;->b:Ljava/util/Set;

    invoke-virtual {v0, v6}, Le/m/b/x/c/f;->I(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 13
    move-object v6, v0

    check-cast v6, Le/m/b/x/c/j/c;

    .line 14
    iget-object v6, v6, Le/m/b/x/c/j/c;->f:Le/m/b/x/c/i;

    .line 15
    sget-object v7, Le/m/b/x/c/i;->d:Le/m/b/x/c/i;

    if-eq v6, v7, :cond_4

    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v5

    :goto_2
    const-string v7, "wrapper key(s) not found: %s"

    new-array v8, v4, [Ljava/lang/Object;

    iget-object v2, v2, Le/m/b/x/c/e;->b:Ljava/util/Set;

    aput-object v2, v8, v5

    .line 16
    invoke-static {v6, v7, v8}, Ln3/g0/y;->u(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :goto_3
    invoke-virtual {v0, v1, v4, v3}, Le/m/b/x/c/f;->j(Ljava/lang/reflect/Type;ZLe/m/b/x/c/a;)Ljava/lang/Object;

    move-result-object v3

    :goto_4
    return-object v3

    :catchall_0
    move-exception v1

    .line 18
    check-cast v0, Le/m/b/x/c/j/c;

    .line 19
    iget-object v0, v0, Le/m/b/x/c/j/c;->c:Le/m/e/g0/a;

    invoke-virtual {v0}, Le/m/e/g0/a;->close()V

    .line 20
    throw v1
.end method

.method public k()Le/m/b/x/b/q;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Le/m/b/x/a/e/c;->i:Le/m/b/x/a/d/a;

    const-string v2, "PUT"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_7

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2
    :goto_0
    invoke-static {v0}, Ln3/g0/y;->checkArgument2(Z)V

    const-string v0, "GET"

    .line 3
    invoke-static {v4}, Ln3/g0/y;->checkArgument2(Z)V

    .line 4
    iget-object v5, v1, Le/m/b/x/a/e/c;->d:Ljava/lang/String;

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/m/b/x/a/e/c;->l()Le/m/b/x/a/e/a;

    move-result-object v6

    .line 6
    iget-object v6, v6, Le/m/b/x/a/e/a;->a:Le/m/b/x/b/o;

    .line 7
    invoke-virtual/range {p0 .. p0}, Le/m/b/x/a/e/c;->i()Le/m/b/x/b/f;

    move-result-object v7

    iget-object v8, v1, Le/m/b/x/a/e/c;->f:Le/m/b/x/b/g;

    invoke-virtual {v6, v5, v7, v8}, Le/m/b/x/b/o;->a(Ljava/lang/String;Le/m/b/x/b/f;Le/m/b/x/b/g;)Le/m/b/x/b/n;

    move-result-object v5

    .line 8
    iget-object v6, v5, Le/m/b/x/b/n;->j:Ljava/lang/String;

    const-string v7, "POST"

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v4, v3

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 11
    iget-object v8, v5, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 12
    invoke-virtual {v8}, Le/m/b/x/b/f;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x800

    if-le v8, v9, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    iget-object v8, v5, Le/m/b/x/b/n;->i:Le/m/b/x/b/t;

    .line 14
    invoke-virtual {v8, v6}, Le/m/b/x/b/t;->c(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v4, v6

    :goto_1
    if-eqz v4, :cond_4

    .line 15
    iget-object v4, v5, Le/m/b/x/b/n;->j:Ljava/lang/String;

    .line 16
    invoke-virtual {v5, v7}, Le/m/b/x/b/n;->d(Ljava/lang/String;)Le/m/b/x/b/n;

    .line 17
    iget-object v6, v5, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    const-string v8, "X-HTTP-Method-Override"

    .line 18
    invoke-virtual {v6, v8, v4}, Le/m/b/x/b/k;->s(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/b/k;

    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    new-instance v0, Le/m/b/x/b/a0;

    .line 21
    iget-object v4, v5, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 22
    invoke-virtual {v4}, Le/m/b/x/b/f;->m()Le/m/b/x/b/f;

    move-result-object v4

    invoke-direct {v0, v4}, Le/m/b/x/b/a0;-><init>(Ljava/lang/Object;)V

    .line 23
    iput-object v0, v5, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    .line 24
    iget-object v0, v5, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 25
    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    goto :goto_2

    .line 26
    :cond_3
    iget-object v0, v5, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    if-nez v0, :cond_4

    .line 27
    new-instance v0, Le/m/b/x/b/d;

    invoke-direct {v0}, Le/m/b/x/b/d;-><init>()V

    .line 28
    iput-object v0, v5, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    .line 29
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Le/m/b/x/a/e/c;->l()Le/m/b/x/a/e/a;

    move-result-object v0

    invoke-virtual {v0}, Le/m/b/x/a/e/a;->a()Le/m/b/x/d/s;

    move-result-object v0

    .line 30
    iput-object v0, v5, Le/m/b/x/b/n;->q:Le/m/b/x/d/s;

    .line 31
    iget-object v0, v1, Le/m/b/x/a/e/c;->f:Le/m/b/x/b/g;

    if-nez v0, :cond_6

    iget-object v0, v1, Le/m/b/x/a/e/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Le/m/b/x/a/e/c;->d:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Le/m/b/x/a/e/c;->d:Ljava/lang/String;

    const-string v2, "PATCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    :cond_5
    new-instance v0, Le/m/b/x/b/d;

    invoke-direct {v0}, Le/m/b/x/b/d;-><init>()V

    .line 34
    iput-object v0, v5, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    .line 35
    :cond_6
    iget-object v0, v5, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    .line 36
    iget-object v2, v1, Le/m/b/x/a/e/c;->g:Le/m/b/x/b/k;

    invoke-virtual {v0, v2}, Le/m/b/x/d/k;->putAll(Ljava/util/Map;)V

    .line 37
    new-instance v0, Le/m/b/x/b/e;

    invoke-direct {v0}, Le/m/b/x/b/e;-><init>()V

    .line 38
    iput-object v0, v5, Le/m/b/x/b/n;->r:Le/m/b/x/b/h;

    .line 39
    iput-boolean v3, v5, Le/m/b/x/b/n;->w:Z

    .line 40
    iget-object v0, v5, Le/m/b/x/b/n;->p:Le/m/b/x/b/s;

    .line 41
    new-instance v2, Le/m/b/x/a/e/b;

    invoke-direct {v2, v1, v0, v5}, Le/m/b/x/a/e/b;-><init>(Le/m/b/x/a/e/c;Le/m/b/x/b/s;Le/m/b/x/b/n;)V

    .line 42
    iput-object v2, v5, Le/m/b/x/b/n;->p:Le/m/b/x/b/s;

    .line 43
    invoke-virtual {v5}, Le/m/b/x/b/n;->b()Le/m/b/x/b/q;

    move-result-object v0

    goto/16 :goto_10

    .line 44
    :cond_7
    invoke-virtual/range {p0 .. p0}, Le/m/b/x/a/e/c;->i()Le/m/b/x/b/f;

    move-result-object v0

    .line 45
    invoke-virtual/range {p0 .. p0}, Le/m/b/x/a/e/c;->l()Le/m/b/x/a/e/a;

    move-result-object v5

    .line 46
    iget-object v5, v5, Le/m/b/x/a/e/a;->a:Le/m/b/x/b/o;

    .line 47
    iget-object v6, v1, Le/m/b/x/a/e/c;->d:Ljava/lang/String;

    iget-object v7, v1, Le/m/b/x/a/e/c;->f:Le/m/b/x/b/g;

    invoke-virtual {v5, v6, v0, v7}, Le/m/b/x/b/o;->a(Ljava/lang/String;Le/m/b/x/b/f;Le/m/b/x/b/g;)Le/m/b/x/b/n;

    move-result-object v5

    .line 48
    iget-boolean v5, v5, Le/m/b/x/b/n;->t:Z

    .line 49
    iget-object v6, v1, Le/m/b/x/a/e/c;->i:Le/m/b/x/a/d/a;

    iget-object v7, v1, Le/m/b/x/a/e/c;->g:Le/m/b/x/b/k;

    .line 50
    iput-object v7, v6, Le/m/b/x/a/d/a;->h:Le/m/b/x/b/k;

    .line 51
    iput-boolean v3, v6, Le/m/b/x/a/d/a;->r:Z

    .line 52
    iget-object v7, v6, Le/m/b/x/a/d/a;->a:Le/m/b/x/a/d/a$a;

    sget-object v8, Le/m/b/x/a/d/a$a;->a:Le/m/b/x/a/d/a$a;

    if-ne v7, v8, :cond_8

    move v7, v4

    goto :goto_3

    :cond_8
    move v7, v3

    .line 53
    :goto_3
    invoke-static {v7}, Ln3/g0/y;->checkArgument2(Z)V

    .line 54
    sget-object v7, Le/m/b/x/a/d/a$a;->b:Le/m/b/x/a/d/a$a;

    .line 55
    iput-object v7, v6, Le/m/b/x/a/d/a;->a:Le/m/b/x/a/d/a$a;

    const-string v7, "uploadType"

    const-string v8, "resumable"

    .line 56
    invoke-virtual {v0, v7, v8}, Le/m/b/x/d/k;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v7, v6, Le/m/b/x/a/d/a;->d:Le/m/b/x/b/g;

    if-nez v7, :cond_9

    new-instance v7, Le/m/b/x/b/d;

    invoke-direct {v7}, Le/m/b/x/b/d;-><init>()V

    .line 58
    :cond_9
    iget-object v8, v6, Le/m/b/x/a/d/a;->c:Le/m/b/x/b/o;

    iget-object v9, v6, Le/m/b/x/a/d/a;->g:Ljava/lang/String;

    .line 59
    invoke-virtual {v8, v9, v0, v7}, Le/m/b/x/b/o;->a(Ljava/lang/String;Le/m/b/x/b/f;Le/m/b/x/b/g;)Le/m/b/x/b/n;

    move-result-object v0

    .line 60
    iget-object v7, v6, Le/m/b/x/a/d/a;->h:Le/m/b/x/b/k;

    iget-object v8, v6, Le/m/b/x/a/d/a;->b:Le/m/b/x/b/b;

    .line 61
    iget-object v8, v8, Le/m/b/x/b/b;->a:Ljava/lang/String;

    const-string v9, "X-Upload-Content-Type"

    .line 62
    invoke-virtual {v7, v9, v8}, Le/m/b/x/b/k;->s(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/b/k;

    .line 63
    invoke-virtual {v6}, Le/m/b/x/a/d/a;->d()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 64
    iget-object v7, v6, Le/m/b/x/a/d/a;->h:Le/m/b/x/b/k;

    invoke-virtual {v6}, Le/m/b/x/a/d/a;->c()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "X-Upload-Content-Length"

    invoke-virtual {v7, v9, v8}, Le/m/b/x/b/k;->s(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/b/k;

    .line 65
    :cond_a
    iget-object v7, v0, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    .line 66
    iget-object v8, v6, Le/m/b/x/a/d/a;->h:Le/m/b/x/b/k;

    invoke-virtual {v7, v8}, Le/m/b/x/d/k;->putAll(Ljava/util/Map;)V

    .line 67
    invoke-virtual {v6, v0}, Le/m/b/x/a/d/a;->a(Le/m/b/x/b/n;)Le/m/b/x/b/q;

    move-result-object v7

    .line 68
    :try_start_0
    sget-object v0, Le/m/b/x/a/d/a$a;->c:Le/m/b/x/a/d/a$a;

    .line 69
    iput-object v0, v6, Le/m/b/x/a/d/a;->a:Le/m/b/x/a/d/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    invoke-virtual {v7}, Le/m/b/x/b/q;->e()Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v7

    goto/16 :goto_f

    .line 71
    :cond_b
    :try_start_1
    new-instance v0, Le/m/b/x/b/f;

    .line 72
    iget-object v8, v7, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 73
    iget-object v8, v8, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    .line 74
    invoke-virtual {v8}, Le/m/b/x/b/k;->m()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Le/m/b/x/b/f;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    invoke-virtual {v7}, Le/m/b/x/b/q;->a()V

    .line 76
    iget-object v7, v6, Le/m/b/x/a/d/a;->b:Le/m/b/x/b/b;

    invoke-virtual {v7}, Le/m/b/x/b/b;->c()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    .line 77
    invoke-virtual {v7}, Ljava/io/InputStream;->markSupported()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v6}, Le/m/b/x/a/d/a;->d()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 78
    new-instance v7, Ljava/io/BufferedInputStream;

    iget-object v8, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    .line 79
    :cond_c
    :goto_4
    invoke-virtual {v6}, Le/m/b/x/a/d/a;->d()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 80
    iget v7, v6, Le/m/b/x/a/d/a;->m:I

    int-to-long v7, v7

    invoke-virtual {v6}, Le/m/b/x/a/d/a;->c()J

    move-result-wide v9

    iget-wide v11, v6, Le/m/b/x/a/d/a;->l:J

    sub-long/2addr v9, v11

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    goto :goto_5

    .line 81
    :cond_d
    iget v7, v6, Le/m/b/x/a/d/a;->m:I

    .line 82
    :goto_5
    invoke-virtual {v6}, Le/m/b/x/a/d/a;->d()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_e

    .line 83
    iget-object v8, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    invoke-virtual {v8, v7}, Ljava/io/InputStream;->mark(I)V

    .line 84
    iget-object v8, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    int-to-long v10, v7

    .line 85
    new-instance v12, Le/m/b/x/d/d;

    invoke-direct {v12, v8, v10, v11}, Le/m/b/x/d/d;-><init>(Ljava/io/InputStream;J)V

    .line 86
    new-instance v8, Le/m/b/x/b/v;

    iget-object v13, v6, Le/m/b/x/a/d/a;->b:Le/m/b/x/b/b;

    .line 87
    iget-object v13, v13, Le/m/b/x/b/b;->a:Ljava/lang/String;

    .line 88
    invoke-direct {v8, v13, v12}, Le/m/b/x/b/v;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 89
    iput-boolean v4, v8, Le/m/b/x/b/v;->d:Z

    .line 90
    iput-wide v10, v8, Le/m/b/x/b/v;->c:J

    .line 91
    iput-boolean v3, v8, Le/m/b/x/b/b;->b:Z

    .line 92
    invoke-virtual {v6}, Le/m/b/x/a/d/a;->c()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Le/m/b/x/a/d/a;->k:Ljava/lang/String;

    goto/16 :goto_b

    .line 93
    :cond_e
    iget-object v4, v6, Le/m/b/x/a/d/a;->q:[B

    if-nez v4, :cond_11

    .line 94
    iget-object v4, v6, Le/m/b/x/a/d/a;->n:Ljava/lang/Byte;

    if-nez v4, :cond_f

    add-int/lit8 v8, v7, 0x1

    goto :goto_6

    :cond_f
    move v8, v7

    :goto_6
    add-int/lit8 v10, v7, 0x1

    .line 95
    new-array v10, v10, [B

    iput-object v10, v6, Le/m/b/x/a/d/a;->q:[B

    if-eqz v4, :cond_10

    .line 96
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v10, v3

    :cond_10
    move v4, v3

    goto :goto_7

    .line 97
    :cond_11
    iget-wide v10, v6, Le/m/b/x/a/d/a;->o:J

    iget-wide v12, v6, Le/m/b/x/a/d/a;->l:J

    sub-long/2addr v10, v12

    long-to-int v8, v10

    .line 98
    iget v10, v6, Le/m/b/x/a/d/a;->p:I

    sub-int/2addr v10, v8

    invoke-static {v4, v10, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    iget-object v4, v6, Le/m/b/x/a/d/a;->n:Ljava/lang/Byte;

    if-eqz v4, :cond_12

    .line 100
    iget-object v10, v6, Le/m/b/x/a/d/a;->q:[B

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v10, v8

    :cond_12
    sub-int v4, v7, v8

    move/from16 v17, v8

    move v8, v4

    move/from16 v4, v17

    .line 101
    :goto_7
    iget-object v10, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    iget-object v11, v6, Le/m/b/x/a/d/a;->q:[B

    add-int/lit8 v12, v7, 0x1

    sub-int/2addr v12, v8

    .line 102
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v8, :cond_26

    move v13, v3

    :goto_8
    if-ge v13, v8, :cond_14

    add-int v14, v12, v13

    sub-int v15, v8, v13

    .line 104
    invoke-virtual {v10, v11, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_13

    goto :goto_9

    :cond_13
    add-int/2addr v13, v14

    goto :goto_8

    :cond_14
    :goto_9
    if-ge v13, v8, :cond_16

    .line 105
    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v7, v4

    .line 106
    iget-object v4, v6, Le/m/b/x/a/d/a;->n:Ljava/lang/Byte;

    if-eqz v4, :cond_15

    add-int/lit8 v7, v7, 0x1

    .line 107
    iput-object v9, v6, Le/m/b/x/a/d/a;->n:Ljava/lang/Byte;

    .line 108
    :cond_15
    iget-object v4, v6, Le/m/b/x/a/d/a;->k:Ljava/lang/String;

    const-string v8, "*"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 109
    iget-wide v10, v6, Le/m/b/x/a/d/a;->l:J

    int-to-long v12, v7

    add-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Le/m/b/x/a/d/a;->k:Ljava/lang/String;

    goto :goto_a

    .line 110
    :cond_16
    iget-object v4, v6, Le/m/b/x/a/d/a;->q:[B

    aget-byte v4, v4, v7

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    iput-object v4, v6, Le/m/b/x/a/d/a;->n:Ljava/lang/Byte;

    .line 111
    :cond_17
    :goto_a
    new-instance v8, Le/m/b/x/b/c;

    iget-object v4, v6, Le/m/b/x/a/d/a;->b:Le/m/b/x/b/b;

    .line 112
    iget-object v4, v4, Le/m/b/x/b/b;->a:Ljava/lang/String;

    .line 113
    iget-object v10, v6, Le/m/b/x/a/d/a;->q:[B

    invoke-direct {v8, v4, v10, v3, v7}, Le/m/b/x/b/c;-><init>(Ljava/lang/String;[BII)V

    .line 114
    iget-wide v10, v6, Le/m/b/x/a/d/a;->l:J

    int-to-long v12, v7

    add-long/2addr v10, v12

    iput-wide v10, v6, Le/m/b/x/a/d/a;->o:J

    .line 115
    :goto_b
    iput v7, v6, Le/m/b/x/a/d/a;->p:I

    const-wide/16 v10, 0x1

    if-nez v7, :cond_18

    const-string v4, "bytes */"

    .line 116
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v6, Le/m/b/x/a/d/a;->k:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_18
    const-string v4, "bytes "

    .line 117
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v12, v6, Le/m/b/x/a/d/a;->l:J

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v6, Le/m/b/x/a/d/a;->l:J

    int-to-long v14, v7

    add-long/2addr v12, v14

    sub-long/2addr v12, v10

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Le/m/b/x/a/d/a;->k:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    :goto_c
    iget-object v7, v6, Le/m/b/x/a/d/a;->c:Le/m/b/x/b/o;

    .line 119
    invoke-virtual {v7, v2, v0, v9}, Le/m/b/x/b/o;->a(Ljava/lang/String;Le/m/b/x/b/f;Le/m/b/x/b/g;)Le/m/b/x/b/n;

    move-result-object v7

    .line 120
    iput-object v7, v6, Le/m/b/x/a/d/a;->i:Le/m/b/x/b/n;

    .line 121
    iput-object v8, v7, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    .line 122
    iget-object v7, v7, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    .line 123
    invoke-virtual {v7, v4}, Le/m/b/x/b/k;->u(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 124
    new-instance v4, Le/m/b/x/a/d/b;

    iget-object v7, v6, Le/m/b/x/a/d/a;->i:Le/m/b/x/b/n;

    invoke-direct {v4, v6, v7}, Le/m/b/x/a/d/b;-><init>(Le/m/b/x/a/d/a;Le/m/b/x/b/n;)V

    .line 125
    invoke-virtual {v6}, Le/m/b/x/a/d/a;->d()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 126
    iget-object v4, v6, Le/m/b/x/a/d/a;->i:Le/m/b/x/b/n;

    invoke-virtual {v6, v4}, Le/m/b/x/a/d/a;->b(Le/m/b/x/b/n;)Le/m/b/x/b/q;

    move-result-object v4

    goto :goto_d

    .line 127
    :cond_19
    iget-object v4, v6, Le/m/b/x/a/d/a;->i:Le/m/b/x/b/n;

    invoke-virtual {v6, v4}, Le/m/b/x/a/d/a;->a(Le/m/b/x/b/n;)Le/m/b/x/b/q;

    move-result-object v4

    .line 128
    :goto_d
    :try_start_2
    invoke-virtual {v4}, Le/m/b/x/b/q;->e()Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 129
    invoke-virtual {v6}, Le/m/b/x/a/d/a;->c()J

    move-result-wide v2

    iput-wide v2, v6, Le/m/b/x/a/d/a;->l:J

    .line 130
    iget-object v0, v6, Le/m/b/x/a/d/a;->b:Le/m/b/x/b/b;

    .line 131
    iget-boolean v0, v0, Le/m/b/x/b/b;->b:Z

    if-eqz v0, :cond_1a

    .line 132
    iget-object v0, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 133
    :cond_1a
    sget-object v0, Le/m/b/x/a/d/a$a;->e:Le/m/b/x/a/d/a$a;

    .line 134
    iput-object v0, v6, Le/m/b/x/a/d/a;->a:Le/m/b/x/a/d/a$a;

    goto :goto_e

    .line 135
    :cond_1b
    iget v7, v4, Le/m/b/x/b/q;->f:I

    const/16 v8, 0x134

    if-eq v7, v8, :cond_1f

    .line 136
    iget-object v0, v6, Le/m/b/x/a/d/a;->b:Le/m/b/x/b/b;

    .line 137
    iget-boolean v0, v0, Le/m/b/x/b/b;->b:Z

    if-eqz v0, :cond_1c

    .line 138
    iget-object v0, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1c
    :goto_e
    move-object v0, v4

    .line 139
    :goto_f
    iget-object v2, v0, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 140
    invoke-virtual/range {p0 .. p0}, Le/m/b/x/a/e/c;->l()Le/m/b/x/a/e/a;

    move-result-object v3

    invoke-virtual {v3}, Le/m/b/x/a/e/a;->a()Le/m/b/x/d/s;

    move-result-object v3

    .line 141
    iput-object v3, v2, Le/m/b/x/b/n;->q:Le/m/b/x/d/s;

    if-eqz v5, :cond_1e

    .line 142
    invoke-virtual {v0}, Le/m/b/x/b/q;->e()Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_10

    .line 143
    :cond_1d
    invoke-virtual {v1, v0}, Le/m/b/x/a/e/c;->n(Le/m/b/x/b/q;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 144
    :cond_1e
    :goto_10
    iget-object v2, v0, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 145
    iget-object v2, v2, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    return-object v0

    .line 146
    :cond_1f
    :try_start_3
    iget-object v7, v4, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 147
    iget-object v7, v7, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    .line 148
    invoke-virtual {v7}, Le/m/b/x/b/k;->m()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_20

    .line 149
    new-instance v0, Le/m/b/x/b/f;

    invoke-direct {v0, v7}, Le/m/b/x/b/f;-><init>(Ljava/lang/String;)V

    .line 150
    :cond_20
    iget-object v7, v4, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 151
    iget-object v7, v7, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    .line 152
    invoke-virtual {v7}, Le/m/b/x/b/k;->n()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v12, 0x0

    if-nez v7, :cond_21

    move-wide v7, v12

    goto :goto_11

    :cond_21
    const/16 v8, 0x2d

    .line 153
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v7, v10

    .line 154
    :goto_11
    iget-wide v10, v6, Le/m/b/x/a/d/a;->l:J

    sub-long v10, v7, v10

    cmp-long v14, v10, v12

    if-ltz v14, :cond_22

    .line 155
    iget v14, v6, Le/m/b/x/a/d/a;->p:I

    int-to-long v14, v14

    cmp-long v14, v10, v14

    if-gtz v14, :cond_22

    const/4 v14, 0x1

    goto :goto_12

    :cond_22
    move v14, v3

    .line 156
    :goto_12
    invoke-static {v14}, Ln3/g0/y;->checkState2(Z)V

    .line 157
    iget v14, v6, Le/m/b/x/a/d/a;->p:I

    int-to-long v14, v14

    sub-long/2addr v14, v10

    .line 158
    invoke-virtual {v6}, Le/m/b/x/a/d/a;->d()Z

    move-result v16

    if-eqz v16, :cond_24

    cmp-long v9, v14, v12

    if-lez v9, :cond_25

    .line 159
    iget-object v9, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->reset()V

    .line 160
    iget-object v9, v6, Le/m/b/x/a/d/a;->j:Ljava/io/InputStream;

    invoke-virtual {v9, v10, v11}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_23

    const/4 v9, 0x1

    goto :goto_13

    :cond_23
    move v9, v3

    .line 161
    :goto_13
    invoke-static {v9}, Ln3/g0/y;->checkState2(Z)V

    goto :goto_14

    :cond_24
    cmp-long v10, v14, v12

    if-nez v10, :cond_25

    .line 162
    iput-object v9, v6, Le/m/b/x/a/d/a;->q:[B

    .line 163
    :cond_25
    :goto_14
    iput-wide v7, v6, Le/m/b/x/a/d/a;->l:J

    .line 164
    sget-object v7, Le/m/b/x/a/d/a$a;->d:Le/m/b/x/a/d/a$a;

    .line 165
    iput-object v7, v6, Le/m/b/x/a/d/a;->a:Le/m/b/x/a/d/a$a;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    invoke-virtual {v4}, Le/m/b/x/b/q;->a()V

    const/4 v4, 0x1

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Le/m/b/x/b/q;->a()V

    .line 167
    throw v0

    .line 168
    :cond_26
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "len is negative"

    invoke-direct {v0, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 169
    invoke-virtual {v7}, Le/m/b/x/b/q;->a()V

    .line 170
    throw v0

    :catchall_2
    move-exception v0

    .line 171
    invoke-virtual {v7}, Le/m/b/x/b/q;->a()V

    .line 172
    throw v0
.end method

.method public l()Le/m/b/x/a/e/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/a/e/c;->c:Le/m/b/x/a/e/a;

    return-object v0
.end method

.method public final m(Le/m/b/x/b/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/b/x/a/e/c;->c:Le/m/b/x/a/e/a;

    .line 2
    iget-object v0, v0, Le/m/b/x/a/e/a;->a:Le/m/b/x/b/o;

    .line 3
    new-instance v1, Le/m/b/x/a/d/a;

    .line 4
    iget-object v2, v0, Le/m/b/x/b/o;->a:Le/m/b/x/b/t;

    .line 5
    iget-object v0, v0, Le/m/b/x/b/o;->b:Le/m/b/x/b/p;

    .line 6
    invoke-direct {v1, p1, v2, v0}, Le/m/b/x/a/d/a;-><init>(Le/m/b/x/b/b;Le/m/b/x/b/t;Le/m/b/x/b/p;)V

    iput-object v1, p0, Le/m/b/x/a/e/c;->i:Le/m/b/x/a/d/a;

    .line 7
    iget-object p1, p0, Le/m/b/x/a/e/c;->d:Ljava/lang/String;

    const-string v0, "POST"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PUT"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 11
    :goto_1
    invoke-static {v0}, Ln3/g0/y;->checkArgument2(Z)V

    .line 12
    iput-object p1, v1, Le/m/b/x/a/d/a;->g:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Le/m/b/x/a/e/c;->f:Le/m/b/x/b/g;

    if-eqz p1, :cond_2

    .line 14
    iget-object v0, p0, Le/m/b/x/a/e/c;->i:Le/m/b/x/a/d/a;

    .line 15
    iput-object p1, v0, Le/m/b/x/a/d/a;->d:Le/m/b/x/b/g;

    :cond_2
    return-void
.end method

.method public n(Le/m/b/x/b/q;)Ljava/io/IOException;
    .locals 1

    .line 1
    new-instance v0, Le/m/b/x/b/r;

    invoke-direct {v0, p1}, Le/m/b/x/b/r;-><init>(Le/m/b/x/b/q;)V

    return-object v0
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Le/m/b/x/a/e/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/d/k;->h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;

    move-object p1, p0

    check-cast p1, Le/m/b/x/a/e/c;

    return-object p1
.end method
