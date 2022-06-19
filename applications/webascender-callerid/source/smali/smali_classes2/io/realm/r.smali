.class Lio/realm/r;
.super Lio/realm/j0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lio/realm/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lio/realm/j0;-><init>(Lio/realm/a;Lio/realm/internal/b;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lio/realm/h0;
    .locals 5

    const-string v0, "Null or empty class names are not allowed"

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/realm/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lio/realm/internal/Table;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sget v2, Lio/realm/internal/Table;->j:I

    if-gt v1, v2, :cond_0

    .line 4
    new-instance p1, Lio/realm/q;

    iget-object v1, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/realm/internal/OsSharedRealm;->createTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lio/realm/q;-><init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;)V

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    .line 7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    const-string p1, "Class name is too long. Limit is %1$d characters: %2$s"

    .line 8
    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;)Lio/realm/h0;
    .locals 2

    const-string v0, "Null or empty class names are not allowed"

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/realm/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lio/realm/internal/Table;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {v0}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object p1

    .line 5
    new-instance v0, Lio/realm/q;

    iget-object v1, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-direct {v0, v1, p0, p1}, Lio/realm/q;-><init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;)V

    return-object v0
.end method
