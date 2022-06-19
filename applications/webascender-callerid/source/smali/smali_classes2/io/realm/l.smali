.class Lio/realm/l;
.super Lio/realm/h0;
.source "SourceFile"


# direct methods
.method constructor <init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;)V
    .locals 1

    .line 2
    new-instance v0, Lio/realm/h0$a;

    invoke-direct {v0, p3}, Lio/realm/h0$a;-><init>(Lio/realm/internal/Table;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lio/realm/h0;-><init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;Lio/realm/internal/c;)V

    return-void
.end method

.method constructor <init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;Lio/realm/internal/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/h0;-><init>(Lio/realm/a;Lio/realm/j0;Lio/realm/internal/Table;Lio/realm/internal/c;)V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/j;)Lio/realm/h0;
    .locals 0
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
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public p(Ljava/lang/String;Z)Lio/realm/h0;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(Lio/realm/h0$c;)Lio/realm/h0;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This \'RealmObjectSchema\' is immutable. Please use \'DynamicRealm.getSchema() to get a mutable instance."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
