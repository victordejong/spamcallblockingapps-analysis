.class public Lio/realm/v0;
.super Lcom/hiya/stingray/q/c/i/e;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/m;
.implements Lio/realm/w0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/v0$a;
    }
.end annotation


# static fields
.field private static final o:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private m:Lio/realm/v0$a;

.field private n:Lio/realm/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/x<",
            "Lcom/hiya/stingray/q/c/i/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/realm/v0;->p1()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/v0;->o:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/q/c/i/e;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->i()V

    return-void
.end method

.method public static l1(Lio/realm/y;Lio/realm/v0$a;Lcom/hiya/stingray/q/c/i/e;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lio/realm/v0$a;",
            "Lcom/hiya/stingray/q/c/i/e;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)",
            "Lcom/hiya/stingray/q/c/i/e;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/m;

    if-eqz p3, :cond_0

    .line 2
    check-cast p3, Lcom/hiya/stingray/q/c/i/e;

    return-object p3

    .line 3
    :cond_0
    const-class p3, Lcom/hiya/stingray/q/c/i/e;

    invoke-virtual {p0, p3}, Lio/realm/y;->k1(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 4
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 5
    iget-wide v1, p1, Lio/realm/v0$a;->e:J

    invoke-interface {p2}, Lio/realm/w0;->h()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->c(JLjava/lang/Long;)V

    .line 6
    iget-wide v1, p1, Lio/realm/v0$a;->f:J

    invoke-interface {p2}, Lio/realm/w0;->Z()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 7
    iget-wide v1, p1, Lio/realm/v0$a;->g:J

    invoke-interface {p2}, Lio/realm/w0;->W()Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->b(JLjava/lang/Integer;)V

    .line 8
    iget-wide v1, p1, Lio/realm/v0$a;->h:J

    invoke-interface {p2}, Lio/realm/w0;->I()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 9
    iget-wide v1, p1, Lio/realm/v0$a;->i:J

    invoke-interface {p2}, Lio/realm/w0;->o()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 10
    iget-wide v1, p1, Lio/realm/v0$a;->j:J

    invoke-interface {p2}, Lio/realm/w0;->w()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 11
    iget-wide v1, p1, Lio/realm/v0$a;->k:J

    invoke-interface {p2}, Lio/realm/w0;->f()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 12
    iget-wide v1, p1, Lio/realm/v0$a;->l:J

    invoke-interface {p2}, Lio/realm/w0;->u()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 13
    iget-wide v1, p1, Lio/realm/v0$a;->m:J

    invoke-interface {p2}, Lio/realm/w0;->s()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 14
    iget-wide v1, p1, Lio/realm/v0$a;->n:J

    invoke-interface {p2}, Lio/realm/w0;->z0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 15
    iget-wide v1, p1, Lio/realm/v0$a;->o:J

    invoke-interface {p2}, Lio/realm/w0;->f0()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 16
    iget-wide v1, p1, Lio/realm/v0$a;->p:J

    invoke-interface {p2}, Lio/realm/w0;->Q()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 17
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 18
    invoke-static {p0, p1}, Lio/realm/v0;->s1(Lio/realm/a;Lio/realm/internal/o;)Lio/realm/v0;

    move-result-object p0

    .line 19
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static m1(Lio/realm/y;Lio/realm/v0$a;Lcom/hiya/stingray/q/c/i/e;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lio/realm/v0$a;",
            "Lcom/hiya/stingray/q/c/i/e;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)",
            "Lcom/hiya/stingray/q/c/i/e;"
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

    move-result-object v0

    check-cast v0, Lio/realm/internal/m;

    if-eqz v0, :cond_2

    .line 8
    check-cast v0, Lcom/hiya/stingray/q/c/i/e;

    return-object v0

    .line 9
    :cond_2
    invoke-static/range {p0 .. p5}, Lio/realm/v0;->l1(Lio/realm/y;Lio/realm/v0$a;Lcom/hiya/stingray/q/c/i/e;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/q/c/i/e;

    move-result-object p0

    return-object p0
.end method

.method public static n1(Lio/realm/internal/OsSchemaInfo;)Lio/realm/v0$a;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/v0$a;

    invoke-direct {v0, p0}, Lio/realm/v0$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static o1(Lcom/hiya/stingray/q/c/i/e;IILjava/util/Map;)Lcom/hiya/stingray/q/c/i/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/q/c/i/e;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m$a<",
            "Lio/realm/e0;",
            ">;>;)",
            "Lcom/hiya/stingray/q/c/i/e;"
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
    new-instance p2, Lcom/hiya/stingray/q/c/i/e;

    invoke-direct {p2}, Lcom/hiya/stingray/q/c/i/e;-><init>()V

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

    check-cast p0, Lcom/hiya/stingray/q/c/i/e;

    return-object p0

    .line 6
    :cond_2
    iget-object p3, p2, Lio/realm/internal/m$a;->b:Lio/realm/e0;

    check-cast p3, Lcom/hiya/stingray/q/c/i/e;

    .line 7
    iput p1, p2, Lio/realm/internal/m$a;->a:I

    move-object p2, p3

    .line 8
    :goto_0
    invoke-interface {p0}, Lio/realm/w0;->h()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lio/realm/w0;->i(J)V

    .line 9
    invoke-interface {p0}, Lio/realm/w0;->Z()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->n(Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Lio/realm/w0;->W()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->y0(Ljava/lang/Integer;)V

    .line 11
    invoke-interface {p0}, Lio/realm/w0;->I()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->s0(Ljava/lang/Boolean;)V

    .line 12
    invoke-interface {p0}, Lio/realm/w0;->o()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->o0(Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lio/realm/w0;->w()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->v0(Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lio/realm/w0;->f()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->e(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lio/realm/w0;->u()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->g0(Ljava/lang/String;)V

    .line 16
    invoke-interface {p0}, Lio/realm/w0;->s()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->H0(Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lio/realm/w0;->z0()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->B(Ljava/lang/String;)V

    .line 18
    invoke-interface {p0}, Lio/realm/w0;->f0()Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/w0;->U(Ljava/lang/Boolean;)V

    .line 19
    invoke-interface {p0}, Lio/realm/w0;->Q()Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/realm/w0;->c0(Ljava/lang/Boolean;)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static p1()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 9

    .line 1
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v0, "RealmPhoneSendEvent"

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-direct {v6, v0, v1, v2, v1}, Lio/realm/internal/OsObjectSchemaInfo$b;-><init>(Ljava/lang/String;ZII)V

    .line 2
    sget-object v7, Lio/realm/RealmFieldType;->INTEGER:Lio/realm/RealmFieldType;

    const-string v1, "time"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 3
    sget-object v8, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "number"

    const/4 v5, 0x0

    move-object v2, v8

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "durationInSeconds"

    move-object v2, v7

    .line 4
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 5
    sget-object v7, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "isContact"

    move-object v2, v7

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "direction"

    move-object v2, v8

    .line 6
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "termination"

    .line 7
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "profileTag"

    .line 8
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "eventType"

    .line 9
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "userDisposition"

    .line 10
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "clientDisposition"

    .line 11
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "isBlackListed"

    move-object v2, v7

    .line 12
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v1, "shouldSend"

    .line 13
    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 14
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$b;->b()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static q1()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/v0;->o:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static r1(Lio/realm/y;Lcom/hiya/stingray/q/c/i/e;Ljava/util/Map;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lcom/hiya/stingray/q/c/i/e;",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/hiya/stingray/q/c/i/e;

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

    move-result-wide v11

    .line 5
    invoke-virtual {p0}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object p0

    check-cast p0, Lio/realm/v0$a;

    .line 6
    invoke-static {v1}, Lio/realm/internal/OsObject;->createRow(Lio/realm/internal/Table;)J

    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-wide v4, p0, Lio/realm/v0$a;->e:J

    invoke-interface {p1}, Lio/realm/w0;->h()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    .line 9
    invoke-interface {p1}, Lio/realm/w0;->Z()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 10
    iget-wide v4, p0, Lio/realm/v0$a;->f:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_0

    .line 11
    :cond_1
    iget-wide v4, p0, Lio/realm/v0$a;->f:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 12
    :goto_0
    invoke-interface {p1}, Lio/realm/w0;->W()Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    iget-wide v4, p0, Lio/realm/v0$a;->g:J

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const/4 v10, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v10}, Lio/realm/internal/Table;->nativeSetLong(JJJJZ)V

    goto :goto_1

    .line 14
    :cond_2
    iget-wide v4, p0, Lio/realm/v0$a;->g:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 15
    :goto_1
    invoke-interface {p1}, Lio/realm/w0;->I()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 16
    iget-wide v4, p0, Lio/realm/v0$a;->h:J

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_2

    .line 17
    :cond_3
    iget-wide v4, p0, Lio/realm/v0$a;->h:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 18
    :goto_2
    invoke-interface {p1}, Lio/realm/w0;->o()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 19
    iget-wide v4, p0, Lio/realm/v0$a;->i:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_3

    .line 20
    :cond_4
    iget-wide v4, p0, Lio/realm/v0$a;->i:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 21
    :goto_3
    invoke-interface {p1}, Lio/realm/w0;->w()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 22
    iget-wide v4, p0, Lio/realm/v0$a;->j:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_4

    .line 23
    :cond_5
    iget-wide v4, p0, Lio/realm/v0$a;->j:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 24
    :goto_4
    invoke-interface {p1}, Lio/realm/w0;->f()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 25
    iget-wide v4, p0, Lio/realm/v0$a;->k:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_5

    .line 26
    :cond_6
    iget-wide v4, p0, Lio/realm/v0$a;->k:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 27
    :goto_5
    invoke-interface {p1}, Lio/realm/w0;->u()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 28
    iget-wide v4, p0, Lio/realm/v0$a;->l:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_6

    .line 29
    :cond_7
    iget-wide v4, p0, Lio/realm/v0$a;->l:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 30
    :goto_6
    invoke-interface {p1}, Lio/realm/w0;->s()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 31
    iget-wide v4, p0, Lio/realm/v0$a;->m:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_7

    .line 32
    :cond_8
    iget-wide v4, p0, Lio/realm/v0$a;->m:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 33
    :goto_7
    invoke-interface {p1}, Lio/realm/w0;->z0()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 34
    iget-wide v4, p0, Lio/realm/v0$a;->n:J

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetString(JJJLjava/lang/String;Z)V

    goto :goto_8

    .line 35
    :cond_9
    iget-wide v4, p0, Lio/realm/v0$a;->n:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 36
    :goto_8
    invoke-interface {p1}, Lio/realm/w0;->f0()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 37
    iget-wide v4, p0, Lio/realm/v0$a;->o:J

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_9

    .line 38
    :cond_a
    iget-wide v4, p0, Lio/realm/v0$a;->o:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    .line 39
    :goto_9
    invoke-interface {p1}, Lio/realm/w0;->Q()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 40
    iget-wide v4, p0, Lio/realm/v0$a;->p:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    goto :goto_a

    .line 41
    :cond_b
    iget-wide v4, p0, Lio/realm/v0$a;->p:J

    const/4 v8, 0x0

    move-wide v2, v11

    move-wide v6, v0

    invoke-static/range {v2 .. v8}, Lio/realm/internal/Table;->nativeSetNull(JJJZ)V

    :goto_a
    return-wide v0
.end method

.method static s1(Lio/realm/a;Lio/realm/internal/o;)Lio/realm/v0;
    .locals 7

    .line 1
    sget-object v0, Lio/realm/a;->n:Lio/realm/a$f;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a$e;

    .line 2
    invoke-virtual {p0}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object v1

    const-class v2, Lcom/hiya/stingray/q/c/i/e;

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
    new-instance p0, Lio/realm/v0;

    invoke-direct {p0}, Lio/realm/v0;-><init>()V

    .line 4
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p0
.end method


# virtual methods
.method public B(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->n:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->n:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->n:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->n:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public H0(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->m:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->m:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->m:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->m:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public I()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->h:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->h:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public Q()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->p:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->p:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

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

    check-cast v1, Lio/realm/v0$a;

    iput-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    .line 4
    new-instance v1, Lio/realm/x;

    invoke-direct {v1, p0}, Lio/realm/x;-><init>(Lio/realm/e0;)V

    iput-object v1, p0, Lio/realm/v0;->n:Lio/realm/x;

    .line 5
    invoke-virtual {v0}, Lio/realm/a$e;->e()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/x;->k(Lio/realm/a;)V

    .line 6
    iget-object v1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/a$e;->f()Lio/realm/internal/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/x;->l(Lio/realm/internal/o;)V

    .line 7
    iget-object v1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/a$e;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/x;->h(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/a$e;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/x;->j(Ljava/util/List;)V

    return-void
.end method

.method public U(Ljava/lang/Boolean;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->o:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->o:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->G(JJZZ)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->o:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->o:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setBoolean(JZ)V

    return-void
.end method

.method public W()Ljava/lang/Integer;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->g:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->g:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getLong(J)J

    move-result-wide v0

    long-to-int v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public Z()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->f:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c0(Ljava/lang/Boolean;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->p:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->p:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->G(JJZZ)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->p:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->p:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setBoolean(JZ)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->k:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->k:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->k:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->k:J

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
    const-class v2, Lio/realm/v0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/v0;

    .line 3
    iget-object v2, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/v0;->n:Lio/realm/x;

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
    iget-object v2, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lio/realm/v0;->n:Lio/realm/x;

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
    iget-object v2, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/v0;->n:Lio/realm/x;

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
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->k:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f0()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->o:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->isNull(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->o:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getBoolean(J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public g0(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->l:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->l:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->l:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->l:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public h()J
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->e:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/v0;->n:Lio/realm/x;

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

.method public i(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, v2, Lio/realm/v0$a;->e:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide v6, p1

    invoke-virtual/range {v1 .. v8}, Lio/realm/internal/Table;->H(JJJZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 6
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->e:J

    invoke-interface {v0, v1, v2, p1, p2}, Lio/realm/internal/o;->setLong(JJ)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->f:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->f:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->f:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->f:J

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
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->i:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o0(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->i:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->i:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->i:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->i:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->m:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s0(Ljava/lang/Boolean;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->h:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->h:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->G(JJZZ)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->h:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->h:J

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setBoolean(JZ)V

    return-void
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

    const-string v1, "RealmPhoneSendEvent = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{time:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/v0;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{number:"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/realm/v0;->Z()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lio/realm/v0;->Z()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{durationInSeconds:"

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Lio/realm/v0;->W()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lio/realm/v0;->W()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{isContact:"

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Lio/realm/v0;->I()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lio/realm/v0;->I()Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{direction:"

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0}, Lio/realm/v0;->o()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lio/realm/v0;->o()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{termination:"

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p0}, Lio/realm/v0;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lio/realm/v0;->w()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_5
    move-object v3, v4

    :goto_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{profileTag:"

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p0}, Lio/realm/v0;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lio/realm/v0;->f()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_6
    move-object v3, v4

    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{eventType:"

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Lio/realm/v0;->u()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lio/realm/v0;->u()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_7
    move-object v3, v4

    :goto_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{userDisposition:"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Lio/realm/v0;->s()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lio/realm/v0;->s()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_8
    move-object v3, v4

    :goto_7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{clientDisposition:"

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Lio/realm/v0;->z0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lio/realm/v0;->z0()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_9
    move-object v3, v4

    :goto_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "{isBlackListed:"

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p0}, Lio/realm/v0;->f0()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lio/realm/v0;->f0()Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_9

    :cond_a
    move-object v3, v4

    :goto_9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{shouldSend:"

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Lio/realm/v0;->Q()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lio/realm/v0;->Q()Ljava/lang/Boolean;

    move-result-object v4

    :cond_b
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->l:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v0(Ljava/lang/String;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object p1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, p1, Lio/realm/v0$a;->j:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v7

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v8, v1, Lio/realm/v0$a;->j:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v10

    const/4 v13, 0x1

    move-object v12, p1

    invoke-virtual/range {v7 .. v13}, Lio/realm/internal/Table;->J(JJLjava/lang/String;Z)V

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object p1, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object p1

    iget-object v0, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v0, v0, Lio/realm/v0$a;->j:J

    invoke-interface {p1, v0, v1}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->j:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setString(JLjava/lang/String;)V

    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->j:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y0(Ljava/lang/Integer;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2
    iget-object v1, v0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->b()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v1

    if-nez p1, :cond_1

    .line 4
    invoke-interface {v1}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    iget-object v3, v0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v3, v3, Lio/realm/v0$a;->g:J

    invoke-interface {v1}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lio/realm/internal/Table;->I(JJZ)V

    return-void

    .line 5
    :cond_1
    invoke-interface {v1}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v8

    iget-object v2, v0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v9, v2, Lio/realm/v0$a;->g:J

    invoke-interface {v1}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v13, v1

    const/4 v15, 0x1

    invoke-virtual/range {v8 .. v15}, Lio/realm/internal/Table;->H(JJJZ)V

    return-void

    .line 6
    :cond_2
    iget-object v1, v0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/a;->f()V

    if-nez p1, :cond_3

    .line 7
    iget-object v1, v0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v1

    iget-object v2, v0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, v2, Lio/realm/v0$a;->g:J

    invoke-interface {v1, v2, v3}, Lio/realm/internal/o;->setNull(J)V

    return-void

    .line 8
    :cond_3
    iget-object v1, v0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v1

    iget-object v2, v0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v2, v2, Lio/realm/v0$a;->g:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v1, v2, v3, v4, v5}, Lio/realm/internal/o;->setLong(JJ)V

    return-void
.end method

.method public z0()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/v0;->n:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/v0;->m:Lio/realm/v0$a;

    iget-wide v1, v1, Lio/realm/v0$a;->n:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
