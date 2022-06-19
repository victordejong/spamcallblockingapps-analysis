.class public final Lw3/b/a/f0/t;
.super Lw3/b/a/f0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/f0/t$a;
    }
.end annotation


# static fields
.field public static final Q:Lw3/b/a/f0/t;

.field public static final R:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lw3/b/a/g;",
            "Lw3/b/a/f0/t;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lw3/b/a/f0/t;->R:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    new-instance v1, Lw3/b/a/f0/t;

    .line 3
    sget-object v2, Lw3/b/a/f0/s;->t0:Lw3/b/a/f0/s;

    .line 4
    invoke-direct {v1, v2}, Lw3/b/a/f0/t;-><init>(Lw3/b/a/a;)V

    sput-object v1, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 5
    sget-object v2, Lw3/b/a/g;->b:Lw3/b/a/g;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lw3/b/a/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lw3/b/a/f0/a;-><init>(Lw3/b/a/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static Y()Lw3/b/a/f0/t;
    .locals 1

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object v0

    invoke-static {v0}, Lw3/b/a/f0/t;->Z(Lw3/b/a/g;)Lw3/b/a/f0/t;

    move-result-object v0

    return-object v0
.end method

.method public static Z(Lw3/b/a/g;)Lw3/b/a/f0/t;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p0

    .line 2
    :cond_0
    sget-object v0, Lw3/b/a/f0/t;->R:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/b/a/f0/t;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lw3/b/a/f0/t;

    sget-object v2, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    invoke-static {v2, p0}, Lw3/b/a/f0/x;->a0(Lw3/b/a/a;Lw3/b/a/g;)Lw3/b/a/f0/x;

    move-result-object v2

    invoke-direct {v1, v2}, Lw3/b/a/f0/t;-><init>(Lw3/b/a/a;)V

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw3/b/a/f0/t;

    if-eqz p0, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/f0/t$a;

    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lw3/b/a/f0/t$a;-><init>(Lw3/b/a/g;)V

    return-object v0
.end method


# virtual methods
.method public Q()Lw3/b/a/a;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    return-object v0
.end method

.method public R(Lw3/b/a/g;)Lw3/b/a/a;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-static {p1}, Lw3/b/a/f0/t;->Z(Lw3/b/a/g;)Lw3/b/a/f0/t;

    move-result-object p1

    return-object p1
.end method

.method public W(Lw3/b/a/f0/a$a;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/a;->a:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->s()Lw3/b/a/g;

    move-result-object v0

    sget-object v1, Lw3/b/a/g;->b:Lw3/b/a/g;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lw3/b/a/h0/g;

    sget-object v1, Lw3/b/a/f0/u;->c:Lw3/b/a/c;

    sget-object v2, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v2, Lw3/b/a/d;->d:Lw3/b/a/d;

    const/16 v3, 0x64

    .line 4
    invoke-virtual {v1}, Lw3/b/a/c;->v()Lw3/b/a/j;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Lw3/b/a/h0/g;-><init>(Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/d;I)V

    .line 5
    iput-object v0, p1, Lw3/b/a/f0/a$a;->H:Lw3/b/a/c;

    .line 6
    iget-object v1, v0, Lw3/b/a/h0/g;->d:Lw3/b/a/j;

    .line 7
    iput-object v1, p1, Lw3/b/a/f0/a$a;->k:Lw3/b/a/j;

    .line 8
    new-instance v1, Lw3/b/a/h0/n;

    check-cast v0, Lw3/b/a/h0/g;

    sget-object v2, Lw3/b/a/d;->e:Lw3/b/a/d;

    invoke-direct {v1, v0, v2}, Lw3/b/a/h0/n;-><init>(Lw3/b/a/h0/g;Lw3/b/a/d;)V

    iput-object v1, p1, Lw3/b/a/f0/a$a;->G:Lw3/b/a/c;

    .line 9
    new-instance v0, Lw3/b/a/h0/n;

    iget-object v1, p1, Lw3/b/a/f0/a$a;->H:Lw3/b/a/c;

    check-cast v1, Lw3/b/a/h0/g;

    iget-object v2, p1, Lw3/b/a/f0/a$a;->h:Lw3/b/a/j;

    sget-object v3, Lw3/b/a/d;->j:Lw3/b/a/d;

    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/h0/n;-><init>(Lw3/b/a/h0/g;Lw3/b/a/j;Lw3/b/a/d;)V

    iput-object v0, p1, Lw3/b/a/f0/a$a;->C:Lw3/b/a/c;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lw3/b/a/f0/t;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lw3/b/a/f0/t;

    .line 3
    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v0

    invoke-virtual {p1}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Lw3/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lw3/b/a/g;->hashCode()I

    move-result v0

    const v1, 0xc3857

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/a;->s()Lw3/b/a/g;

    move-result-object v0

    const-string v1, "ISOChronology"

    if-eqz v0, :cond_0

    const/16 v2, 0x5b

    .line 2
    invoke-static {v1, v2}, Le/d/c/a/a;->D(Ljava/lang/String;C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3
    iget-object v0, v0, Lw3/b/a/g;->a:Ljava/lang/String;

    const/16 v2, 0x5d

    .line 4
    invoke-static {v1, v0, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method
