.class public Le/k/a/c/d0/a;
.super Le/k/a/c/j;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/j<",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/d0/i;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:Le/k/a/c/i;

.field public final b:Le/k/a/c/d0/y/v;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/d0/u;",
            ">;"
        }
    .end annotation
.end field

.field public transient d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/d0/u;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z


# direct methods
.method public constructor <init>(Le/k/a/c/c;)V
    .locals 3

    .line 13
    invoke-direct {p0}, Le/k/a/c/j;-><init>()V

    .line 14
    iget-object p1, p1, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 15
    iput-object p1, p0, Le/k/a/c/d0/a;->a:Le/k/a/c/i;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Le/k/a/c/d0/a;->b:Le/k/a/c/d0/y/v;

    .line 17
    iput-object v0, p0, Le/k/a/c/d0/a;->c:Ljava/util/Map;

    .line 18
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 19
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Le/k/a/c/d0/a;->e:Z

    .line 20
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Le/k/a/c/d0/a;->f:Z

    .line 21
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Le/k/a/c/d0/a;->g:Z

    .line 22
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_4

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    iput-boolean v1, p0, Le/k/a/c/d0/a;->h:Z

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/a;Le/k/a/c/d0/y/v;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/a;",
            "Le/k/a/c/d0/y/v;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/d0/u;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Le/k/a/c/j;-><init>()V

    .line 24
    iget-object p3, p1, Le/k/a/c/d0/a;->a:Le/k/a/c/i;

    iput-object p3, p0, Le/k/a/c/d0/a;->a:Le/k/a/c/i;

    .line 25
    iget-object p3, p1, Le/k/a/c/d0/a;->c:Ljava/util/Map;

    iput-object p3, p0, Le/k/a/c/d0/a;->c:Ljava/util/Map;

    .line 26
    iget-boolean p3, p1, Le/k/a/c/d0/a;->e:Z

    iput-boolean p3, p0, Le/k/a/c/d0/a;->e:Z

    .line 27
    iget-boolean p3, p1, Le/k/a/c/d0/a;->f:Z

    iput-boolean p3, p0, Le/k/a/c/d0/a;->f:Z

    .line 28
    iget-boolean p3, p1, Le/k/a/c/d0/a;->g:Z

    iput-boolean p3, p0, Le/k/a/c/d0/a;->g:Z

    .line 29
    iget-boolean p1, p1, Le/k/a/c/d0/a;->h:Z

    iput-boolean p1, p0, Le/k/a/c/d0/a;->h:Z

    .line 30
    iput-object p2, p0, Le/k/a/c/d0/a;->b:Le/k/a/c/d0/y/v;

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Le/k/a/c/d0/a;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/d0/e;Le/k/a/c/c;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d0/e;",
            "Le/k/a/c/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/d0/u;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/k/a/c/d0/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/j;-><init>()V

    .line 2
    iget-object p2, p2, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/a;->a:Le/k/a/c/i;

    .line 4
    iget-object p1, p1, Le/k/a/c/d0/e;->j:Le/k/a/c/d0/y/v;

    .line 5
    iput-object p1, p0, Le/k/a/c/d0/a;->b:Le/k/a/c/d0/y/v;

    .line 6
    iput-object p3, p0, Le/k/a/c/d0/a;->c:Ljava/util/Map;

    .line 7
    iput-object p4, p0, Le/k/a/c/d0/a;->d:Ljava/util/Map;

    .line 8
    iget-object p1, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 9
    const-class p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    iput-boolean p2, p0, Le/k/a/c/d0/a;->e:Z

    .line 10
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eq p1, p2, :cond_1

    const-class p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p4

    :goto_1
    iput-boolean p2, p0, Le/k/a/c/d0/a;->f:Z

    .line 11
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_3

    const-class p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move p2, p3

    goto :goto_3

    :cond_3
    :goto_2
    move p2, p4

    :goto_3
    iput-boolean p2, p0, Le/k/a/c/d0/a;->g:Z

    .line 12
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_4

    const-class p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move p3, p4

    :cond_5
    iput-boolean p3, p0, Le/k/a/c/d0/a;->h:Z

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/c/g;->y()Le/k/a/c/b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {v0, p2}, Le/k/a/c/b;->y(Le/k/a/c/g0/b;)Le/k/a/c/g0/a0;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {p1, p2, v2}, Le/k/a/c/e;->l(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/a/n0;

    move-result-object v3

    .line 5
    invoke-virtual {v0, p2, v2}, Le/k/a/c/b;->z(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/c/g0/a0;

    move-result-object v0

    .line 6
    iget-object v2, v0, Le/k/a/c/g0/a0;->b:Ljava/lang/Class;

    .line 7
    const-class v4, Le/k/a/a/m0;

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    .line 8
    iget-object p2, v0, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    .line 9
    iget-object v2, p0, Le/k/a/c/d0/a;->d:Ljava/util/Map;

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v4, p2, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 11
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/d0/u;

    :goto_0
    if-eqz v2, :cond_1

    .line 12
    iget-object p2, v2, Le/k/a/c/d0/u;->d:Le/k/a/c/i;

    .line 13
    new-instance v4, Le/k/a/c/d0/y/z;

    .line 14
    iget-object v5, v0, Le/k/a/c/g0/a0;->d:Ljava/lang/Class;

    .line 15
    invoke-direct {v4, v5}, Le/k/a/c/d0/y/z;-><init>(Ljava/lang/Class;)V

    move-object v5, p2

    move-object v9, v2

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/a;->a:Le/k/a/c/i;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    iget-object v3, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 18
    invoke-static {v3}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {p2}, Le/k/a/c/n0/g;->C(Le/k/a/c/v;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const-string p2, "Invalid Object Id definition for %s: cannot find property with name %s"

    .line 19
    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    .line 20
    :cond_2
    invoke-virtual {p1, p2, v0}, Le/k/a/c/e;->l(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/a/n0;

    move-result-object v3

    .line 21
    invoke-virtual {p1, v2}, Le/k/a/c/g;->o(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v2

    .line 22
    invoke-virtual {p1}, Le/k/a/c/g;->i()Le/k/a/c/m0/o;

    move-result-object v4

    const-class v6, Le/k/a/a/k0;

    invoke-virtual {v4, v2, v6}, Le/k/a/c/m0/o;->n(Le/k/a/c/i;Ljava/lang/Class;)[Le/k/a/c/i;

    move-result-object v2

    aget-object v2, v2, v5

    .line 23
    invoke-virtual {p1, p2, v0}, Le/k/a/c/e;->k(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/a/k0;

    move-result-object v4

    move-object v9, v1

    move-object v5, v2

    :goto_1
    move-object v10, v3

    move-object v7, v4

    .line 24
    invoke-virtual {p1, v5}, Le/k/a/c/g;->x(Le/k/a/c/i;)Le/k/a/c/j;

    move-result-object v8

    .line 25
    iget-object v6, v0, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    .line 26
    invoke-static/range {v5 .. v10}, Le/k/a/c/d0/y/v;->a(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Le/k/a/c/j;Le/k/a/c/d0/u;Le/k/a/a/n0;)Le/k/a/c/d0/y/v;

    move-result-object p1

    .line 27
    new-instance p2, Le/k/a/c/d0/a;

    invoke-direct {p2, p0, p1, v1}, Le/k/a/c/d0/a;-><init>(Le/k/a/c/d0/a;Le/k/a/c/d0/y/v;Ljava/util/Map;)V

    return-object p2

    .line 28
    :cond_3
    iget-object p1, p0, Le/k/a/c/d0/a;->d:Ljava/util/Map;

    if-nez p1, :cond_4

    return-object p0

    .line 29
    :cond_4
    new-instance p1, Le/k/a/c/d0/a;

    iget-object p2, p0, Le/k/a/c/d0/a;->b:Le/k/a/c/d0/y/v;

    invoke-direct {p1, p0, p2, v1}, Le/k/a/c/d0/a;-><init>(Le/k/a/c/d0/a;Le/k/a/c/d0/y/v;Ljava/util/Map;)V

    return-object p1
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v2, Le/k/a/c/d0/w$a;

    iget-object v0, p0, Le/k/a/c/d0/a;->a:Le/k/a/c/i;

    invoke-direct {v2, v0}, Le/k/a/c/d0/w$a;-><init>(Le/k/a/c/i;)V

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/a;->a:Le/k/a/c/i;

    .line 3
    iget-object v1, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/Object;

    const-string v4, "abstract types either need to be mapped to concrete types, have custom deserializer, or contain additional type information"

    move-object v0, p2

    move-object v3, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Le/k/a/c/g;->E(Ljava/lang/Class;Le/k/a/c/d0/w;Le/k/a/b/j;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/a;->b:Le/k/a/c/d0/y/v;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->l()Le/k/a/b/m;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v1, v0, Le/k/a/b/m;->h:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/a;->r(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    sget-object v1, Le/k/a/b/m;->j:Le/k/a/b/m;

    if-ne v0, v1, :cond_1

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    .line 7
    :cond_1
    sget-object v1, Le/k/a/b/m;->n:Le/k/a/b/m;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Le/k/a/c/d0/a;->b:Le/k/a/c/d0/y/v;

    invoke-virtual {v0}, Le/k/a/c/d0/y/v;->b()Z

    .line 8
    :cond_2
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 9
    :pswitch_0
    iget-boolean v0, p0, Le/k/a/c/d0/a;->f:Z

    if-eqz v0, :cond_3

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 11
    :pswitch_1
    iget-boolean v0, p0, Le/k/a/c/d0/a;->f:Z

    if-eqz v0, :cond_3

    .line 12
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    .line 13
    :pswitch_2
    iget-boolean v0, p0, Le/k/a/c/d0/a;->h:Z

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p1}, Le/k/a/b/j;->n0()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 15
    :pswitch_3
    iget-boolean v0, p0, Le/k/a/c/d0/a;->g:Z

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Le/k/a/b/j;->z0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 17
    :pswitch_4
    iget-boolean v0, p0, Le/k/a/c/d0/a;->e:Z

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    return-object v0

    .line 19
    :cond_4
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h(Ljava/lang/String;)Le/k/a/c/d0/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/a;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/k/a/c/d0/u;

    :goto_0
    return-object p1
.end method

.method public l()Le/k/a/c/d0/y/v;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/a;->b:Le/k/a/c/d0/y/v;

    return-object v0
.end method

.method public m()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/a;->a:Le/k/a/c/i;

    .line 2
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->d:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public r(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/a;->b:Le/k/a/c/d0/y/v;

    .line 2
    iget-object v0, v0, Le/k/a/c/d0/y/v;->e:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/k/a/c/d0/a;->b:Le/k/a/c/d0/y/v;

    iget-object v2, v1, Le/k/a/c/d0/y/v;->c:Le/k/a/a/k0;

    iget-object v1, v1, Le/k/a/c/d0/y/v;->d:Le/k/a/a/n0;

    invoke-virtual {p2, v0, v2, v1}, Le/k/a/c/g;->w(Ljava/lang/Object;Le/k/a/a/k0;Le/k/a/a/n0;)Le/k/a/c/d0/y/c0;

    move-result-object p2

    .line 4
    iget-object v1, p2, Le/k/a/c/d0/y/c0;->d:Le/k/a/a/n0;

    iget-object v2, p2, Le/k/a/c/d0/y/c0;->b:Le/k/a/a/k0$a;

    invoke-interface {v1, v2}, Le/k/a/a/n0;->b(Le/k/a/a/k0$a;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Le/k/a/c/d0/y/c0;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    return-object v1

    .line 5
    :cond_0
    new-instance v1, Le/k/a/c/d0/v;

    const-string v2, "Could not resolve Object Id ["

    const-string v3, "] -- unresolved forward-reference?"

    invoke-static {v2, v0, v3}, Le/d/c/a/a;->y2(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Le/k/a/b/j;->P()Le/k/a/b/h;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, p2}, Le/k/a/c/d0/v;-><init>(Le/k/a/b/j;Ljava/lang/String;Le/k/a/b/h;Le/k/a/c/d0/y/c0;)V

    throw v1
.end method
