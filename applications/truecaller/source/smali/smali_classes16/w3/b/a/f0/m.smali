.class public final Lw3/b/a/f0/m;
.super Lw3/b/a/f0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/f0/m$c;,
        Lw3/b/a/f0/m$b;,
        Lw3/b/a/f0/m$a;
    }
.end annotation


# static fields
.field public static final V:Lw3/b/a/n;

.field public static final W:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lw3/b/a/f0/l;",
            "Lw3/b/a/f0/m;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Q:Lw3/b/a/f0/v;

.field public R:Lw3/b/a/f0/s;

.field public S:Lw3/b/a/n;

.field public T:J

.field public U:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lw3/b/a/n;

    const-wide v1, -0xb1d069b5400L

    invoke-direct {v0, v1, v2}, Lw3/b/a/n;-><init>(J)V

    sput-object v0, Lw3/b/a/f0/m;->V:Lw3/b/a/n;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lw3/b/a/f0/m;->W:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lw3/b/a/a;Lw3/b/a/f0/v;Lw3/b/a/f0/s;Lw3/b/a/n;)V
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
    invoke-direct {p0, p1, v0}, Lw3/b/a/f0/a;-><init>(Lw3/b/a/a;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lw3/b/a/f0/v;Lw3/b/a/f0/s;Lw3/b/a/n;)V
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
    invoke-direct {p0, p1, v0}, Lw3/b/a/f0/a;-><init>(Lw3/b/a/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static Y(JLw3/b/a/a;Lw3/b/a/a;)J
    .locals 4

    .line 1
    move-object v0, p3

    check-cast v0, Lw3/b/a/f0/a;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->D:Lw3/b/a/c;

    .line 3
    move-object v1, p2

    check-cast v1, Lw3/b/a/f0/a;

    .line 4
    iget-object v1, v1, Lw3/b/a/f0/a;->D:Lw3/b/a/c;

    .line 5
    invoke-virtual {v1, p0, p1}, Lw3/b/a/c;->c(J)I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lw3/b/a/c;->C(JI)J

    move-result-wide v0

    .line 6
    check-cast p3, Lw3/b/a/f0/a;

    .line 7
    iget-object v2, p3, Lw3/b/a/f0/a;->C:Lw3/b/a/c;

    .line 8
    check-cast p2, Lw3/b/a/f0/a;

    .line 9
    iget-object v3, p2, Lw3/b/a/f0/a;->C:Lw3/b/a/c;

    .line 10
    invoke-virtual {v3, p0, p1}, Lw3/b/a/c;->c(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lw3/b/a/c;->C(JI)J

    move-result-wide v0

    .line 11
    iget-object v2, p3, Lw3/b/a/f0/a;->z:Lw3/b/a/c;

    iget-object v3, p2, Lw3/b/a/f0/a;->z:Lw3/b/a/c;

    .line 12
    invoke-virtual {v3, p0, p1}, Lw3/b/a/c;->c(J)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lw3/b/a/c;->C(JI)J

    move-result-wide v0

    .line 13
    iget-object p3, p3, Lw3/b/a/f0/a;->p:Lw3/b/a/c;

    iget-object p2, p2, Lw3/b/a/f0/a;->p:Lw3/b/a/c;

    .line 14
    invoke-virtual {p2, p0, p1}, Lw3/b/a/c;->c(J)I

    move-result p0

    invoke-virtual {p3, v0, v1, p0}, Lw3/b/a/c;->C(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static Z(JLw3/b/a/a;Lw3/b/a/a;)J
    .locals 3

    .line 1
    move-object v0, p2

    check-cast v0, Lw3/b/a/f0/a;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p0, p1}, Lw3/b/a/c;->c(J)I

    move-result v0

    check-cast p2, Lw3/b/a/f0/a;

    .line 4
    iget-object v1, p2, Lw3/b/a/f0/a;->J:Lw3/b/a/c;

    .line 5
    invoke-virtual {v1, p0, p1}, Lw3/b/a/c;->c(J)I

    move-result v1

    .line 6
    iget-object v2, p2, Lw3/b/a/f0/a;->A:Lw3/b/a/c;

    .line 7
    invoke-virtual {v2, p0, p1}, Lw3/b/a/c;->c(J)I

    move-result v2

    .line 8
    iget-object p2, p2, Lw3/b/a/f0/a;->p:Lw3/b/a/c;

    .line 9
    invoke-virtual {p2, p0, p1}, Lw3/b/a/c;->c(J)I

    move-result p0

    invoke-virtual {p3, v0, v1, v2, p0}, Lw3/b/a/a;->p(IIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static a0(Lw3/b/a/g;Lw3/b/a/z;I)Lw3/b/a/f0/m;
    .locals 4

    .line 1
    invoke-static {p0}, Lw3/b/a/e;->d(Lw3/b/a/g;)Lw3/b/a/g;

    move-result-object p0

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lw3/b/a/f0/m;->V:Lw3/b/a/n;

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lw3/b/a/z;->S1()Lw3/b/a/n;

    move-result-object p1

    .line 4
    new-instance v0, Lw3/b/a/p;

    .line 5
    iget-wide v1, p1, Lw3/b/a/n;->a:J

    .line 6
    invoke-static {p0}, Lw3/b/a/f0/s;->E0(Lw3/b/a/g;)Lw3/b/a/f0/s;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V

    .line 7
    invoke-virtual {v0}, Lw3/b/a/p;->f()I

    move-result v0

    if-lez v0, :cond_3

    .line 8
    :goto_0
    new-instance v0, Lw3/b/a/f0/l;

    invoke-direct {v0, p0, p1, p2}, Lw3/b/a/f0/l;-><init>(Lw3/b/a/g;Lw3/b/a/n;I)V

    .line 9
    sget-object v1, Lw3/b/a/f0/m;->W:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw3/b/a/f0/m;

    if-nez v2, :cond_2

    .line 10
    sget-object v2, Lw3/b/a/g;->b:Lw3/b/a/g;

    if-ne p0, v2, :cond_1

    .line 11
    new-instance v2, Lw3/b/a/f0/m;

    invoke-static {p0, p2}, Lw3/b/a/f0/v;->F0(Lw3/b/a/g;I)Lw3/b/a/f0/v;

    move-result-object v3

    invoke-static {p0, p2}, Lw3/b/a/f0/s;->F0(Lw3/b/a/g;I)Lw3/b/a/f0/s;

    move-result-object p0

    invoke-direct {v2, v3, p0, p1}, Lw3/b/a/f0/m;-><init>(Lw3/b/a/f0/v;Lw3/b/a/f0/s;Lw3/b/a/n;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {v2, p1, p2}, Lw3/b/a/f0/m;->a0(Lw3/b/a/g;Lw3/b/a/z;I)Lw3/b/a/f0/m;

    move-result-object p1

    .line 13
    new-instance p2, Lw3/b/a/f0/m;

    invoke-static {p1, p0}, Lw3/b/a/f0/x;->a0(Lw3/b/a/a;Lw3/b/a/g;)Lw3/b/a/f0/x;

    move-result-object p0

    iget-object v2, p1, Lw3/b/a/f0/m;->Q:Lw3/b/a/f0/v;

    iget-object v3, p1, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    iget-object p1, p1, Lw3/b/a/f0/m;->S:Lw3/b/a/n;

    invoke-direct {p2, p0, v2, v3, p1}, Lw3/b/a/f0/m;-><init>(Lw3/b/a/a;Lw3/b/a/f0/v;Lw3/b/a/f0/s;Lw3/b/a/n;)V

    move-object v2, p2

    .line 14
    :goto_1
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/b/a/f0/m;

    if-eqz p0, :cond_2

    move-object v2, p0

    :cond_2
    return-object v2

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cutover too early. Must be on or after 0001-01-01."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/m;->s()Lw3/b/a/g;

    move-result-object v0

    iget-object v1, p0, Lw3/b/a/f0/m;->S:Lw3/b/a/n;

    .line 2
    iget-object v2, p0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 3
    iget v2, v2, Lw3/b/a/f0/c;->R:I

    .line 4
    invoke-static {v0, v1, v2}, Lw3/b/a/f0/m;->a0(Lw3/b/a/g;Lw3/b/a/z;I)Lw3/b/a/f0/m;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Q()Lw3/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    invoke-virtual {p0, v0}, Lw3/b/a/f0/m;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public R(Lw3/b/a/g;)Lw3/b/a/a;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lw3/b/a/f0/m;->s()Lw3/b/a/g;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    iget-object v0, p0, Lw3/b/a/f0/m;->S:Lw3/b/a/n;

    .line 4
    iget-object v1, p0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 5
    iget v1, v1, Lw3/b/a/f0/c;->R:I

    .line 6
    invoke-static {p1, v0, v1}, Lw3/b/a/f0/m;->a0(Lw3/b/a/g;Lw3/b/a/z;I)Lw3/b/a/f0/m;

    move-result-object p1

    return-object p1
.end method

.method public W(Lw3/b/a/f0/a$a;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    aget-object v1, v0, v1

    move-object v8, v1

    check-cast v8, Lw3/b/a/f0/v;

    const/4 v1, 0x1

    .line 4
    aget-object v1, v0, v1

    move-object v9, v1

    check-cast v9, Lw3/b/a/f0/s;

    const/4 v1, 0x2

    .line 5
    aget-object v0, v0, v1

    check-cast v0, Lw3/b/a/n;

    .line 6
    iget-wide v1, v0, Lw3/b/a/n;->a:J

    .line 7
    iput-wide v1, p0, Lw3/b/a/f0/m;->T:J

    .line 8
    iput-object v8, p0, Lw3/b/a/f0/m;->Q:Lw3/b/a/f0/v;

    .line 9
    iput-object v9, p0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 10
    iput-object v0, p0, Lw3/b/a/f0/m;->S:Lw3/b/a/n;

    .line 11
    iget-object v0, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget v0, v8, Lw3/b/a/f0/c;->R:I

    iget v3, v9, Lw3/b/a/f0/c;->R:I

    if-ne v0, v3, :cond_2

    .line 13
    invoke-static {v1, v2, v8, v9}, Lw3/b/a/f0/m;->Z(JLw3/b/a/a;Lw3/b/a/a;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 14
    iput-wide v1, p0, Lw3/b/a/f0/m;->U:J

    .line 15
    invoke-virtual {p1, v9}, Lw3/b/a/f0/a$a;->a(Lw3/b/a/a;)V

    .line 16
    iget-object v0, v9, Lw3/b/a/f0/a;->p:Lw3/b/a/c;

    .line 17
    iget-wide v1, p0, Lw3/b/a/f0/m;->T:J

    invoke-virtual {v0, v1, v2}, Lw3/b/a/c;->c(J)I

    move-result v0

    if-nez v0, :cond_1

    .line 18
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 19
    iget-object v2, v8, Lw3/b/a/f0/a;->o:Lw3/b/a/c;

    .line 20
    iget-object v3, p1, Lw3/b/a/f0/a$a;->m:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->m:Lw3/b/a/c;

    .line 21
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 22
    iget-object v2, v8, Lw3/b/a/f0/a;->p:Lw3/b/a/c;

    .line 23
    iget-object v3, p1, Lw3/b/a/f0/a$a;->n:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->n:Lw3/b/a/c;

    .line 24
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 25
    iget-object v2, v8, Lw3/b/a/f0/a;->q:Lw3/b/a/c;

    .line 26
    iget-object v3, p1, Lw3/b/a/f0/a$a;->o:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->o:Lw3/b/a/c;

    .line 27
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 28
    iget-object v2, v8, Lw3/b/a/f0/a;->r:Lw3/b/a/c;

    .line 29
    iget-object v3, p1, Lw3/b/a/f0/a$a;->p:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->p:Lw3/b/a/c;

    .line 30
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 31
    iget-object v2, v8, Lw3/b/a/f0/a;->s:Lw3/b/a/c;

    .line 32
    iget-object v3, p1, Lw3/b/a/f0/a$a;->q:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->q:Lw3/b/a/c;

    .line 33
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 34
    iget-object v2, v8, Lw3/b/a/f0/a;->t:Lw3/b/a/c;

    .line 35
    iget-object v3, p1, Lw3/b/a/f0/a$a;->r:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->r:Lw3/b/a/c;

    .line 36
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 37
    iget-object v2, v8, Lw3/b/a/f0/a;->u:Lw3/b/a/c;

    .line 38
    iget-object v3, p1, Lw3/b/a/f0/a$a;->s:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->s:Lw3/b/a/c;

    .line 39
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 40
    iget-object v2, v8, Lw3/b/a/f0/a;->w:Lw3/b/a/c;

    .line 41
    iget-object v3, p1, Lw3/b/a/f0/a$a;->u:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->u:Lw3/b/a/c;

    .line 42
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 43
    iget-object v2, v8, Lw3/b/a/f0/a;->v:Lw3/b/a/c;

    .line 44
    iget-object v3, p1, Lw3/b/a/f0/a$a;->t:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->t:Lw3/b/a/c;

    .line 45
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 46
    iget-object v2, v8, Lw3/b/a/f0/a;->x:Lw3/b/a/c;

    .line 47
    iget-object v3, p1, Lw3/b/a/f0/a$a;->v:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->v:Lw3/b/a/c;

    .line 48
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 49
    iget-object v2, v8, Lw3/b/a/f0/a;->y:Lw3/b/a/c;

    .line 50
    iget-object v3, p1, Lw3/b/a/f0/a$a;->w:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->w:Lw3/b/a/c;

    .line 51
    :cond_1
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 52
    iget-object v2, v8, Lw3/b/a/f0/a;->O:Lw3/b/a/c;

    .line 53
    iget-object v3, p1, Lw3/b/a/f0/a$a;->I:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    iput-object v6, p1, Lw3/b/a/f0/a$a;->I:Lw3/b/a/c;

    .line 54
    new-instance v10, Lw3/b/a/f0/m$b;

    .line 55
    iget-object v2, v8, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 56
    iget-object v3, p1, Lw3/b/a/f0/a$a;->E:Lw3/b/a/c;

    iget-wide v5, p0, Lw3/b/a/f0/m;->T:J

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    .line 57
    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$b;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V

    .line 58
    iput-object v10, p1, Lw3/b/a/f0/a$a;->E:Lw3/b/a/c;

    .line 59
    iget-object v4, v10, Lw3/b/a/f0/m$a;->f:Lw3/b/a/j;

    .line 60
    iput-object v4, p1, Lw3/b/a/f0/a$a;->j:Lw3/b/a/j;

    .line 61
    new-instance v10, Lw3/b/a/f0/m$b;

    .line 62
    iget-object v2, v8, Lw3/b/a/f0/a;->L:Lw3/b/a/c;

    .line 63
    iget-object v3, p1, Lw3/b/a/f0/a$a;->F:Lw3/b/a/c;

    iget-wide v5, p0, Lw3/b/a/f0/m;->T:J

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    .line 64
    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$b;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V

    .line 65
    iput-object v10, p1, Lw3/b/a/f0/a$a;->F:Lw3/b/a/c;

    .line 66
    new-instance v10, Lw3/b/a/f0/m$b;

    .line 67
    iget-object v2, v8, Lw3/b/a/f0/a;->N:Lw3/b/a/c;

    .line 68
    iget-object v3, p1, Lw3/b/a/f0/a$a;->H:Lw3/b/a/c;

    iget-wide v5, p0, Lw3/b/a/f0/m;->T:J

    const/4 v4, 0x0

    move-object v0, v10

    .line 69
    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$b;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V

    .line 70
    iput-object v10, p1, Lw3/b/a/f0/a$a;->H:Lw3/b/a/c;

    .line 71
    iget-object v5, v10, Lw3/b/a/f0/m$a;->f:Lw3/b/a/j;

    .line 72
    iput-object v5, p1, Lw3/b/a/f0/a$a;->k:Lw3/b/a/j;

    .line 73
    new-instance v10, Lw3/b/a/f0/m$b;

    .line 74
    iget-object v2, v8, Lw3/b/a/f0/a;->M:Lw3/b/a/c;

    .line 75
    iget-object v3, p1, Lw3/b/a/f0/a$a;->G:Lw3/b/a/c;

    iget-object v4, p1, Lw3/b/a/f0/a$a;->j:Lw3/b/a/j;

    iget-wide v6, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$b;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/j;J)V

    iput-object v10, p1, Lw3/b/a/f0/a$a;->G:Lw3/b/a/c;

    .line 76
    new-instance v10, Lw3/b/a/f0/m$b;

    .line 77
    iget-object v2, v8, Lw3/b/a/f0/a;->J:Lw3/b/a/c;

    .line 78
    iget-object v3, p1, Lw3/b/a/f0/a$a;->D:Lw3/b/a/c;

    const/4 v4, 0x0

    iget-object v5, p1, Lw3/b/a/f0/a$a;->j:Lw3/b/a/j;

    iget-wide v6, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$b;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/j;J)V

    iput-object v10, p1, Lw3/b/a/f0/a$a;->D:Lw3/b/a/c;

    .line 79
    iget-object v0, v10, Lw3/b/a/f0/m$a;->f:Lw3/b/a/j;

    .line 80
    iput-object v0, p1, Lw3/b/a/f0/a$a;->i:Lw3/b/a/j;

    .line 81
    new-instance v10, Lw3/b/a/f0/m$b;

    .line 82
    iget-object v2, v8, Lw3/b/a/f0/a;->D:Lw3/b/a/c;

    .line 83
    iget-object v3, p1, Lw3/b/a/f0/a$a;->B:Lw3/b/a/c;

    const/4 v4, 0x0

    iget-wide v5, p0, Lw3/b/a/f0/m;->T:J

    const/4 v7, 0x1

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$b;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V

    iput-object v10, p1, Lw3/b/a/f0/a$a;->B:Lw3/b/a/c;

    .line 84
    iget-object v4, v10, Lw3/b/a/f0/m$a;->f:Lw3/b/a/j;

    .line 85
    iput-object v4, p1, Lw3/b/a/f0/a$a;->h:Lw3/b/a/j;

    .line 86
    new-instance v10, Lw3/b/a/f0/m$b;

    .line 87
    iget-object v2, v8, Lw3/b/a/f0/a;->E:Lw3/b/a/c;

    .line 88
    iget-object v3, p1, Lw3/b/a/f0/a$a;->C:Lw3/b/a/c;

    iget-object v5, p1, Lw3/b/a/f0/a$a;->k:Lw3/b/a/j;

    iget-wide v6, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$b;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/j;J)V

    iput-object v10, p1, Lw3/b/a/f0/a$a;->C:Lw3/b/a/c;

    .line 89
    iget-object v0, v9, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 90
    iget-wide v1, p0, Lw3/b/a/f0/m;->T:J

    invoke-virtual {v0, v1, v2}, Lw3/b/a/c;->A(J)J

    move-result-wide v5

    .line 91
    new-instance v10, Lw3/b/a/f0/m$a;

    .line 92
    iget-object v2, v8, Lw3/b/a/f0/a;->B:Lw3/b/a/c;

    .line 93
    iget-object v3, p1, Lw3/b/a/f0/a$a;->z:Lw3/b/a/c;

    iget-object v4, p1, Lw3/b/a/f0/a$a;->j:Lw3/b/a/j;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V

    iput-object v10, p1, Lw3/b/a/f0/a$a;->z:Lw3/b/a/c;

    .line 94
    iget-object v0, v9, Lw3/b/a/f0/a;->D:Lw3/b/a/c;

    .line 95
    iget-wide v1, p0, Lw3/b/a/f0/m;->T:J

    invoke-virtual {v0, v1, v2}, Lw3/b/a/c;->A(J)J

    move-result-wide v5

    .line 96
    new-instance v9, Lw3/b/a/f0/m$a;

    .line 97
    iget-object v2, v8, Lw3/b/a/f0/a;->C:Lw3/b/a/c;

    .line 98
    iget-object v3, p1, Lw3/b/a/f0/a$a;->A:Lw3/b/a/c;

    iget-object v4, p1, Lw3/b/a/f0/a$a;->h:Lw3/b/a/j;

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;Lw3/b/a/j;JZ)V

    iput-object v9, p1, Lw3/b/a/f0/a$a;->A:Lw3/b/a/c;

    .line 99
    new-instance v6, Lw3/b/a/f0/m$a;

    .line 100
    iget-object v2, v8, Lw3/b/a/f0/a;->A:Lw3/b/a/c;

    .line 101
    iget-object v3, p1, Lw3/b/a/f0/a$a;->y:Lw3/b/a/c;

    iget-wide v4, p0, Lw3/b/a/f0/m;->T:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lw3/b/a/f0/m$a;-><init>(Lw3/b/a/f0/m;Lw3/b/a/c;Lw3/b/a/c;J)V

    .line 102
    iget-object v0, p1, Lw3/b/a/f0/a$a;->i:Lw3/b/a/j;

    iput-object v0, v6, Lw3/b/a/f0/m$a;->g:Lw3/b/a/j;

    .line 103
    iput-object v6, p1, Lw3/b/a/f0/a$a;->y:Lw3/b/a/c;

    return-void

    .line 104
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/f0/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2
    check-cast p1, Lw3/b/a/f0/m;

    .line 3
    iget-wide v3, p0, Lw3/b/a/f0/m;->T:J

    iget-wide v5, p1, Lw3/b/a/f0/m;->T:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 5
    iget v1, v1, Lw3/b/a/f0/c;->R:I

    .line 6
    iget-object v3, p1, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 7
    iget v3, v3, Lw3/b/a/f0/c;->R:I

    if-ne v1, v3, :cond_1

    .line 8
    invoke-virtual {p0}, Lw3/b/a/f0/m;->s()Lw3/b/a/g;

    move-result-object v1

    invoke-virtual {p1}, Lw3/b/a/f0/m;->s()Lw3/b/a/g;

    move-result-object p1

    invoke-virtual {v1, p1}, Lw3/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/m;->s()Lw3/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lw3/b/a/g;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x61c1

    .line 2
    iget-object v1, p0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 3
    iget v1, v1, Lw3/b/a/f0/c;->R:I

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lw3/b/a/f0/m;->S:Lw3/b/a/n;

    invoke-virtual {v1}, Lw3/b/a/e0/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public p(IIII)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/a;->p(IIII)J

    move-result-wide p1

    return-wide p1

    .line 3
    :cond_0
    iget-object v0, p0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/f0/c;->p(IIII)J

    move-result-wide v0

    .line 4
    iget-wide v2, p0, Lw3/b/a/f0/m;->T:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 5
    iget-object v0, p0, Lw3/b/a/f0/m;->Q:Lw3/b/a/f0/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/f0/c;->p(IIII)J

    move-result-wide v0

    .line 6
    iget-wide p1, p0, Lw3/b/a/f0/m;->T:J

    cmp-long p1, v0, p1

    if-gez p1, :cond_1

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

.method public q(IIIIIII)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v1, p0

    .line 1
    iget-object v2, v1, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 2
    invoke-virtual/range {v2 .. v9}, Lw3/b/a/a;->q(IIIIIII)J

    move-result-wide v2

    return-wide v2

    .line 3
    :cond_0
    :try_start_0
    iget-object v4, v1, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lw3/b/a/f0/c;->q(IIIIIII)J

    move-result-wide v2
    :try_end_0
    .catch Lw3/b/a/l; {:try_start_0 .. :try_end_0} :catch_0

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
    iget-object v3, v1, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    const/16 v6, 0x1c

    move v4, p1

    move v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lw3/b/a/f0/c;->q(IIIIIII)J

    move-result-wide v2

    .line 5
    iget-wide v4, v1, Lw3/b/a/f0/m;->T:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 6
    :goto_0
    iget-wide v4, v1, Lw3/b/a/f0/m;->T:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 7
    iget-object v3, v1, Lw3/b/a/f0/m;->Q:Lw3/b/a/f0/v;

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lw3/b/a/f0/c;->q(IIIIIII)J

    move-result-wide v2

    .line 8
    iget-wide v4, v1, Lw3/b/a/f0/m;->T:J

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

.method public s()Lw3/b/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->s()Lw3/b/a/g;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

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
    invoke-virtual {p0}, Lw3/b/a/f0/m;->s()Lw3/b/a/g;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget-wide v1, p0, Lw3/b/a/f0/m;->T:J

    const-wide v3, -0xb1d069b5400L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const-string v1, ",cutover="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {p0}, Lw3/b/a/f0/m;->Q()Lw3/b/a/a;

    move-result-object v1

    check-cast v1, Lw3/b/a/f0/a;

    .line 10
    iget-object v1, v1, Lw3/b/a/f0/a;->B:Lw3/b/a/c;

    .line 11
    iget-wide v2, p0, Lw3/b/a/f0/m;->T:J

    invoke-virtual {v1, v2, v3}, Lw3/b/a/c;->z(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 12
    sget-object v1, Lw3/b/a/i0/i;->o:Lw3/b/a/i0/b;

    goto :goto_0

    .line 13
    :cond_0
    sget-object v1, Lw3/b/a/i0/i;->E:Lw3/b/a/i0/b;

    .line 14
    :goto_0
    invoke-virtual {p0}, Lw3/b/a/f0/m;->Q()Lw3/b/a/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lw3/b/a/i0/b;->l(Lw3/b/a/a;)Lw3/b/a/i0/b;

    move-result-object v1

    iget-wide v2, p0, Lw3/b/a/f0/m;->T:J

    const/4 v4, 0x0

    .line 15
    :try_start_0
    invoke-virtual {v1, v0, v2, v3, v4}, Lw3/b/a/i0/b;->h(Ljava/lang/Appendable;JLw3/b/a/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    :cond_1
    iget-object v1, p0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 17
    iget v1, v1, Lw3/b/a/f0/c;->R:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const-string v1, ",mdfw="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    iget-object v1, p0, Lw3/b/a/f0/m;->R:Lw3/b/a/f0/s;

    .line 20
    iget v1, v1, Lw3/b/a/f0/c;->R:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v1, 0x5d

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
