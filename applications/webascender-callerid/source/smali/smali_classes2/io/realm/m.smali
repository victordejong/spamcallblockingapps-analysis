.class Lio/realm/m;
.super Lio/realm/j0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lio/realm/a;Lio/realm/internal/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/realm/j0;-><init>(Lio/realm/a;Lio/realm/internal/b;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Lio/realm/h0;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This \'RealmSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;)Lio/realm/h0;
    .locals 3

    const-string v0, "Null or empty class names are not allowed"

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/realm/j0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lio/realm/internal/Table;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {v1}, Lio/realm/a;->D()Lio/realm/internal/OsSharedRealm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v0

    .line 5
    new-instance v1, Lio/realm/l;

    iget-object v2, p0, Lio/realm/j0;->e:Lio/realm/a;

    invoke-virtual {p0, p1}, Lio/realm/j0;->f(Ljava/lang/String;)Lio/realm/internal/c;

    move-result-object p1

    invoke-direct {v1, v2, p0, v0, p1}, Lio/realm/l;-><init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;Lio/realm/internal/c;)V

    return-object v1
.end method
