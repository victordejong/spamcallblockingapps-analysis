.class public abstract Lio/realm/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/e0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static J0(Lio/realm/e0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;)V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/realm/internal/m;

    if-eqz v0, :cond_2

    .line 2
    check-cast p0, Lio/realm/internal/m;

    .line 3
    invoke-interface {p0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 6
    invoke-interface {p0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lio/realm/internal/Table;->D(J)V

    .line 8
    invoke-interface {p0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object p0

    sget-object v0, Lio/realm/internal/f;->INSTANCE:Lio/realm/internal/f;

    invoke-virtual {p0, v0}, Lio/realm/x;->l(Lio/realm/internal/o;)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object not managed by Realm, so it cannot be removed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static K0(Lio/realm/e0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/realm/internal/m;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lio/realm/internal/m;

    .line 3
    invoke-interface {p0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/a;->L()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static L0(Lio/realm/e0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 1
    instance-of p0, p0, Lio/realm/internal/m;

    return p0
.end method

.method public static N0(Lio/realm/e0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(TE;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lio/realm/internal/m;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Lio/realm/internal/m;

    .line 3
    invoke-interface {p0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0}, Lio/realm/internal/o;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public final I0()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/realm/f0;->J0(Lio/realm/e0;)V

    return-void
.end method

.method public final M0()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lio/realm/f0;->N0(Lio/realm/e0;)Z

    move-result v0

    return v0
.end method
