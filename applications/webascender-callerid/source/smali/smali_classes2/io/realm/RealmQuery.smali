.class public Lio/realm/RealmQuery;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lio/realm/internal/Table;

.field private final b:Lio/realm/a;

.field private final c:Lio/realm/internal/TableQuery;

.field private final d:Lio/realm/h0;

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private final g:Z

.field private h:Lio/realm/internal/core/DescriptorOrdering;


# direct methods
.method private constructor <init>(Lio/realm/y;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/realm/internal/core/DescriptorOrdering;

    invoke-direct {v0}, Lio/realm/internal/core/DescriptorOrdering;-><init>()V

    iput-object v0, p0, Lio/realm/RealmQuery;->h:Lio/realm/internal/core/DescriptorOrdering;

    .line 3
    iput-object p1, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    .line 4
    iput-object p2, p0, Lio/realm/RealmQuery;->e:Ljava/lang/Class;

    .line 5
    invoke-static {p2}, Lio/realm/RealmQuery;->u(Ljava/lang/Class;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lio/realm/RealmQuery;->g:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lio/realm/RealmQuery;->d:Lio/realm/h0;

    .line 7
    iput-object p1, p0, Lio/realm/RealmQuery;->a:Lio/realm/internal/Table;

    .line 8
    iput-object p1, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/realm/j0;->g(Ljava/lang/Class;)Lio/realm/h0;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->d:Lio/realm/h0;

    .line 10
    invoke-virtual {p1}, Lio/realm/h0;->k()Lio/realm/internal/Table;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->a:Lio/realm/internal/Table;

    .line 11
    invoke-virtual {p1}, Lio/realm/internal/Table;->N()Lio/realm/internal/TableQuery;

    move-result-object p1

    iput-object p1, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    :goto_0
    return-void
.end method

.method private b()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->i()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method static d(Lio/realm/y;Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Lio/realm/y;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/y;Ljava/lang/Class;)V

    return-object v0
.end method

.method private e(Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;Z)Lio/realm/i0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/internal/TableQuery;",
            "Lio/realm/internal/core/DescriptorOrdering;",
            "Z)",
            "Lio/realm/i0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-static {v0, p1, p2}, Lio/realm/internal/OsResults;->c(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;)Lio/realm/internal/OsResults;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Lio/realm/RealmQuery;->v()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Lio/realm/i0;

    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    iget-object v1, p0, Lio/realm/RealmQuery;->f:Ljava/lang/String;

    invoke-direct {p2, v0, p1, v1}, Lio/realm/i0;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lio/realm/i0;

    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    iget-object v1, p0, Lio/realm/RealmQuery;->e:Ljava/lang/Class;

    invoke-direct {p2, v0, p1, v1}, Lio/realm/i0;-><init>(Lio/realm/a;Lio/realm/internal/OsResults;Ljava/lang/Class;)V

    :goto_0
    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p2}, Lio/realm/i0;->j()Z

    :cond_1
    return-object p2
.end method

.method private f()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->b()Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method private k(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->d:Lio/realm/h0;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/h0;->f(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/q/c;

    move-result-object p1

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/q/c;->e()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/q/c;->h()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->j([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/q/c;->e()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/q/c;->h()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v0, v1, p1, p2}, Lio/realm/internal/TableQuery;->e([J[JZ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method private l(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->d:Lio/realm/h0;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/h0;->f(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/q/c;

    move-result-object p1

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/q/c;->e()[J

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/q/c;->h()[J

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lio/realm/internal/TableQuery;->j([J[J)Lio/realm/internal/TableQuery;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/q/c;->e()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/q/c;->h()[J

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    invoke-virtual {v0, v1, p1, v2, v3}, Lio/realm/internal/TableQuery;->c([J[JJ)Lio/realm/internal/TableQuery;

    :goto_0
    return-object p0
.end method

.method private m(Ljava/lang/String;Ljava/lang/String;Lio/realm/d;)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/d;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->d:Lio/realm/h0;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/h0;->f(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/q/c;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/q/c;->e()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/q/c;->h()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->d([J[JLjava/lang/String;Lio/realm/d;)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method private p()Lio/realm/k0;
    .locals 2

    .line 1
    new-instance v0, Lio/realm/k0;

    iget-object v1, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/k0;-><init>(Lio/realm/j0;)V

    return-object v0
.end method

.method private q()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->h:Lio/realm/internal/core/DescriptorOrdering;

    invoke-virtual {v0}, Lio/realm/internal/core/DescriptorOrdering;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lio/realm/RealmQuery;->n()Lio/realm/i0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/realm/i0;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/m;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 4
    :cond_1
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method private static u(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lio/realm/e0;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private v()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private w()Lio/realm/internal/OsResults;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->h:Lio/realm/internal/core/DescriptorOrdering;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/realm/RealmQuery;->e(Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;Z)Lio/realm/i0;

    move-result-object v0

    iget-object v0, v0, Lio/realm/w;->i:Lio/realm/internal/OsResults;

    return-object v0
.end method

.method private y()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->l()Lio/realm/internal/TableQuery;

    return-object p0
.end method


# virtual methods
.method public A([Ljava/lang/String;[Lio/realm/l0;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Lio/realm/l0;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-direct {p0}, Lio/realm/RealmQuery;->p()Lio/realm/k0;

    move-result-object v0

    iget-object v1, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {v1}, Lio/realm/internal/TableQuery;->g()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/core/QueryDescriptor;->getInstanceForSort(Lio/realm/internal/q/c$a;Lio/realm/internal/Table;[Ljava/lang/String;[Lio/realm/l0;)Lio/realm/internal/core/QueryDescriptor;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lio/realm/RealmQuery;->h:Lio/realm/internal/core/DescriptorOrdering;

    invoke-virtual {p2, p1}, Lio/realm/internal/core/DescriptorOrdering;->a(Lio/realm/internal/core/QueryDescriptor;)V

    return-object p0
.end method

.method public a()Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {v0}, Lio/realm/internal/TableQuery;->a()V

    return-object p0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 3
    invoke-direct {p0}, Lio/realm/RealmQuery;->w()Lio/realm/internal/OsResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public g(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->k(Ljava/lang/String;Ljava/lang/Boolean;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-direct {p0, p1, p2}, Lio/realm/RealmQuery;->l(Ljava/lang/String;Ljava/lang/Integer;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/d;->SENSITIVE:Lio/realm/d;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->j(Ljava/lang/String;Ljava/lang/String;Lio/realm/d;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Lio/realm/d;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/realm/d;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/realm/RealmQuery;->m(Ljava/lang/String;Ljava/lang/String;Lio/realm/d;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public n()Lio/realm/i0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/i0<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 3
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    iget-object v1, p0, Lio/realm/RealmQuery;->h:Lio/realm/internal/core/DescriptorOrdering;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/realm/RealmQuery;->e(Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;Z)Lio/realm/i0;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->b()V

    .line 3
    iget-boolean v0, p0, Lio/realm/RealmQuery;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->q()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    iget-object v1, p0, Lio/realm/RealmQuery;->e:Ljava/lang/Class;

    iget-object v4, p0, Lio/realm/RealmQuery;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v2, v3}, Lio/realm/a;->y(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/e0;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public r(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/RealmQuery;->d:Lio/realm/h0;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/h0;->f(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/q/c;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/q/c;->e()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/q/c;->h()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->h([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public s(Ljava/lang/String;[Ljava/lang/String;)Lio/realm/RealmQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/d;->SENSITIVE:Lio/realm/d;

    invoke-virtual {p0, p1, p2, v0}, Lio/realm/RealmQuery;->t(Ljava/lang/String;[Ljava/lang/String;Lio/realm/d;)Lio/realm/RealmQuery;

    return-object p0
.end method

.method public t(Ljava/lang/String;[Ljava/lang/String;Lio/realm/d;)Lio/realm/RealmQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lio/realm/d;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-eqz p2, :cond_2

    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lio/realm/RealmQuery;->b()Lio/realm/RealmQuery;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-direct {p0, p1, v0, p3}, Lio/realm/RealmQuery;->m(Ljava/lang/String;Ljava/lang/String;Lio/realm/d;)Lio/realm/RealmQuery;

    const/4 v0, 0x1

    .line 4
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lio/realm/RealmQuery;->y()Lio/realm/RealmQuery;

    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1, p3}, Lio/realm/RealmQuery;->m(Ljava/lang/String;Ljava/lang/String;Lio/realm/d;)Lio/realm/RealmQuery;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0}, Lio/realm/RealmQuery;->f()Lio/realm/RealmQuery;

    return-object p0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lio/realm/RealmQuery;->a()Lio/realm/RealmQuery;

    return-object p0
.end method

.method public x(Ljava/lang/String;J)Lio/realm/RealmQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/RealmQuery;->d:Lio/realm/h0;

    const/4 v1, 0x1

    new-array v1, v1, [Lio/realm/RealmFieldType;

    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lio/realm/h0;->f(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/q/c;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/realm/RealmQuery;->c:Lio/realm/internal/TableQuery;

    invoke-virtual {p1}, Lio/realm/internal/q/c;->e()[J

    move-result-object v1

    invoke-virtual {p1}, Lio/realm/internal/q/c;->h()[J

    move-result-object p1

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/realm/internal/TableQuery;->k([J[JJ)Lio/realm/internal/TableQuery;

    return-object p0
.end method

.method public z(Ljava/lang/String;Lio/realm/l0;)Lio/realm/RealmQuery;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/realm/l0;",
            ")",
            "Lio/realm/RealmQuery<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/RealmQuery;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->f()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-array p1, v0, [Lio/realm/l0;

    aput-object p2, p1, v2

    .line 2
    invoke-virtual {p0, v1, p1}, Lio/realm/RealmQuery;->A([Ljava/lang/String;[Lio/realm/l0;)Lio/realm/RealmQuery;

    return-object p0
.end method
