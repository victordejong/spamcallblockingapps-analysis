.class public final Lorg/joda/time/y/n;
.super Lorg/joda/time/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/y/n$c;,
        Lorg/joda/time/y/n$b;,
        Lorg/joda/time/y/n$a;
    }
.end annotation


# static fields
.field static final W:Lorg/joda/time/k;

.field private static final X:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/joda/time/y/m;",
            "Lorg/joda/time/y/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private R:Lorg/joda/time/y/w;

.field private S:Lorg/joda/time/y/t;

.field private T:Lorg/joda/time/k;

.field private U:J

.field private V:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/joda/time/k;

    const-wide v1, -0xb1d069b5400L

    invoke-direct {v0, v1, v2}, Lorg/joda/time/k;-><init>(J)V

    sput-object v0, Lorg/joda/time/y/n;->W:Lorg/joda/time/k;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/y/n;->X:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/a;Lorg/joda/time/y/w;Lorg/joda/time/y/t;Lorg/joda/time/k;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/joda/time/y/a;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/y/w;Lorg/joda/time/y/t;Lorg/joda/time/k;)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/joda/time/y/a;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic W(Lorg/joda/time/y/n;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/joda/time/y/n;->V:J

    return-wide v0
.end method

.method static synthetic X(Lorg/joda/time/y/n;)Lorg/joda/time/y/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    return-object p0
.end method

.method private static Y(JLorg/joda/time/a;Lorg/joda/time/a;)J
    .locals 4

    .line 1
    invoke-virtual {p3}, Lorg/joda/time/a;->J()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {p2}, Lorg/joda/time/a;->J()Lorg/joda/time/c;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lorg/joda/time/c;->c(J)I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/joda/time/c;->G(JI)J

    move-result-wide v0

    .line 2
    invoke-virtual {p3}, Lorg/joda/time/a;->H()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {p2}, Lorg/joda/time/a;->H()Lorg/joda/time/c;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/c;->c(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide v0

    .line 3
    invoke-virtual {p3}, Lorg/joda/time/a;->f()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {p2}, Lorg/joda/time/a;->f()Lorg/joda/time/c;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Lorg/joda/time/c;->c(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide v0

    .line 4
    invoke-virtual {p3}, Lorg/joda/time/a;->v()Lorg/joda/time/c;

    move-result-object p3

    invoke-virtual {p2}, Lorg/joda/time/a;->v()Lorg/joda/time/c;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lorg/joda/time/c;->c(J)I

    move-result p0

    invoke-virtual {p3, v0, v1, p0}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static Z(JLorg/joda/time/a;Lorg/joda/time/a;)J
    .locals 3

    .line 1
    invoke-virtual {p2}, Lorg/joda/time/a;->O()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/joda/time/c;->c(J)I

    move-result v0

    invoke-virtual {p2}, Lorg/joda/time/a;->A()Lorg/joda/time/c;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lorg/joda/time/c;->c(J)I

    move-result v1

    invoke-virtual {p2}, Lorg/joda/time/a;->e()Lorg/joda/time/c;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lorg/joda/time/c;->c(J)I

    move-result v2

    invoke-virtual {p2}, Lorg/joda/time/a;->v()Lorg/joda/time/c;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lorg/joda/time/c;->c(J)I

    move-result p0

    invoke-virtual {p3, v0, v1, v2, p0}, Lorg/joda/time/a;->m(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a0(Lorg/joda/time/f;JI)Lorg/joda/time/y/n;
    .locals 3

    .line 1
    sget-object v0, Lorg/joda/time/y/n;->W:Lorg/joda/time/k;

    invoke-virtual {v0}, Lorg/joda/time/k;->e()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/joda/time/k;

    invoke-direct {v0, p1, p2}, Lorg/joda/time/k;-><init>(J)V

    move-object p1, v0

    .line 3
    :goto_0
    invoke-static {p0, p1, p3}, Lorg/joda/time/y/n;->c0(Lorg/joda/time/f;Lorg/joda/time/r;I)Lorg/joda/time/y/n;

    move-result-object p0

    return-object p0
.end method

.method public static b0(Lorg/joda/time/f;Lorg/joda/time/r;)Lorg/joda/time/y/n;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0}, Lorg/joda/time/y/n;->c0(Lorg/joda/time/f;Lorg/joda/time/r;I)Lorg/joda/time/y/n;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Lorg/joda/time/f;Lorg/joda/time/r;I)Lorg/joda/time/y/n;
    .locals 4

    .line 1
    invoke-static {p0}, Lorg/joda/time/e;->h(Lorg/joda/time/f;)Lorg/joda/time/f;

    move-result-object p0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lorg/joda/time/y/n;->W:Lorg/joda/time/k;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lorg/joda/time/r;->C()Lorg/joda/time/k;

    move-result-object p1

    .line 4
    new-instance v0, Lorg/joda/time/l;

    invoke-virtual {p1}, Lorg/joda/time/k;->e()J

    move-result-wide v1

    invoke-static {p0}, Lorg/joda/time/y/t;->P0(Lorg/joda/time/f;)Lorg/joda/time/y/t;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/l;-><init>(JLorg/joda/time/a;)V

    .line 5
    invoke-virtual {v0}, Lorg/joda/time/l;->k()I

    move-result v0

    if-lez v0, :cond_3

    .line 6
    :goto_0
    new-instance v0, Lorg/joda/time/y/m;

    invoke-direct {v0, p0, p1, p2}, Lorg/joda/time/y/m;-><init>(Lorg/joda/time/f;Lorg/joda/time/k;I)V

    .line 7
    sget-object v1, Lorg/joda/time/y/n;->X:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/time/y/n;

    if-nez v2, :cond_2

    .line 8
    sget-object v2, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    if-ne p0, v2, :cond_1

    .line 9
    new-instance v2, Lorg/joda/time/y/n;

    invoke-static {p0, p2}, Lorg/joda/time/y/w;->R0(Lorg/joda/time/f;I)Lorg/joda/time/y/w;

    move-result-object v3

    invoke-static {p0, p2}, Lorg/joda/time/y/t;->Q0(Lorg/joda/time/f;I)Lorg/joda/time/y/t;

    move-result-object p0

    invoke-direct {v2, v3, p0, p1}, Lorg/joda/time/y/n;-><init>(Lorg/joda/time/y/w;Lorg/joda/time/y/t;Lorg/joda/time/k;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v2, p1, p2}, Lorg/joda/time/y/n;->c0(Lorg/joda/time/f;Lorg/joda/time/r;I)Lorg/joda/time/y/n;

    move-result-object p1

    .line 11
    new-instance p2, Lorg/joda/time/y/n;

    invoke-static {p1, p0}, Lorg/joda/time/y/y;->Y(Lorg/joda/time/a;Lorg/joda/time/f;)Lorg/joda/time/y/y;

    move-result-object p0

    iget-object v2, p1, Lorg/joda/time/y/n;->R:Lorg/joda/time/y/w;

    iget-object v3, p1, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    iget-object p1, p1, Lorg/joda/time/y/n;->T:Lorg/joda/time/k;

    invoke-direct {p2, p0, v2, v3, p1}, Lorg/joda/time/y/n;-><init>(Lorg/joda/time/a;Lorg/joda/time/y/w;Lorg/joda/time/y/t;Lorg/joda/time/k;)V

    move-object v2, p2

    .line 12
    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/joda/time/y/n;

    if-eqz p0, :cond_2

    move-object v2, p0

    :cond_2
    return-object v2

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cutover too early. Must be on or after 0001-01-01."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d0()Lorg/joda/time/y/n;
    .locals 3

    .line 1
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    sget-object v1, Lorg/joda/time/y/n;->W:Lorg/joda/time/k;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/joda/time/y/n;->c0(Lorg/joda/time/f;Lorg/joda/time/r;I)Lorg/joda/time/y/n;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/n;->o()Lorg/joda/time/f;

    move-result-object v0

    iget-object v1, p0, Lorg/joda/time/y/n;->T:Lorg/joda/time/k;

    invoke-virtual {p0}, Lorg/joda/time/y/n;->e0()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/joda/time/y/n;->c0(Lorg/joda/time/f;Lorg/joda/time/r;I)Lorg/joda/time/y/n;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public M()Lorg/joda/time/a;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    invoke-virtual {p0, v0}, Lorg/joda/time/y/n;->N(Lorg/joda/time/f;)Lorg/joda/time/a;

    move-result-object v0

    return-object v0
.end method

.method public N(Lorg/joda/time/f;)Lorg/joda/time/a;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lorg/joda/time/f;->k()Lorg/joda/time/f;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/y/n;->o()Lorg/joda/time/f;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/joda/time/y/n;->T:Lorg/joda/time/k;

    invoke-virtual {p0}, Lorg/joda/time/y/n;->e0()I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/joda/time/y/n;->c0(Lorg/joda/time/f;Lorg/joda/time/r;I)Lorg/joda/time/y/n;

    move-result-object p1

    return-object p1
.end method

.method protected S(Lorg/joda/time/y/a$a;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->U()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lorg/joda/time/y/w;

    const/4 v1, 0x1

    .line 3
    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lorg/joda/time/y/t;

    const/4 v1, 0x2

    .line 4
    aget-object v0, v0, v1

    check-cast v0, Lorg/joda/time/k;

    .line 5
    invoke-virtual {v0}, Lorg/joda/time/k;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/joda/time/y/n;->U:J

    .line 6
    iput-object v8, p0, Lorg/joda/time/y/n;->R:Lorg/joda/time/y/w;

    .line 7
    iput-object v9, p0, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    .line 8
    iput-object v0, p0, Lorg/joda/time/y/n;->T:Lorg/joda/time/k;

    .line 9
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-virtual {v8}, Lorg/joda/time/y/c;->y0()I

    move-result v0

    invoke-virtual {v9}, Lorg/joda/time/y/c;->y0()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 11
    iget-wide v0, p0, Lorg/joda/time/y/n;->U:J

    invoke-virtual {p0, v0, v1}, Lorg/joda/time/y/n;->i0(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/joda/time/y/n;->V:J

    .line 12
    invoke-virtual {p1, v9}, Lorg/joda/time/y/a$a;->a(Lorg/joda/time/a;)V

    .line 13
    invoke-virtual {v9}, Lorg/joda/time/y/a;->v()Lorg/joda/time/c;

    move-result-object v0

    iget-wide v1, p0, Lorg/joda/time/y/n;->U:J

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/c;->c(J)I

    move-result v0

    if-nez v0, :cond_1

    .line 14
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->w()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->m:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->m:Lorg/joda/time/c;

    .line 15
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->v()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->n:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->n:Lorg/joda/time/c;

    .line 16
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->D()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->o:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->o:Lorg/joda/time/c;

    .line 17
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->C()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->p:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->p:Lorg/joda/time/c;

    .line 18
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->y()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->q:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->q:Lorg/joda/time/c;

    .line 19
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->x()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->r:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->r:Lorg/joda/time/c;

    .line 20
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->r()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->s:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->s:Lorg/joda/time/c;

    .line 21
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->s()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->u:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->u:Lorg/joda/time/c;

    .line 22
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->c()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->t:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->t:Lorg/joda/time/c;

    .line 23
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->d()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->v:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->v:Lorg/joda/time/c;

    .line 24
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->p()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->w:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->w:Lorg/joda/time/c;

    .line 25
    :cond_1
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->i()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->I:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->I:Lorg/joda/time/c;

    .line 26
    new-instance v6, Lorg/joda/time/y/n$b;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->O()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    .line 27
    invoke-virtual {v6}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    .line 28
    new-instance v7, Lorg/joda/time/y/n$b;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->Q()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    iget-object v4, p1, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    iget-wide v5, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;J)V

    iput-object v7, p1, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    .line 29
    new-instance v6, Lorg/joda/time/y/n$b;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->b()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    iput-object v6, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    .line 30
    invoke-virtual {v6}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    .line 31
    new-instance v10, Lorg/joda/time/y/n$b;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->P()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->G:Lorg/joda/time/c;

    iget-object v4, p1, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    iget-object v5, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    iget-wide v6, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/h;J)V

    iput-object v10, p1, Lorg/joda/time/y/a$a;->G:Lorg/joda/time/c;

    .line 32
    new-instance v10, Lorg/joda/time/y/n$b;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->A()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->D:Lorg/joda/time/c;

    const/4 v4, 0x0

    iget-object v5, p1, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    iget-wide v6, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/h;J)V

    iput-object v10, p1, Lorg/joda/time/y/a$a;->D:Lorg/joda/time/c;

    .line 33
    invoke-virtual {v10}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/y/a$a;->i:Lorg/joda/time/h;

    .line 34
    new-instance v10, Lorg/joda/time/y/n$b;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->J()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    iget-wide v5, p0, Lorg/joda/time/y/n;->U:J

    const/4 v7, 0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;JZ)V

    iput-object v10, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    .line 35
    invoke-virtual {v10}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/y/a$a;->h:Lorg/joda/time/h;

    .line 36
    new-instance v10, Lorg/joda/time/y/n$b;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->K()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->C:Lorg/joda/time/c;

    iget-object v4, p1, Lorg/joda/time/y/a$a;->h:Lorg/joda/time/h;

    iget-object v5, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    iget-wide v6, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$b;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/h;J)V

    iput-object v10, p1, Lorg/joda/time/y/a$a;->C:Lorg/joda/time/c;

    .line 37
    invoke-virtual {v9}, Lorg/joda/time/y/a;->O()Lorg/joda/time/c;

    move-result-object v0

    iget-wide v1, p0, Lorg/joda/time/y/n;->U:J

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/c;->B(J)J

    move-result-wide v5

    .line 38
    new-instance v10, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->g()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->z:Lorg/joda/time/c;

    iget-object v4, p1, Lorg/joda/time/y/a$a;->j:Lorg/joda/time/h;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;JZ)V

    iput-object v10, p1, Lorg/joda/time/y/a$a;->z:Lorg/joda/time/c;

    .line 39
    invoke-virtual {v9}, Lorg/joda/time/y/a;->J()Lorg/joda/time/c;

    move-result-object v0

    iget-wide v1, p0, Lorg/joda/time/y/n;->U:J

    invoke-virtual {v0, v1, v2}, Lorg/joda/time/c;->B(J)J

    move-result-wide v5

    .line 40
    new-instance v9, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->H()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->A:Lorg/joda/time/c;

    iget-object v4, p1, Lorg/joda/time/y/a$a;->h:Lorg/joda/time/h;

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;Lorg/joda/time/h;JZ)V

    iput-object v9, p1, Lorg/joda/time/y/a$a;->A:Lorg/joda/time/c;

    .line 41
    new-instance v6, Lorg/joda/time/y/n$a;

    invoke-virtual {v8}, Lorg/joda/time/y/a;->e()Lorg/joda/time/c;

    move-result-object v2

    iget-object v3, p1, Lorg/joda/time/y/a$a;->y:Lorg/joda/time/c;

    iget-wide v4, p0, Lorg/joda/time/y/n;->U:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/joda/time/y/n$a;-><init>(Lorg/joda/time/y/n;Lorg/joda/time/c;Lorg/joda/time/c;J)V

    .line 42
    iget-object v0, p1, Lorg/joda/time/y/a$a;->i:Lorg/joda/time/h;

    iput-object v0, v6, Lorg/joda/time/y/n$a;->g:Lorg/joda/time/h;

    .line 43
    iput-object v6, p1, Lorg/joda/time/y/a$a;->y:Lorg/joda/time/c;

    return-void

    .line 44
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public e0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    invoke-virtual {v0}, Lorg/joda/time/y/c;->y0()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/joda/time/y/n;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lorg/joda/time/y/n;

    .line 3
    iget-wide v3, p0, Lorg/joda/time/y/n;->U:J

    iget-wide v5, p1, Lorg/joda/time/y/n;->U:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/y/n;->e0()I

    move-result v1

    invoke-virtual {p1}, Lorg/joda/time/y/n;->e0()I

    move-result v3

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lorg/joda/time/y/n;->o()Lorg/joda/time/f;

    move-result-object v1

    invoke-virtual {p1}, Lorg/joda/time/y/n;->o()Lorg/joda/time/f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/joda/time/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method f0(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    iget-object v1, p0, Lorg/joda/time/y/n;->R:Lorg/joda/time/y/w;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/y/n;->Y(JLorg/joda/time/a;Lorg/joda/time/a;)J

    move-result-wide p1

    return-wide p1
.end method

.method g0(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    iget-object v1, p0, Lorg/joda/time/y/n;->R:Lorg/joda/time/y/w;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/y/n;->Z(JLorg/joda/time/a;Lorg/joda/time/a;)J

    move-result-wide p1

    return-wide p1
.end method

.method h0(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n;->R:Lorg/joda/time/y/w;

    iget-object v1, p0, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/y/n;->Y(JLorg/joda/time/a;Lorg/joda/time/a;)J

    move-result-wide p1

    return-wide p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/n;->o()Lorg/joda/time/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/f;->hashCode()I

    move-result v0

    const/16 v1, 0x61c1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/joda/time/y/n;->e0()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/joda/time/y/n;->T:Lorg/joda/time/k;

    invoke-virtual {v0}, Lorg/joda/time/x/b;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method i0(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/joda/time/y/n;->R:Lorg/joda/time/y/w;

    iget-object v1, p0, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    invoke-static {p1, p2, v0, v1}, Lorg/joda/time/y/n;->Z(JLorg/joda/time/a;Lorg/joda/time/a;)J

    move-result-wide p1

    return-wide p1
.end method

.method public m(IIII)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/a;->m(IIII)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/y/c;->m(IIII)J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lorg/joda/time/y/n;->U:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 5
    iget-object v0, p0, Lorg/joda/time/y/n;->R:Lorg/joda/time/y/w;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/y/c;->m(IIII)J

    move-result-wide v0

    .line 6
    iget-wide p1, p0, Lorg/joda/time/y/n;->U:J

    cmp-long p3, v0, p1

    if-gez p3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Specified date does not exist"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-wide v0
.end method

.method public n(IIIIIII)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v1, p0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v2

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2
    invoke-virtual/range {v2 .. v9}, Lorg/joda/time/a;->n(IIIIIII)J

    move-result-wide v2

    return-wide v2

    .line 3
    :cond_0
    :try_start_0
    iget-object v4, v1, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lorg/joda/time/y/c;->n(IIIIIII)J

    move-result-wide v2
    :try_end_0
    .catch Lorg/joda/time/IllegalFieldValueException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, p2

    move/from16 v12, p3

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    move v11, p2

    if-ne v11, v2, :cond_4

    const/16 v2, 0x1d

    move/from16 v12, p3

    if-ne v12, v2, :cond_4

    .line 4
    iget-object v3, v1, Lorg/joda/time/y/n;->S:Lorg/joda/time/y/t;

    const/16 v6, 0x1c

    move v4, p1

    move v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lorg/joda/time/y/c;->n(IIIIIII)J

    move-result-wide v2

    .line 5
    iget-wide v4, v1, Lorg/joda/time/y/n;->U:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 6
    :goto_0
    iget-wide v4, v1, Lorg/joda/time/y/n;->U:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 7
    iget-object v3, v1, Lorg/joda/time/y/n;->R:Lorg/joda/time/y/w;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lorg/joda/time/y/c;->n(IIIIIII)J

    move-result-wide v2

    .line 8
    iget-wide v4, v1, Lorg/joda/time/y/n;->U:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Specified date does not exist"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-wide v2

    .line 10
    :cond_3
    throw v0

    .line 11
    :cond_4
    throw v0
.end method

.method public o()Lorg/joda/time/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lorg/joda/time/a;->o()Lorg/joda/time/f;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "GJChronology"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x5b

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {p0}, Lorg/joda/time/y/n;->o()Lorg/joda/time/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    iget-wide v1, p0, Lorg/joda/time/y/n;->U:J

    sget-object v3, Lorg/joda/time/y/n;->W:Lorg/joda/time/k;

    invoke-virtual {v3}, Lorg/joda/time/k;->e()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const-string v1, ",cutover="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {p0}, Lorg/joda/time/y/n;->M()Lorg/joda/time/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/joda/time/a;->g()Lorg/joda/time/c;

    move-result-object v1

    iget-wide v2, p0, Lorg/joda/time/y/n;->U:J

    invoke-virtual {v1, v2, v3}, Lorg/joda/time/c;->A(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 8
    invoke-static {}, Lorg/joda/time/b0/j;->a()Lorg/joda/time/b0/b;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lorg/joda/time/b0/j;->b()Lorg/joda/time/b0/b;

    move-result-object v1

    .line 10
    :goto_0
    invoke-virtual {p0}, Lorg/joda/time/y/n;->M()Lorg/joda/time/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/joda/time/b0/b;->q(Lorg/joda/time/a;)Lorg/joda/time/b0/b;

    move-result-object v1

    iget-wide v2, p0, Lorg/joda/time/y/n;->U:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/joda/time/b0/b;->m(Ljava/lang/StringBuffer;J)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lorg/joda/time/y/n;->e0()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const-string v1, ",mdfw="

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    invoke-virtual {p0}, Lorg/joda/time/y/n;->e0()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v1, 0x5d

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
