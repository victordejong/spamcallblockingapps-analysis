.class public abstract Le/k/a/c/d0/z/i;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/d0/z/b0<",
        "TT;>;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final d:Le/k/a/c/i;

.field public final e:Le/k/a/c/d0/r;

.field public final f:Z

.field public final g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/z/i<",
            "*>;",
            "Le/k/a/c/d0/r;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 6
    iget-object p1, p1, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Le/k/a/c/i;)V

    .line 7
    iput-object p1, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    .line 8
    iput-object p2, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    .line 9
    iput-object p3, p0, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    .line 10
    invoke-static {p2}, Le/k/a/c/d0/y/t;->a(Le/k/a/c/d0/r;)Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/d0/z/i;->f:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/d0/r;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Le/k/a/c/i;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    .line 3
    iput-object p3, p0, Le/k/a/c/d0/z/i;->g:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p0, Le/k/a/c/d0/z/i;->e:Le/k/a/c/d0/r;

    .line 5
    invoke-static {p2}, Le/k/a/c/d0/y/t;->a(Le/k/a/c/d0/r;)Z

    move-result p1

    iput-boolean p1, p0, Le/k/a/c/d0/z/i;->f:Z

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;)Le/k/a/c/d0/u;
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/k/a/c/d0/z/i;->m0()Le/k/a/c/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/k/a/c/j;->h(Ljava/lang/String;)Le/k/a/c/d0/u;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "Cannot handle managed/back reference \'%s\': type: container deserializer of type %s returned null for \'getContentDeserializer()\'"

    .line 5
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Le/k/a/c/n0/a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/n0/a;->c:Le/k/a/c/n0/a;

    return-object v0
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->i0()Le/k/a/c/d0/w;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Le/k/a/c/d0/w;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {v0, p1}, Le/k/a/c/d0/w;->v(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 4
    invoke-static {p1, v0}, Le/k/a/c/n0/g;->H(Le/k/a/c/g;Ljava/io/IOException;)Ljava/lang/Object;

    throw v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/k/a/c/d0/z/i;->j0()Le/k/a/c/i;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v3, "Cannot create empty instance of %s, no default Creator"

    .line 6
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v0, v2}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method

.method public j0()Le/k/a/c/i;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/i;->d:Le/k/a/c/i;

    return-object v0
.end method

.method public abstract m0()Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public n0(Le/k/a/c/g;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<BOGUS:",
            "Ljava/lang/Object;",
            ">(",
            "Le/k/a/c/g;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TBOGUS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p2}, Le/k/a/c/n0/g;->I(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    .line 4
    sget-object v0, Le/k/a/c/h;->r:Le/k/a/c/h;

    invoke-virtual {p1, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-static {p2}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 6
    :cond_1
    instance-of p1, p2, Ljava/io/IOException;

    if-eqz p1, :cond_3

    instance-of p1, p2, Le/k/a/c/k;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    check-cast p2, Ljava/io/IOException;

    throw p2

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    const-string p4, "N/A"

    .line 8
    :cond_4
    invoke-static {p2, p3, p4}, Le/k/a/c/k;->j(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/k;

    move-result-object p1

    throw p1
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
