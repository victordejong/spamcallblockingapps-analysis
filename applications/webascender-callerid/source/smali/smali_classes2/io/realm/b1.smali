.class public Lio/realm/b1;
.super Lcom/hiya/stingray/t/x0;
.source "SourceFile"

# interfaces
.implements Lio/realm/internal/m;
.implements Lio/realm/c1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/realm/b1$a;
    }
.end annotation


# static fields
.field private static final e:Lio/realm/internal/OsObjectSchemaInfo;


# instance fields
.field private c:Lio/realm/b1$a;

.field private d:Lio/realm/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/x<",
            "Lcom/hiya/stingray/t/x0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lio/realm/b1;->W0()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    sput-object v0, Lio/realm/b1;->e:Lio/realm/internal/OsObjectSchemaInfo;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/t/x0;-><init>()V

    .line 2
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->i()V

    return-void
.end method

.method public static S0(Lio/realm/y;Lio/realm/b1$a;Lcom/hiya/stingray/t/x0;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/t/x0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lio/realm/b1$a;",
            "Lcom/hiya/stingray/t/x0;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)",
            "Lcom/hiya/stingray/t/x0;"
        }
    .end annotation

    .line 1
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lio/realm/internal/m;

    if-eqz p3, :cond_0

    .line 2
    check-cast p3, Lcom/hiya/stingray/t/x0;

    return-object p3

    .line 3
    :cond_0
    const-class p3, Lcom/hiya/stingray/t/x0;

    invoke-virtual {p0, p3}, Lio/realm/y;->k1(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p3

    .line 4
    new-instance v0, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {v0, p3, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 5
    iget-wide v1, p1, Lio/realm/b1$a;->e:J

    invoke-interface {p2}, Lio/realm/c1;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, v2, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 6
    iget-wide v1, p1, Lio/realm/b1$a;->f:J

    invoke-interface {p2}, Lio/realm/c1;->G0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 7
    invoke-virtual {v0}, Lio/realm/internal/objectstore/OsObjectBuilder;->f()Lio/realm/internal/UncheckedRow;

    move-result-object p1

    .line 8
    invoke-static {p0, p1}, Lio/realm/b1;->Z0(Lio/realm/a;Lio/realm/internal/o;)Lio/realm/b1;

    move-result-object p0

    .line 9
    invoke-interface {p4, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static T0(Lio/realm/y;Lio/realm/b1$a;Lcom/hiya/stingray/t/x0;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/t/x0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lio/realm/b1$a;",
            "Lcom/hiya/stingray/t/x0;",
            "Z",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)",
            "Lcom/hiya/stingray/t/x0;"
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
    check-cast v1, Lcom/hiya/stingray/t/x0;

    return-object v1

    :cond_2
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 9
    const-class v2, Lcom/hiya/stingray/t/x0;

    invoke-virtual {p0, v2}, Lio/realm/y;->k1(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v2

    .line 10
    iget-wide v3, p1, Lio/realm/b1$a;->e:J

    .line 11
    invoke-interface {p2}, Lio/realm/c1;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lio/realm/internal/Table;->i(JLjava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 12
    :cond_3
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

    .line 13
    new-instance v1, Lio/realm/b1;

    invoke-direct {v1}, Lio/realm/b1;-><init>()V

    .line 14
    invoke-interface {p4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    .line 16
    throw p0

    :cond_4
    :goto_0
    move v0, p3

    :goto_1
    move-object v7, v1

    if-eqz v0, :cond_5

    move-object v1, p0

    move-object v2, p1

    move-object v3, v7

    move-object v4, p2

    move-object v5, p4

    move-object v6, p5

    .line 17
    invoke-static/range {v1 .. v6}, Lio/realm/b1;->a1(Lio/realm/y;Lio/realm/b1$a;Lcom/hiya/stingray/t/x0;Lcom/hiya/stingray/t/x0;Ljava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/t/x0;

    goto :goto_2

    :cond_5
    invoke-static/range {p0 .. p5}, Lio/realm/b1;->S0(Lio/realm/y;Lio/realm/b1$a;Lcom/hiya/stingray/t/x0;ZLjava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/t/x0;

    move-result-object v7

    :goto_2
    return-object v7
.end method

.method public static U0(Lio/realm/internal/OsSchemaInfo;)Lio/realm/b1$a;
    .locals 1

    .line 1
    new-instance v0, Lio/realm/b1$a;

    invoke-direct {v0, p0}, Lio/realm/b1$a;-><init>(Lio/realm/internal/OsSchemaInfo;)V

    return-object v0
.end method

.method public static V0(Lcom/hiya/stingray/t/x0;IILjava/util/Map;)Lcom/hiya/stingray/t/x0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/x0;",
            "II",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m$a<",
            "Lio/realm/e0;",
            ">;>;)",
            "Lcom/hiya/stingray/t/x0;"
        }
    .end annotation

    if-gt p1, p2, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/realm/internal/m$a;

    if-nez p2, :cond_1

    .line 2
    new-instance p2, Lcom/hiya/stingray/t/x0;

    invoke-direct {p2}, Lcom/hiya/stingray/t/x0;-><init>()V

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

    check-cast p0, Lcom/hiya/stingray/t/x0;

    return-object p0

    .line 6
    :cond_2
    iget-object p3, p2, Lio/realm/internal/m$a;->b:Lio/realm/e0;

    check-cast p3, Lcom/hiya/stingray/t/x0;

    .line 7
    iput p1, p2, Lio/realm/internal/m$a;->a:I

    move-object p2, p3

    .line 8
    :goto_0
    invoke-interface {p0}, Lio/realm/c1;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/realm/c1;->c(Ljava/lang/String;)V

    .line 9
    invoke-interface {p0}, Lio/realm/c1;->G0()Z

    move-result p0

    invoke-interface {p2, p0}, Lio/realm/c1;->h0(Z)V

    return-object p2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static W0()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 7

    .line 1
    new-instance v6, Lio/realm/internal/OsObjectSchemaInfo$b;

    const-string v0, "RealmPhoneNumberInfo"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v6, v0, v1, v2, v1}, Lio/realm/internal/OsObjectSchemaInfo$b;-><init>(Ljava/lang/String;ZII)V

    .line 2
    sget-object v2, Lio/realm/RealmFieldType;->STRING:Lio/realm/RealmFieldType;

    const-string v1, "phoneNumber"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 3
    sget-object v2, Lio/realm/RealmFieldType;->BOOLEAN:Lio/realm/RealmFieldType;

    const-string v1, "repliedIsSpam"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lio/realm/internal/OsObjectSchemaInfo$b;->a(Ljava/lang/String;Lio/realm/RealmFieldType;ZZZ)Lio/realm/internal/OsObjectSchemaInfo$b;

    .line 4
    invoke-virtual {v6}, Lio/realm/internal/OsObjectSchemaInfo$b;->b()Lio/realm/internal/OsObjectSchemaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static X0()Lio/realm/internal/OsObjectSchemaInfo;
    .locals 1

    .line 1
    sget-object v0, Lio/realm/b1;->e:Lio/realm/internal/OsObjectSchemaInfo;

    return-object v0
.end method

.method public static Y0(Lio/realm/y;Lcom/hiya/stingray/t/x0;Ljava/util/Map;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lcom/hiya/stingray/t/x0;",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/hiya/stingray/t/x0;

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

    move-result-wide v2

    .line 5
    invoke-virtual {p0}, Lio/realm/y;->C()Lio/realm/j0;

    move-result-object p0

    invoke-virtual {p0, v0}, Lio/realm/j0;->e(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object p0

    check-cast p0, Lio/realm/b1$a;

    .line 6
    iget-wide v4, p0, Lio/realm/b1$a;->e:J

    .line 7
    invoke-interface {p1}, Lio/realm/c1;->g()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, -0x1

    if-eqz v0, :cond_1

    .line 8
    invoke-static {v2, v3, v4, v5, v0}, Lio/realm/internal/Table;->nativeFindFirstString(JJLjava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    :cond_1
    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v6

    if-nez v10, :cond_2

    .line 9
    invoke-static {v1, v4, v5, v0}, Lio/realm/internal/OsObject;->createRowWithPrimaryKey(Lio/realm/internal/Table;JLjava/lang/Object;)J

    move-result-wide v8

    :cond_2
    move-wide v0, v8

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-wide v4, p0, Lio/realm/b1$a;->f:J

    invoke-interface {p1}, Lio/realm/c1;->G0()Z

    move-result v8

    const/4 v9, 0x0

    move-wide v6, v0

    invoke-static/range {v2 .. v9}, Lio/realm/internal/Table;->nativeSetBoolean(JJJZZ)V

    return-wide v0
.end method

.method static Z0(Lio/realm/a;Lio/realm/internal/o;)Lio/realm/b1;
    .locals 7

    .line 1
    sget-object v0, Lio/realm/a;->n:Lio/realm/a$f;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a$e;

    .line 2
    invoke-virtual {p0}, Lio/realm/a;->C()Lio/realm/j0;

    move-result-object v1

    const-class v2, Lcom/hiya/stingray/t/x0;

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
    new-instance p0, Lio/realm/b1;

    invoke-direct {p0}, Lio/realm/b1;-><init>()V

    .line 4
    invoke-virtual {v0}, Lio/realm/a$e;->a()V

    return-object p0
.end method

.method static a1(Lio/realm/y;Lio/realm/b1$a;Lcom/hiya/stingray/t/x0;Lcom/hiya/stingray/t/x0;Ljava/util/Map;Ljava/util/Set;)Lcom/hiya/stingray/t/x0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/y;",
            "Lio/realm/b1$a;",
            "Lcom/hiya/stingray/t/x0;",
            "Lcom/hiya/stingray/t/x0;",
            "Ljava/util/Map<",
            "Lio/realm/e0;",
            "Lio/realm/internal/m;",
            ">;",
            "Ljava/util/Set<",
            "Lio/realm/n;",
            ">;)",
            "Lcom/hiya/stingray/t/x0;"
        }
    .end annotation

    .line 1
    const-class p4, Lcom/hiya/stingray/t/x0;

    invoke-virtual {p0, p4}, Lio/realm/y;->k1(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object p0

    .line 2
    new-instance p4, Lio/realm/internal/objectstore/OsObjectBuilder;

    invoke-direct {p4, p0, p5}, Lio/realm/internal/objectstore/OsObjectBuilder;-><init>(Lio/realm/internal/Table;Ljava/util/Set;)V

    .line 3
    iget-wide v0, p1, Lio/realm/b1$a;->e:J

    invoke-interface {p3}, Lio/realm/c1;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, v0, v1, p0}, Lio/realm/internal/objectstore/OsObjectBuilder;->e(JLjava/lang/String;)V

    .line 4
    iget-wide p0, p1, Lio/realm/b1$a;->f:J

    invoke-interface {p3}, Lio/realm/c1;->G0()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p4, p0, p1, p3}, Lio/realm/internal/objectstore/OsObjectBuilder;->a(JLjava/lang/Boolean;)V

    .line 5
    invoke-virtual {p4}, Lio/realm/internal/objectstore/OsObjectBuilder;->g()V

    return-object p2
.end method


# virtual methods
.method public G0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/b1;->c:Lio/realm/b1$a;

    iget-wide v1, v1, Lio/realm/b1$a;->f:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method public T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

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

    check-cast v1, Lio/realm/b1$a;

    iput-object v1, p0, Lio/realm/b1;->c:Lio/realm/b1$a;

    .line 4
    new-instance v1, Lio/realm/x;

    invoke-direct {v1, p0}, Lio/realm/x;-><init>(Lio/realm/e0;)V

    iput-object v1, p0, Lio/realm/b1;->d:Lio/realm/x;

    .line 5
    invoke-virtual {v0}, Lio/realm/a$e;->e()Lio/realm/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/x;->k(Lio/realm/a;)V

    .line 6
    iget-object v1, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/a$e;->f()Lio/realm/internal/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/realm/x;->l(Lio/realm/internal/o;)V

    .line 7
    iget-object v1, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/a$e;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lio/realm/x;->h(Z)V

    .line 8
    iget-object v1, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/a$e;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/realm/x;->j(Ljava/util/List;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {p1}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object p1

    invoke-virtual {p1}, Lio/realm/a;->f()V

    .line 3
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Primary key field \'phoneNumber\' cannot be changed after object was created."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1
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
    const-class v2, Lio/realm/b1;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Lio/realm/b1;

    .line 3
    iget-object v2, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lio/realm/b1;->d:Lio/realm/x;

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
    iget-object v2, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v2

    invoke-virtual {v2}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Lio/realm/b1;->d:Lio/realm/x;

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
    iget-object v2, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v2}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v2

    iget-object p1, p1, Lio/realm/b1;->d:Lio/realm/x;

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

.method public g()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 2
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/b1;->c:Lio/realm/b1$a;

    iget-wide v1, v1, Lio/realm/b1$a;->e:J

    invoke-interface {v0, v1, v2}, Lio/realm/internal/o;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h0(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    iget-object v2, p0, Lio/realm/b1;->c:Lio/realm/b1$a;

    iget-wide v2, v2, Lio/realm/b1$a;->f:J

    invoke-interface {v0}, Lio/realm/internal/o;->getObjectKey()J

    move-result-wide v4

    const/4 v7, 0x1

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Lio/realm/internal/Table;->G(JJZZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->f()V

    .line 6
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v0

    iget-object v1, p0, Lio/realm/b1;->c:Lio/realm/b1$a;

    iget-wide v1, v1, Lio/realm/b1$a;->f:J

    invoke-interface {v0, v1, v2, p1}, Lio/realm/internal/o;->setBoolean(JZ)V

    return-void
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v0}, Lio/realm/x;->c()Lio/realm/a;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/a;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/realm/b1;->d:Lio/realm/x;

    invoke-virtual {v1}, Lio/realm/x;->d()Lio/realm/internal/o;

    move-result-object v1

    invoke-interface {v1}, Lio/realm/internal/o;->getTable()Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/internal/Table;->s()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lio/realm/b1;->d:Lio/realm/x;

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
    iget-object v0, p0, Lio/realm/b1;->d:Lio/realm/x;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lio/realm/f0;->N0(Lio/realm/e0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invalid object"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RealmPhoneNumberInfo = proxy["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "{phoneNumber:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lio/realm/b1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "{repliedIsSpam:"

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Lio/realm/b1;->G0()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
