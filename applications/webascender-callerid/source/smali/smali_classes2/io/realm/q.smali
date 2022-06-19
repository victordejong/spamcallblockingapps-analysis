.class Lio/realm/q;
.super Lio/realm/h0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;)V
    .locals 1

    .line 1
    new-instance v0, Lio/realm/h0$a;

    invoke-direct {v0, p3}, Lio/realm/h0$a;-><init>(Lio/realm/internal/Table;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/h0;-><init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;Lio/realm/internal/c;)V

    return-void
.end method

.method private s(Ljava/lang/String;[Lio/realm/j;)V
    .locals 3

    if-eqz p2, :cond_2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    array-length v1, p2

    if-lez v1, :cond_2

    .line 2
    sget-object v1, Lio/realm/j;->INDEXED:Lio/realm/j;

    invoke-static {p2, v1}, Lio/realm/q;->x([Lio/realm/j;Lio/realm/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/q;->r(Ljava/lang/String;)Lio/realm/h0;

    const/4 v0, 0x1

    .line 4
    :cond_0
    sget-object v1, Lio/realm/j;->PRIMARY_KEY:Lio/realm/j;

    invoke-static {p2, v1}, Lio/realm/q;->x([Lio/realm/j;Lio/realm/j;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lio/realm/q;->t(Ljava/lang/String;)Lio/realm/h0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 6
    invoke-virtual {p0, p1}, Lio/realm/h0;->e(Ljava/lang/String;)J

    move-result-wide v1

    if-eqz v0, :cond_1

    .line 7
    iget-object p1, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {p1, v1, v2}, Lio/realm/internal/Table;->F(J)V

    .line 8
    :cond_1
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    :cond_2
    :goto_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/h0;->b:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->h:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->u()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "\'addPrimaryKey\' is not supported by synced Realms."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private v(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->n(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field already exists in \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/realm/h0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private w(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/realm/h0;->c(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lio/realm/q;->v(Ljava/lang/String;)V

    return-void
.end method

.method static x([Lio/realm/j;Lio/realm/j;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Lio/realm/j;",
            ")",
            "Lio/realm/h0;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/realm/h0;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/h0$b;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2
    sget-object p3, Lio/realm/h0;->e:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 3
    const-class p3, Lio/realm/e0;

    invoke-virtual {p3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eqz p3, :cond_0

    .line 4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    const-string p1, "Use \'addRealmObjectField()\' instead to add fields that link to other RealmObjects: %s(%s)"

    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 5
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v0

    const-string p1, "Realm doesn\'t support this field type: %s(%s)"

    invoke-static {v3, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Use addRealmObjectField() instead to add fields that link to other RealmObjects: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_2
    sget-object p2, Lio/realm/j;->PRIMARY_KEY:Lio/realm/j;

    invoke-static {p3, p2}, Lio/realm/q;->x([Lio/realm/j;Lio/realm/j;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    invoke-direct {p0}, Lio/realm/q;->u()V

    .line 9
    :cond_3
    invoke-direct {p0, p1}, Lio/realm/q;->w(Ljava/lang/String;)V

    .line 10
    iget-boolean p2, v0, Lio/realm/h0$b;->b:Z

    .line 11
    sget-object v2, Lio/realm/j;->REQUIRED:Lio/realm/j;

    invoke-static {p3, v2}, Lio/realm/q;->x([Lio/realm/j;Lio/realm/j;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, p2

    .line 12
    :goto_0
    iget-object p2, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    iget-object v0, v0, Lio/realm/h0$b;->a:Lio/realm/RealmFieldType;

    invoke-virtual {p2, v0, p1, v1}, Lio/realm/internal/Table;->a(Lio/realm/RealmFieldType;Ljava/lang/String;Z)J

    move-result-wide v0

    .line 13
    :try_start_0
    invoke-direct {p0, p1, p3}, Lio/realm/q;->s(Ljava/lang/String;[Lio/realm/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 14
    iget-object p2, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {p2, v0, v1}, Lio/realm/internal/Table;->E(J)V

    .line 15
    throw p1
.end method

.method varargs f(Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/q/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/h0;->j()Lio/realm/k0;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/h0;->k()Lio/realm/internal/Table;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/q/c;->d(Lio/realm/internal/q/c$a;Lio/realm/internal/Table;Ljava/lang/String;[Lio/realm/RealmFieldType;)Lio/realm/internal/q/c;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;)Lio/realm/h0;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/realm/h0;->b:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->i()V

    .line 2
    invoke-static {p1}, Lio/realm/h0;->c(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/h0;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lio/realm/h0;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lio/realm/h0;->d()Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lio/realm/h0;->b:Lio/realm/a;

    iget-object v3, v3, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2}, Lio/realm/internal/OsObjectStore;->b(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lio/realm/h0;->b:Lio/realm/a;

    iget-object v3, v3, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-static {v3, v2, p1}, Lio/realm/internal/OsObjectStore;->d(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->E(J)V

    return-object p0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(Ljava/lang/String;Z)Lio/realm/h0;
    .locals 0

    xor-int/lit8 p2, p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/realm/q;->y(Ljava/lang/String;Z)Lio/realm/h0;

    return-object p0
.end method

.method public q(Lio/realm/h0$c;)Lio/realm/h0;
    .locals 7

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lio/realm/h0;->b:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    iget-object v1, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {v1}, Lio/realm/internal/Table;->N()Lio/realm/internal/TableQuery;

    move-result-object v1

    new-instance v2, Lio/realm/internal/core/DescriptorOrdering;

    invoke-direct {v2}, Lio/realm/internal/core/DescriptorOrdering;-><init>()V

    invoke-static {v0, v1, v2}, Lio/realm/internal/OsResults;->c(Lio/realm/internal/OsSharedRealm;Lio/realm/internal/TableQuery;Lio/realm/internal/core/DescriptorOrdering;)Lio/realm/internal/OsResults;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/OsResults;->d()Lio/realm/internal/OsResults;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lio/realm/internal/OsResults;->n()J

    move-result-wide v1

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 3
    invoke-virtual {v0}, Lio/realm/internal/OsResults;->n()J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 4
    new-instance v3, Lio/realm/i;

    iget-object v4, p0, Lio/realm/h0;->b:Lio/realm/a;

    new-instance v5, Lio/realm/internal/CheckedRow;

    invoke-virtual {v0, v1}, Lio/realm/internal/OsResults;->h(I)Lio/realm/internal/UncheckedRow;

    move-result-object v6

    invoke-direct {v5, v6}, Lio/realm/internal/CheckedRow;-><init>(Lio/realm/internal/UncheckedRow;)V

    invoke-direct {v3, v4, v5}, Lio/realm/i;-><init>(Lio/realm/a;Lio/realm/internal/o;)V

    .line 5
    invoke-virtual {v3}, Lio/realm/f0;->M0()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {p1, v3}, Lio/realm/h0$c;->a(Lio/realm/i;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many results to iterate: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p0
.end method

.method public r(Ljava/lang/String;)Lio/realm/h0;
    .locals 3

    .line 1
    invoke-static {p1}, Lio/realm/h0;->c(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/h0;->b(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/h0;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->y(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object p1, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->b(J)V

    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already has an index."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Ljava/lang/String;)Lio/realm/h0;
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/realm/q;->u()V

    .line 2
    invoke-static {p1}, Lio/realm/h0;->c(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lio/realm/h0;->b(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/realm/h0;->b:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/h0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->b(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lio/realm/h0;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 6
    invoke-virtual {p0, p1}, Lio/realm/h0;->h(Ljava/lang/String;)Lio/realm/RealmFieldType;

    move-result-object v2

    .line 7
    sget-object v3, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->y(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    iget-object v2, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {v2, v0, v1}, Lio/realm/internal/Table;->b(J)V

    .line 9
    :cond_0
    iget-object v0, p0, Lio/realm/h0;->b:Lio/realm/a;

    iget-object v0, v0, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p0}, Lio/realm/h0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsObjectStore;->d(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Field \'%s\' has been already defined as primary key."

    .line 11
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(Ljava/lang/String;Z)Lio/realm/h0;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {v0, p1}, Lio/realm/internal/Table;->n(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1}, Lio/realm/h0;->n(Ljava/lang/String;)Z

    move-result v2

    .line 3
    iget-object v3, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {v3, v0, v1}, Lio/realm/internal/Table;->q(J)Lio/realm/RealmFieldType;

    move-result-object v3

    .line 4
    sget-object v4, Lio/realm/RealmFieldType;->OBJECT:Lio/realm/RealmFieldType;

    if-eq v3, v4, :cond_7

    .line 5
    sget-object v4, Lio/realm/RealmFieldType;->LIST:Lio/realm/RealmFieldType;

    if-eq v3, v4, :cond_6

    if-eqz p2, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field is already required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Field is already nullable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    .line 8
    :try_start_0
    iget-object p2, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {p2, v0, v1}, Lio/realm/internal/Table;->e(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attempted to insert null into non-nullable column"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p2, Ljava/lang/IllegalStateException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "The primary key field \'%s\' has \'null\' values stored."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_4
    throw p2

    .line 12
    :cond_5
    iget-object p1, p0, Lio/realm/h0;->c:Lio/realm/internal/Table;

    invoke-virtual {p1, v0, v1}, Lio/realm/internal/Table;->f(J)V

    :goto_2
    return-object p0

    .line 13
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot modify the required state for RealmList references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 14
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot modify the required state for RealmObject references: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
