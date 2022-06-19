.class public abstract Lio/realm/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "A class extending RealmObject must be provided"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method protected static f(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)",
            "Lio/realm/exceptions/RealmException;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/realm/exceptions/RealmException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "\'%s\' is not part of the schema for this Realm."

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Lio/realm/y;Lio/realm/e0;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Lio/realm/y;",
            "TE;Z",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)TE;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;",
            "Lio/realm/internal/OsSchemaInfo;",
            ")",
            "Lio/realm/internal/c;"
        }
    .end annotation
.end method

.method public abstract d(Lio/realm/e0;ILjava/util/Map;)Lio/realm/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;I",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m$a<",
            "Lio/realm/e0;",
            ">;>;)TE;"
        }
    .end annotation
.end method

.method public abstract e()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;",
            "Lio/realm/internal/OsObjectSchemaInfo;",
            ">;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lio/realm/internal/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lio/realm/internal/n;

    .line 3
    invoke-virtual {p0}, Lio/realm/internal/n;->g()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/n;->g()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract g()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;>;"
        }
    .end annotation
.end method

.method public final h(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lio/realm/internal/Util;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/realm/internal/n;->i(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/n;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method protected abstract i(Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract j(Lio/realm/y;Lio/realm/e0;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lio/realm/e0;",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract k(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)Z"
        }
    .end annotation
.end method

.method public abstract l(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/o;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Ljava/lang/Object;",
            "Lio/realm/internal/o;",
            "Lio/realm/internal/c;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
