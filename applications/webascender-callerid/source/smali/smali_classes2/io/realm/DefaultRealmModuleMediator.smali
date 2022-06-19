.class Lio/realm/DefaultRealmModuleMediator;
.super Lio/realm/internal/n;
.source "SourceFile"


# annotations
.annotation runtime Lio/realm/annotations/RealmModule;
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lio/realm/e0;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2
    const-class v1, Lcom/hiya/stingray/q/c/i/e;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    const-class v1, Lcom/hiya/stingray/t/w0;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    const-class v1, Lcom/hiya/stingray/t/x0;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    const-class v1, Lcom/hiya/stingray/q/c/i/d;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    const-class v1, Lcom/hiya/stingray/q/c/i/f;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    const-class v1, Lcom/hiya/stingray/q/c/i/b;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    const-class v1, Lcom/hiya/stingray/q/c/i/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    const-class v1, Lcom/hiya/stingray/q/c/i/c;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/realm/internal/n;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lio/realm/y;Lio/realm/e0;ZLjava/util/Map;Ljava/util/Set;)Lio/realm/e0;
    .locals 10
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

    .line 1
    const-class v0, Lcom/hiya/stingray/q/c/i/c;

    const-class v1, Lcom/hiya/stingray/q/c/i/a;

    const-class v2, Lcom/hiya/stingray/q/c/i/b;

    const-class v3, Lcom/hiya/stingray/q/c/i/f;

    const-class v4, Lcom/hiya/stingray/q/c/i/d;

    const-class v5, Lcom/hiya/stingray/t/x0;

    const-class v6, Lcom/hiya/stingray/t/w0;

    const-class v7, Lcom/hiya/stingray/q/c/i/e;

    instance-of v8, p2, Lio/realm/internal/m;

    if-eqz v8, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 2
    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3
    invoke-virtual {p1}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object v0

    invoke-virtual {v0, v7}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/v0$a;

    .line 4
    move-object v3, p2

    check-cast v3, Lcom/hiya/stingray/q/c/i/e;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/v0;->m1(Lio/realm/y;Lio/realm/v0$a;Lcom/hiya/stingray/q/c/i/e;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/e;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6
    invoke-virtual {p1}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object v0

    invoke-virtual {v0, v6}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/z0$a;

    .line 7
    move-object v3, p2

    check-cast v3, Lcom/hiya/stingray/t/w0;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/z0;->T0(Lio/realm/y;Lio/realm/z0$a;Lcom/hiya/stingray/t/w0;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/t/w0;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    invoke-virtual {p1}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object v0

    invoke-virtual {v0, v5}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/b1$a;

    .line 10
    move-object v3, p2

    check-cast v3, Lcom/hiya/stingray/t/x0;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/b1;->T0(Lio/realm/y;Lio/realm/b1$a;Lcom/hiya/stingray/t/x0;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/t/x0;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 11
    :cond_3
    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {p1}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object v0

    invoke-virtual {v0, v4}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/t0$a;

    .line 13
    move-object v3, p2

    check-cast v3, Lcom/hiya/stingray/q/c/i/d;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/t0;->P0(Lio/realm/y;Lio/realm/t0$a;Lcom/hiya/stingray/q/c/i/d;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/d;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 14
    :cond_4
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15
    invoke-virtual {p1}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object v0

    invoke-virtual {v0, v3}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/x0$a;

    .line 16
    move-object v3, p2

    check-cast v3, Lcom/hiya/stingray/q/c/i/f;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/x0;->R0(Lio/realm/y;Lio/realm/x0$a;Lcom/hiya/stingray/q/c/i/f;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/f;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 17
    :cond_5
    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 18
    invoke-virtual {p1}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object v0

    invoke-virtual {v0, v2}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/p0$a;

    .line 19
    move-object v3, p2

    check-cast v3, Lcom/hiya/stingray/q/c/i/b;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/p0;->W0(Lio/realm/y;Lio/realm/p0$a;Lcom/hiya/stingray/q/c/i/b;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/b;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 20
    :cond_6
    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 21
    invoke-virtual {p1}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object v0

    invoke-virtual {v0, v1}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/n0$a;

    .line 22
    move-object v3, p2

    check-cast v3, Lcom/hiya/stingray/q/c/i/a;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/n0;->X0(Lio/realm/y;Lio/realm/n0$a;Lcom/hiya/stingray/q/c/i/a;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/a;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 23
    :cond_7
    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 24
    invoke-virtual {p1}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lio/realm/r0$a;

    .line 25
    move-object v3, p2

    check-cast v3, Lcom/hiya/stingray/q/c/i/c;

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lio/realm/r0;->r1(Lio/realm/y;Lio/realm/r0$a;Lcom/hiya/stingray/q/c/i/c;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/c;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 26
    :cond_8
    invoke-static {v8}, Lio/realm/internal/n;->f(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public c(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;
    .locals 1
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

    .line 1
    invoke-static {p1}, Lio/realm/internal/n;->a(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p2}, Lio/realm/v0;->n1(Lio/realm/internal/OsSchemaInfo;)Lio/realm/v0$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-class v0, Lcom/hiya/stingray/t/w0;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p2}, Lio/realm/z0;->U0(Lio/realm/internal/OsSchemaInfo;)Lio/realm/z0$a;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    const-class v0, Lcom/hiya/stingray/t/x0;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {p2}, Lio/realm/b1;->U0(Lio/realm/internal/OsSchemaInfo;)Lio/realm/b1$a;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    const-class v0, Lcom/hiya/stingray/q/c/i/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {p2}, Lio/realm/t0;->Q0(Lio/realm/internal/OsSchemaInfo;)Lio/realm/t0$a;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    const-class v0, Lcom/hiya/stingray/q/c/i/f;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {p2}, Lio/realm/x0;->S0(Lio/realm/internal/OsSchemaInfo;)Lio/realm/x0$a;

    move-result-object p1

    return-object p1

    .line 12
    :cond_4
    const-class v0, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {p2}, Lio/realm/p0;->X0(Lio/realm/internal/OsSchemaInfo;)Lio/realm/p0$a;

    move-result-object p1

    return-object p1

    .line 14
    :cond_5
    const-class v0, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    invoke-static {p2}, Lio/realm/n0;->Y0(Lio/realm/internal/OsSchemaInfo;)Lio/realm/n0$a;

    move-result-object p1

    return-object p1

    .line 16
    :cond_6
    const-class v0, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-static {p2}, Lio/realm/r0;->s1(Lio/realm/internal/OsSchemaInfo;)Lio/realm/r0$a;

    move-result-object p1

    return-object p1

    .line 18
    :cond_7
    invoke-static {p1}, Lio/realm/internal/n;->f(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public d(Lio/realm/e0;ILjava/util/Map;)Lio/realm/e0;
    .locals 3
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

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/hiya/stingray/q/c/i/e;

    invoke-static {p1, v2, p2, p3}, Lio/realm/v0;->o1(Lcom/hiya/stingray/q/c/i/e;IILjava/util/Map;)Lcom/hiya/stingray/q/c/i/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 4
    :cond_0
    const-class v1, Lcom/hiya/stingray/t/w0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    check-cast p1, Lcom/hiya/stingray/t/w0;

    invoke-static {p1, v2, p2, p3}, Lio/realm/z0;->V0(Lcom/hiya/stingray/t/w0;IILjava/util/Map;)Lcom/hiya/stingray/t/w0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 6
    :cond_1
    const-class v1, Lcom/hiya/stingray/t/x0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    check-cast p1, Lcom/hiya/stingray/t/x0;

    invoke-static {p1, v2, p2, p3}, Lio/realm/b1;->V0(Lcom/hiya/stingray/t/x0;IILjava/util/Map;)Lcom/hiya/stingray/t/x0;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 8
    :cond_2
    const-class v1, Lcom/hiya/stingray/q/c/i/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    check-cast p1, Lcom/hiya/stingray/q/c/i/d;

    invoke-static {p1, v2, p2, p3}, Lio/realm/t0;->R0(Lcom/hiya/stingray/q/c/i/d;IILjava/util/Map;)Lcom/hiya/stingray/q/c/i/d;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 10
    :cond_3
    const-class v1, Lcom/hiya/stingray/q/c/i/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    check-cast p1, Lcom/hiya/stingray/q/c/i/f;

    invoke-static {p1, v2, p2, p3}, Lio/realm/x0;->T0(Lcom/hiya/stingray/q/c/i/f;IILjava/util/Map;)Lcom/hiya/stingray/q/c/i/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 12
    :cond_4
    const-class v1, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    check-cast p1, Lcom/hiya/stingray/q/c/i/b;

    invoke-static {p1, v2, p2, p3}, Lio/realm/p0;->Y0(Lcom/hiya/stingray/q/c/i/b;IILjava/util/Map;)Lcom/hiya/stingray/q/c/i/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 14
    :cond_5
    const-class v1, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    check-cast p1, Lcom/hiya/stingray/q/c/i/a;

    invoke-static {p1, v2, p2, p3}, Lio/realm/n0;->Z0(Lcom/hiya/stingray/q/c/i/a;IILjava/util/Map;)Lcom/hiya/stingray/q/c/i/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 16
    :cond_6
    const-class v1, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 17
    check-cast p1, Lcom/hiya/stingray/q/c/i/c;

    invoke-static {p1, v2, p2, p3}, Lio/realm/r0;->t1(Lcom/hiya/stingray/q/c/i/c;IILjava/util/Map;)Lcom/hiya/stingray/q/c/i/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;

    return-object p1

    .line 18
    :cond_7
    invoke-static {v0}, Lio/realm/internal/n;->f(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public e()Ljava/util/Map;
    .locals 3
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

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    const-class v1, Lcom/hiya/stingray/q/c/i/e;

    invoke-static {}, Lio/realm/v0;->q1()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v1, Lcom/hiya/stingray/t/w0;

    invoke-static {}, Lio/realm/z0;->X0()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Lcom/hiya/stingray/t/x0;

    invoke-static {}, Lio/realm/b1;->X0()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/hiya/stingray/q/c/i/d;

    invoke-static {}, Lio/realm/t0;->T0()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v1, Lcom/hiya/stingray/q/c/i/f;

    invoke-static {}, Lio/realm/x0;->V0()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v1, Lcom/hiya/stingray/q/c/i/b;

    invoke-static {}, Lio/realm/p0;->a1()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-class v1, Lcom/hiya/stingray/q/c/i/a;

    invoke-static {}, Lio/realm/n0;->b1()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v1, Lcom/hiya/stingray/q/c/i/c;

    invoke-static {}, Lio/realm/r0;->v1()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public g()Ljava/util/Set;
    .locals 1
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

    .line 1
    sget-object v0, Lio/realm/DefaultRealmModuleMediator;->a:Ljava/util/Set;

    return-object v0
.end method

.method public i(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
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
    invoke-static {p1}, Lio/realm/internal/n;->a(Ljava/lang/Class;)V

    .line 2
    const-class v0, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "RealmPhoneSendEvent"

    return-object p1

    .line 3
    :cond_0
    const-class v0, Lcom/hiya/stingray/t/w0;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "RealmCallLogItemInfo"

    return-object p1

    .line 4
    :cond_1
    const-class v0, Lcom/hiya/stingray/t/x0;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "RealmPhoneNumberInfo"

    return-object p1

    .line 5
    :cond_2
    const-class v0, Lcom/hiya/stingray/q/c/i/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "RealmDeletedLogDTO"

    return-object p1

    .line 6
    :cond_3
    const-class v0, Lcom/hiya/stingray/q/c/i/f;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "RealmReportCategoryDTO"

    return-object p1

    .line 7
    :cond_4
    const-class v0, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "RealmCallScreenerDTO"

    return-object p1

    .line 8
    :cond_5
    const-class v0, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "RealmBlockNumberDTO"

    return-object p1

    .line 9
    :cond_6
    const-class v0, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "RealmCallerIdDTO"

    return-object p1

    .line 10
    :cond_7
    invoke-static {p1}, Lio/realm/internal/n;->f(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public j(Lio/realm/y;Lio/realm/e0;Ljava/util/Map;)V
    .locals 2
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

    .line 1
    instance-of v0, p2, Lio/realm/internal/m;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :goto_0
    const-class v1, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    check-cast p2, Lcom/hiya/stingray/q/c/i/e;

    invoke-static {p1, p2, p3}, Lio/realm/v0;->r1(Lio/realm/y;Lcom/hiya/stingray/q/c/i/e;Ljava/util/Map;)J

    goto :goto_1

    .line 4
    :cond_1
    const-class v1, Lcom/hiya/stingray/t/w0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    check-cast p2, Lcom/hiya/stingray/t/w0;

    invoke-static {p1, p2, p3}, Lio/realm/z0;->Y0(Lio/realm/y;Lcom/hiya/stingray/t/w0;Ljava/util/Map;)J

    goto :goto_1

    .line 6
    :cond_2
    const-class v1, Lcom/hiya/stingray/t/x0;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    check-cast p2, Lcom/hiya/stingray/t/x0;

    invoke-static {p1, p2, p3}, Lio/realm/b1;->Y0(Lio/realm/y;Lcom/hiya/stingray/t/x0;Ljava/util/Map;)J

    goto :goto_1

    .line 8
    :cond_3
    const-class v1, Lcom/hiya/stingray/q/c/i/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    check-cast p2, Lcom/hiya/stingray/q/c/i/d;

    invoke-static {p1, p2, p3}, Lio/realm/t0;->U0(Lio/realm/y;Lcom/hiya/stingray/q/c/i/d;Ljava/util/Map;)J

    goto :goto_1

    .line 10
    :cond_4
    const-class v1, Lcom/hiya/stingray/q/c/i/f;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    check-cast p2, Lcom/hiya/stingray/q/c/i/f;

    invoke-static {p1, p2, p3}, Lio/realm/x0;->W0(Lio/realm/y;Lcom/hiya/stingray/q/c/i/f;Ljava/util/Map;)J

    goto :goto_1

    .line 12
    :cond_5
    const-class v1, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    check-cast p2, Lcom/hiya/stingray/q/c/i/b;

    invoke-static {p1, p2, p3}, Lio/realm/p0;->b1(Lio/realm/y;Lcom/hiya/stingray/q/c/i/b;Ljava/util/Map;)J

    goto :goto_1

    .line 14
    :cond_6
    const-class v1, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 15
    check-cast p2, Lcom/hiya/stingray/q/c/i/a;

    invoke-static {p1, p2, p3}, Lio/realm/n0;->c1(Lio/realm/y;Lcom/hiya/stingray/q/c/i/a;Ljava/util/Map;)J

    goto :goto_1

    .line 16
    :cond_7
    const-class v1, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 17
    check-cast p2, Lcom/hiya/stingray/q/c/i/c;

    invoke-static {p1, p2, p3}, Lio/realm/r0;->w1(Lio/realm/y;Lcom/hiya/stingray/q/c/i/c;Ljava/util/Map;)J

    :goto_1
    return-void

    .line 18
    :cond_8
    invoke-static {v0}, Lio/realm/internal/n;->f(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public k(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lio/realm/e0;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    const-class v0, Lcom/hiya/stingray/t/w0;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    const-class v0, Lcom/hiya/stingray/t/x0;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    const-class v0, Lcom/hiya/stingray/q/c/i/d;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    const-class v0, Lcom/hiya/stingray/q/c/i/f;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 6
    :cond_4
    const-class v0, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 7
    :cond_5
    const-class v0, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 8
    :cond_6
    const-class v0, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    .line 9
    :cond_7
    invoke-static {p1}, Lio/realm/internal/n;->f(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
.end method

.method public l(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/o;Lio/realm/internal/c;ZLjava/util/List;)Lio/realm/e0;
    .locals 7
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

    .line 1
    sget-object v0, Lio/realm/a;->n:Lio/realm/a$f;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a$e;

    .line 2
    :try_start_0
    move-object v2, p2

    check-cast v2, Lio/realm/a;

    move-object v1, v0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$e;->g(Lio/realm/a;Lio/realm/internal/o;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 3
    invoke-static {p1}, Lio/realm/internal/n;->a(Ljava/lang/Class;)V

    .line 4
    const-class p2, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lio/realm/v0;

    invoke-direct {p2}, Lio/realm/v0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p1

    .line 7
    :cond_0
    :try_start_1
    const-class p2, Lcom/hiya/stingray/t/w0;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    new-instance p2, Lio/realm/z0;

    invoke-direct {p2}, Lio/realm/z0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p1

    .line 10
    :cond_1
    :try_start_2
    const-class p2, Lcom/hiya/stingray/t/x0;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    new-instance p2, Lio/realm/b1;

    invoke-direct {p2}, Lio/realm/b1;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p1

    .line 13
    :cond_2
    :try_start_3
    const-class p2, Lcom/hiya/stingray/q/c/i/d;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 14
    new-instance p2, Lio/realm/t0;

    invoke-direct {p2}, Lio/realm/t0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p1

    .line 16
    :cond_3
    :try_start_4
    const-class p2, Lcom/hiya/stingray/q/c/i/f;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 17
    new-instance p2, Lio/realm/x0;

    invoke-direct {p2}, Lio/realm/x0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p1

    .line 19
    :cond_4
    :try_start_5
    const-class p2, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 20
    new-instance p2, Lio/realm/p0;

    invoke-direct {p2}, Lio/realm/p0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 21
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p1

    .line 22
    :cond_5
    :try_start_6
    const-class p2, Lcom/hiya/stingray/q/c/i/a;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 23
    new-instance p2, Lio/realm/n0;

    invoke-direct {p2}, Lio/realm/n0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 24
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p1

    .line 25
    :cond_6
    :try_start_7
    const-class p2, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 26
    new-instance p2, Lio/realm/r0;

    invoke-direct {p2}, Lio/realm/r0;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/realm/e0;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 27
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p1

    .line 28
    :cond_7
    :try_start_8
    invoke-static {p1}, Lio/realm/internal/n;->f(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;

    move-result-object p1

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    .line 30
    throw p1
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
