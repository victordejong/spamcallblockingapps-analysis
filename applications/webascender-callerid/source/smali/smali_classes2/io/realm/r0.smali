.class public Lio/realm/r0;
.super Lcom/hiya/stingray/q/c/i/c;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/m;
.implements Lio/realm/s0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/r0$a;
    }
.end annotation


# static fields
.field private static final s:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private q:Lio/realm/r0$a;

.field private r:Lio/realm/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/x<",
            "Lcom/hiya/stingray/q/c/i/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/realm/r0;->u1()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/r0;->s:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/q/c/i/c;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->i()V

    return-void
.end method

.method public static q1(Lio/realm/y;Lio/realm/r0$a;Lcom/hiya/stingray/q/c/i/c;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/c;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lio/realm/r0$a;",
            "Lcom/hiya/stingray/q/c/i/c;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)",
            "Lcom/hiya/stingray/q/c/i/c;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/m;

    if-eqz p3, :cond_0

    .line 2
    check-cast p3, Lcom/hiya/stingray/q/c/i/c;

    return-object p3

    .line 3
    :cond_0
    const-class p3, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {p0, p3}, Lio/realm/y;->k1(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 4
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 5
    iget-wide v1, p1, Lio/realm/r0$a;->e:J

    invoke-interface {p2}, Lio/realm/s0;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 6
    iget-wide v1, p1, Lio/realm/r0$a;->f:J

    invoke-interface {p2}, Lio/realm/s0;->x0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lio/realm/r0$a;->g:J

    invoke-interface {p2}, Lio/realm/s0;->k0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 8
    iget-wide v1, p1, Lio/realm/r0$a;->h:J

    invoke-interface {p2}, Lio/realm/s0;->q()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 9
    iget-wide v1, p1, Lio/realm/r0$a;->i:J

    invoke-interface {p2}, Lio/realm/s0;->M()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 10
    iget-wide v1, p1, Lio/realm/r0$a;->j:J

    invoke-interface {p2}, Lio/realm/s0;->u0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 11
    iget-wide v1, p1, Lio/realm/r0$a;->k:J

    invoke-interface {p2}, Lio/realm/s0;->t()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 12
    iget-wide v1, p1, Lio/realm/r0$a;->l:J

    invoke-interface {p2}, Lio/realm/s0;->E0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 13
    iget-wide v1, p1, Lio/realm/r0$a;->m:J

    invoke-interface {p2}, Lio/realm/s0;->H()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 14
    iget-wide v1, p1, Lio/realm/r0$a;->n:J

    invoke-interface {p2}, Lio/realm/s0;->F()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 15
    iget-wide v1, p1, Lio/realm/r0$a;->o:J

    invoke-interface {p2}, Lio/realm/s0;->R()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 16
    iget-wide v1, p1, Lio/realm/r0$a;->p:J

    invoke-interface {p2}, Lio/realm/s0;->d0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 17
    iget-wide v1, p1, Lio/realm/r0$a;->q:J

    invoke-interface {p2}, Lio/realm/s0;->S()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 18
    iget-wide v1, p1, Lio/realm/r0$a;->r:J

    invoke-interface {p2}, Lio/realm/s0;->B0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 19
    iget-wide v1, p1, Lio/realm/r0$a;->s:J

    invoke-interface {p2}, Lio/realm/s0;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 20
    iget-wide v1, p1, Lio/realm/r0$a;->t:J

    invoke-interface {p2}, Lio/realm/s0;->j()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Long;)V

    .line 21
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Lio/realm/r0;->x1(Lio/realm/a;Lio/realm/internal/o;)Lio/realm/r0;

    move-result-object p0

    .line 23
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static r1(Lio/realm/y;Lio/realm/r0$a;Lcom/hiya/stingray/q/c/i/c;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/c;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lio/realm/r0$a;",
            "Lcom/hiya/stingray/q/c/i/c;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)",
            "Lcom/hiya/stingray/q/c/i/c;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/realm/internal/m;

    if-eqz v0, :cond_1

    invoke-static {p2}, Lio/realm/f0;->K0(Lio/realm/e0;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p2

    check-cast v0, Lio/realm/internal/m;

    invoke-interface {v0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v0}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    .line 3
    iget-wide v1, v0, Lio/realm/a;->g:J

    iget-wide v3, p0, Lio/realm/a;->g:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 4
    invoke-virtual {v0}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/y;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Objects which belong to Realm instances in other threads cannot be copied into this Realm instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    sget-object v0, Lio/realm/a;->n:Lio/realm/a$f;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a$e;

    .line 7
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/m;

    if-eqz v1, :cond_2

    .line 8
    check-cast v1, Lcom/hiya/stingray/q/c/i/c;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_5

    .line 9
    const-class v2, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {p0, v2}, Lio/realm/y;->k1(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 10
    iget-wide v3, p1, Lio/realm/r0$a;->e:J

    .line 11
    invoke-interface {p2}, Lio/realm/s0;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 12
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->h(J)J

    move-result-wide v3

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {v2, v3, v4, v5}, Lio/realm/internal/Table;->i(JLjava/lang/String;)J

    move-result-wide v3

    :goto_0
    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    .line 14
    :cond_4
    :try_start_0
    invoke-virtual {v2, v3, v4}, Lio/realm/internal/Table;->v(J)Lio/realm/internal/UncheckedRow;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$e;->g(Lio/realm/a;Lio/realm/internal/o;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 15
    new-instance v1, Lio/realm/r0;

    invoke-direct {v1}, Lio/realm/r0;-><init>()V

    .line 16
    invoke-interface {p4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    .line 18
    throw p0

    :cond_5
    :goto_1
    move v0, p3

    :goto_2
    move-object v7, v1

    if-eqz v0, :cond_6

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 19
    invoke-static/range {v1 .. v6}, Lio/realm/r0;->y1(Lio/realm/y;Lio/realm/r0$a;Lcom/hiya/stingray/q/c/i/c;Lcom/hiya/stingray/q/c/i/c;Ljava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/c;

    goto :goto_3

    :cond_6
    invoke-static/range {p0 .. p5}, Lio/realm/r0;->q1(Lio/realm/y;Lio/realm/r0$a;Lcom/hiya/stingray/q/c/i/c;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/c;

    move-result-object v7

    :goto_3
    return-object v7
.end method

.method public static s1(Lio/realm/internal/OsSchemaInfo;)Lio/realm/r0$a;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/r0$a;

    invoke-direct {v0, p0}, Lio/realm/r0$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static t1(Lcom/hiya/stingray/q/c/i/c;IILjava/util/Map;)Lcom/hiya/stingray/q/c/i/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/q/c/i/c;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m$a<",
            "Lio/realm/e0;",
            ">;>;)",
            "Lcom/hiya/stingray/q/c/i/c;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/m$a;

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lcom/hiya/stingray/q/c/i/c;

    invoke-direct {p2}, Lcom/hiya/stingray/q/c/i/c;-><init>()V

    .line 3
    new-instance v0, Lio/realm/internal/m$a;

    invoke-direct {v0, p1, p2}, Lio/realm/internal/m$a;-><init>(ILio/realm/e0;)V

    invoke-interface {p3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    iget p3, p2, Lio/realm/internal/m$a;->a:I

    if-lt p1, p3, :cond_2

    .line 5
    iget-object p0, p2, Lio/realm/internal/m$a;->b:Lio/realm/e0;

    check-cast p0, Lcom/hiya/stingray/q/c/i/c;

    return-object p0

    .line 6
    :cond_2
    iget-object p3, p2, Lio/realm/internal/m$a;->b:Lio/realm/e0;

    check-cast p3, Lcom/hiya/stingray/q/c/i/c;

    .line 7
    iput p1, p2, Lio/realm/internal/m$a;->a:I

    move-object p2, p3

    .line 8
    :goto_0
    invoke-interface {p0}, Lio/realm/s0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->a(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lio/realm/s0;->x0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->l(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lio/realm/s0;->k0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->p(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lio/realm/s0;->q()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->Y(Ljava/lang/String;)V

    .line 12
    invoke-interface {p0}, Lio/realm/s0;->M()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->X(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lio/realm/s0;->u0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->z(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lio/realm/s0;->t()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->P(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lio/realm/s0;->E0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->A(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/realm/s0;->H()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->m0(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lio/realm/s0;->F()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->O(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lio/realm/s0;->R()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->E(Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Lio/realm/s0;->d0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->D(Ljava/lang/String;)V

    .line 20
    invoke-interface {p0}, Lio/realm/s0;->S()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->i0(Ljava/lang/String;)V

    .line 21
    invoke-interface {p0}, Lio/realm/s0;->B0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->e0(Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lio/realm/s0;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/s0;->e(Ljava/lang/String;)V

    .line 23
    invoke-interface {p0}, Lio/realm/s0;->j()J

    move-result-wide p0

    invoke-interface {p2, p0, p1}, Lio/realm/s0;->d(J)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static u1()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 8

    .line 1
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v0, "RealmCallerIdDTO"

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-direct {v6, v0, v1, v2, v1}, Lio/realm/internal/OsObjectSchemaInfo$b;-><init>(Ljava/lang/String;ZII)V

    .line 2
    sget-object v7, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "phone"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "spamType"

    const/4 v3, 0x0

    .line 3
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "confidenceLevel"

    .line 4
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "spamCategory"

    .line 5
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "displayName"

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "kind"

    .line 7
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "location"

    .line 8
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "photoUrl"

    .line 9
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "lineType"

    .line 10
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "lineTypeId"

    .line 11
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "lineTypeTooltip"

    .line 12
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "displayCategory"

    .line 13
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "displayMessage"

    .line 14
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "reputationTypeString"

    .line 15
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "profileTag"

    .line 16
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 17
    sget-object v2, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "lastUpdatedTimeStamp"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 18
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$b;->b()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static v1()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/r0;->s:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static w1(Lio/realm/y;Lcom/hiya/stingray/q/c/i/c;Ljava/util/Map;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lcom/hiya/stingray/q/c/i/c;",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/hiya/stingray/q/c/i/c;

    instance-of v1, p1, Lio/realm/internal/m;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lio/realm/f0;->K0(Lio/realm/e0;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, p1

    check-cast v1, Lio/realm/internal/m;

    invoke-interface {v1}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/realm/y;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v1}, Lio/realm/internal/m;->n0()Lio/realm/x;

    move-result-object p0

    invoke-virtual {p0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p0

    invoke-interface {p0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide p0

    return-wide p0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lio/realm/y;->k1(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lio/realm/internal/Table;->getNativePtr()J

    move-result-wide v10

    .line 5
    invoke-virtual {p0}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object p0

    check-cast p0, Lio/realm/r0$a;

    .line 6
    iget-wide v2, p0, Lio/realm/r0$a;->e:J

    .line 7
    invoke-interface {p1}, Lio/realm/s0;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {v10, v11, v2, v3}, Lio/realm/internal/Table;->nativeFindFirstNull(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v10, v11, v2, v3, v0}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v4

    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    .line 10
    invoke-static {v1, v2, v3, v0}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v4

    :cond_2
    move-wide v0, v4

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-interface {p1}, Lio/realm/s0;->x0()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 13
    iget-wide v4, p0, Lio/realm/r0$a;->f:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_1

    .line 14
    :cond_3
    iget-wide v4, p0, Lio/realm/r0$a;->f:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 15
    :goto_1
    invoke-interface {p1}, Lio/realm/s0;->k0()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 16
    iget-wide v4, p0, Lio/realm/r0$a;->g:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_2

    .line 17
    :cond_4
    iget-wide v4, p0, Lio/realm/r0$a;->g:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 18
    :goto_2
    invoke-interface {p1}, Lio/realm/s0;->q()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 19
    iget-wide v4, p0, Lio/realm/r0$a;->h:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 20
    :cond_5
    iget-wide v4, p0, Lio/realm/r0$a;->h:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 21
    :goto_3
    invoke-interface {p1}, Lio/realm/s0;->M()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 22
    iget-wide v4, p0, Lio/realm/r0$a;->i:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 23
    :cond_6
    iget-wide v4, p0, Lio/realm/r0$a;->i:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 24
    :goto_4
    invoke-interface {p1}, Lio/realm/s0;->u0()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 25
    iget-wide v4, p0, Lio/realm/r0$a;->j:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 26
    :cond_7
    iget-wide v4, p0, Lio/realm/r0$a;->j:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 27
    :goto_5
    invoke-interface {p1}, Lio/realm/s0;->t()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 28
    iget-wide v4, p0, Lio/realm/r0$a;->k:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 29
    :cond_8
    iget-wide v4, p0, Lio/realm/r0$a;->k:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 30
    :goto_6
    invoke-interface {p1}, Lio/realm/s0;->E0()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 31
    iget-wide v4, p0, Lio/realm/r0$a;->l:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 32
    :cond_9
    iget-wide v4, p0, Lio/realm/r0$a;->l:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 33
    :goto_7
    invoke-interface {p1}, Lio/realm/s0;->H()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 34
    iget-wide v4, p0, Lio/realm/r0$a;->m:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 35
    :cond_a
    iget-wide v4, p0, Lio/realm/r0$a;->m:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 36
    :goto_8
    invoke-interface {p1}, Lio/realm/s0;->F()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 37
    iget-wide v4, p0, Lio/realm/r0$a;->n:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_9

    .line 38
    :cond_b
    iget-wide v4, p0, Lio/realm/r0$a;->n:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 39
    :goto_9
    invoke-interface {p1}, Lio/realm/s0;->R()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 40
    iget-wide v4, p0, Lio/realm/r0$a;->o:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_a

    .line 41
    :cond_c
    iget-wide v4, p0, Lio/realm/r0$a;->o:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 42
    :goto_a
    invoke-interface {p1}, Lio/realm/s0;->d0()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_d

    .line 43
    iget-wide v4, p0, Lio/realm/r0$a;->p:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_b

    .line 44
    :cond_d
    iget-wide v4, p0, Lio/realm/r0$a;->p:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 45
    :goto_b
    invoke-interface {p1}, Lio/realm/s0;->S()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 46
    iget-wide v4, p0, Lio/realm/r0$a;->q:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_c

    .line 47
    :cond_e
    iget-wide v4, p0, Lio/realm/r0$a;->q:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 48
    :goto_c
    invoke-interface {p1}, Lio/realm/s0;->B0()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 49
    iget-wide v4, p0, Lio/realm/r0$a;->r:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_d

    .line 50
    :cond_f
    iget-wide v4, p0, Lio/realm/r0$a;->r:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 51
    :goto_d
    invoke-interface {p1}, Lio/realm/s0;->f()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 52
    iget-wide v4, p0, Lio/realm/r0$a;->s:J

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_e

    .line 53
    :cond_10
    iget-wide v4, p0, Lio/realm/r0$a;->s:J

    const/4 v8, 0x0

    move-wide v2, v10

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 54
    :goto_e
    iget-wide v4, p0, Lio/realm/r0$a;->t:J

    invoke-interface {p1}, Lio/realm/s0;->j()J

    move-result-wide v8

    const/4 p0, 0x0

    move-wide v2, v10

    move-wide v6, v0

    move v10, p0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    return-wide v0
.end method

.method static x1(Lio/realm/a;Lio/realm/internal/o;)Lio/realm/r0;
    .locals 7

    .line 1
    sget-object v0, Lio/realm/a;->n:Lio/realm/a$f;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a$e;

    .line 2
    invoke-virtual {p0}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object v1

    const-class v2, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {v1, v2}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v4

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lio/realm/a$e;->g(Lio/realm/a;Lio/realm/internal/o;Lio/realm/internal/c;ZLjava/util/List;)V

    .line 3
    new-instance p0, Lio/realm/r0;

    invoke-direct {p0}, Lio/realm/r0;-><init>()V

    .line 4
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p0
.end method

.method static y1(Lio/realm/y;Lio/realm/r0$a;Lcom/hiya/stingray/q/c/i/c;Lcom/hiya/stingray/q/c/i/c;Ljava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lio/realm/r0$a;",
            "Lcom/hiya/stingray/q/c/i/c;",
            "Lcom/hiya/stingray/q/c/i/c;",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)",
            "Lcom/hiya/stingray/q/c/i/c;"
        }
    .end annotation

    .line 1
    const-class p4, Lcom/hiya/stingray/q/c/i/c;

    invoke-virtual {p0, p4}, Lio/realm/y;->k1(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 2
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {p4, p0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 3
    iget-wide v0, p1, Lio/realm/r0$a;->e:J

    invoke-interface {p3}, Lio/realm/s0;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 4
    iget-wide v0, p1, Lio/realm/r0$a;->f:J

    invoke-interface {p3}, Lio/realm/s0;->x0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 5
    iget-wide v0, p1, Lio/realm/r0$a;->g:J

    invoke-interface {p3}, Lio/realm/s0;->k0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 6
    iget-wide v0, p1, Lio/realm/r0$a;->h:J

    invoke-interface {p3}, Lio/realm/s0;->q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 7
    iget-wide v0, p1, Lio/realm/r0$a;->i:J

    invoke-interface {p3}, Lio/realm/s0;->M()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 8
    iget-wide v0, p1, Lio/realm/r0$a;->j:J

    invoke-interface {p3}, Lio/realm/s0;->u0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 9
    iget-wide v0, p1, Lio/realm/r0$a;->k:J

    invoke-interface {p3}, Lio/realm/s0;->t()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 10
    iget-wide v0, p1, Lio/realm/r0$a;->l:J

    invoke-interface {p3}, Lio/realm/s0;->E0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 11
    iget-wide v0, p1, Lio/realm/r0$a;->m:J

    invoke-interface {p3}, Lio/realm/s0;->H()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 12
    iget-wide v0, p1, Lio/realm/r0$a;->n:J

    invoke-interface {p3}, Lio/realm/s0;->F()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 13
    iget-wide v0, p1, Lio/realm/r0$a;->o:J

    invoke-interface {p3}, Lio/realm/s0;->R()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 14
    iget-wide v0, p1, Lio/realm/r0$a;->p:J

    invoke-interface {p3}, Lio/realm/s0;->d0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 15
    iget-wide v0, p1, Lio/realm/r0$a;->q:J

    invoke-interface {p3}, Lio/realm/s0;->S()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 16
    iget-wide v0, p1, Lio/realm/r0$a;->r:J

    invoke-interface {p3}, Lio/realm/s0;->B0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 17
    iget-wide v0, p1, Lio/realm/r0$a;->s:J

    invoke-interface {p3}, Lio/realm/s0;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 18
    iget-wide p0, p1, Lio/realm/r0$a;->t:J

    invoke-interface {p3}, Lio/realm/s0;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Long;)V

    .line 19
    invoke-virtual {p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()V

    return-object p2
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->l:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->l:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->l:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->l:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public B0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->r:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public D(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->p:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->p:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->p:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->p:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public E(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->o:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->o:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->o:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->o:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public E0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->l:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->n:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->m:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->i:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->n:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->n:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->n:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->n:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public P(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->k:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->k:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->k:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->k:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public R()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->o:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public S()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->q:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lio/realm/a;->n:Lio/realm/a$f;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a$e;

    .line 3
    invoke-virtual {v0}, Lio/realm/a$e;->c()Lio/realm/internal/c;

    move-result-object v1

    check-cast v1, Lio/realm/r0$a;

    iput-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    .line 4
    new-instance v1, Lio/realm/x;

    invoke-direct {v1, p0}, Lio/realm/x;-><init>(Lio/realm/e0;)V

    iput-object v1, p0, Lio/realm/r0;->r:Lio/realm/x;

    .line 5
    invoke-virtual {v0}, Lio/realm/a$e;->e()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/x;->k(Lio/realm/a;)V

    .line 6
    iget-object v1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/a$e;->f()Lio/realm/internal/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/x;->l(Lio/realm/internal/o;)V

    .line 7
    iget-object v1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/a$e;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/x;->h(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/a$e;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/x;->j(Ljava/util/List;)V

    return-void
.end method

.method public X(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->i:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->i:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->i:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->i:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public Y(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->h:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->h:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->h:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->h:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/a;->f()V

    .line 3
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'phone\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->e:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, v2, Lio/realm/r0$a;->t:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->H(JJJZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 6
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->t:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/o;->setLong(JJ)V

    return-void
.end method

.method public d0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->p:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->s:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->s:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->s:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->s:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public e0(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->r:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->r:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->r:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->r:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 1
    const-class v2, Lio/realm/r0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/r0;

    .line 3
    iget-object v2, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v3}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    :goto_0
    return v1

    .line 8
    :cond_3
    invoke-virtual {v2}, Lio/realm/a;->L()Z

    move-result v4

    invoke-virtual {v3}, Lio/realm/a;->L()Z

    move-result v5

    if-eq v4, v5, :cond_4

    return v1

    .line 9
    :cond_4
    iget-object v2, v2, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    move-result-object v2

    iget-object v3, v3, Lio/realm/a;->j:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v3}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/OsSharedRealm$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/realm/internal/OsSharedRealm$a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 10
    :cond_5
    iget-object v2, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v3}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v3

    invoke-interface {v3}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    :goto_1
    return v1

    .line 13
    :cond_7
    iget-object v2, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    invoke-interface {p1}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->s:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v5, 0x20f

    add-int/2addr v5, v0

    mul-int/lit8 v5, v5, 0x1f

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    :cond_1
    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x1f

    const/16 v0, 0x20

    ushr-long v0, v2, v0

    xor-long/2addr v0, v2

    long-to-int v1, v0

    add-int/2addr v5, v1

    return v5
.end method

.method public i0(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->q:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->q:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->q:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->q:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public j()J
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->t:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public k0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->g:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->f:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->f:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->f:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->f:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public m0(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->m:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->m:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->m:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->m:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public n0()Lio/realm/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/x<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->g:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->g:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->g:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->g:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->h:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->k:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p0}, Lio/realm/f0;->N0(Lio/realm/e0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RealmCallerIdDTO = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{phone:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/r0;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "null"

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lio/realm/r0;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{spamType:"

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/realm/r0;->x0()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lio/realm/r0;->x0()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{confidenceLevel:"

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lio/realm/r0;->k0()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lio/realm/r0;->k0()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{spamCategory:"

    .line 15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lio/realm/r0;->q()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lio/realm/r0;->q()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{displayName:"

    .line 19
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lio/realm/r0;->M()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lio/realm/r0;->M()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v2

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{kind:"

    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lio/realm/r0;->u0()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lio/realm/r0;->u0()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v2

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{location:"

    .line 27
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lio/realm/r0;->t()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lio/realm/r0;->t()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_7
    move-object v4, v2

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{photoUrl:"

    .line 31
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Lio/realm/r0;->E0()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lio/realm/r0;->E0()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_8
    move-object v4, v2

    :goto_7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{lineType:"

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Lio/realm/r0;->H()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lio/realm/r0;->H()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_9
    move-object v4, v2

    :goto_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{lineTypeId:"

    .line 39
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lio/realm/r0;->F()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {p0}, Lio/realm/r0;->F()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_a
    move-object v4, v2

    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{lineTypeTooltip:"

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lio/realm/r0;->R()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lio/realm/r0;->R()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_b
    move-object v4, v2

    :goto_a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{displayCategory:"

    .line 47
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lio/realm/r0;->d0()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lio/realm/r0;->d0()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_c
    move-object v4, v2

    :goto_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{displayMessage:"

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lio/realm/r0;->S()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual {p0}, Lio/realm/r0;->S()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_d
    move-object v4, v2

    :goto_c
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{reputationTypeString:"

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p0}, Lio/realm/r0;->B0()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {p0}, Lio/realm/r0;->B0()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    :cond_e
    move-object v4, v2

    :goto_d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "{profileTag:"

    .line 59
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lio/realm/r0;->f()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {p0}, Lio/realm/r0;->f()Ljava/lang/String;

    move-result-object v2

    :cond_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{lastUpdatedTimeStamp:"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Lio/realm/r0;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->j:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->f:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v2, p1, Lio/realm/r0$a;->j:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v8, v1, Lio/realm/r0$a;->j:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v0, v0, Lio/realm/r0$a;->j:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/r0;->r:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/r0;->q:Lio/realm/r0$a;

    iget-wide v1, v1, Lio/realm/r0$a;->j:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method
