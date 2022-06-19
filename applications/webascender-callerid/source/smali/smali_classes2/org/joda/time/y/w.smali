.class public final Lorg/joda/time/y/w;
.super Lorg/joda/time/y/f;
.source "SourceFile"


# static fields
.field private static final p0:Lorg/joda/time/y/w;

.field private static final q0:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/joda/time/f;",
            "[",
            "Lorg/joda/time/y/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/y/w;->q0:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    invoke-static {v0}, Lorg/joda/time/y/w;->Q0(Lorg/joda/time/f;)Lorg/joda/time/y/w;

    move-result-object v0

    sput-object v0, Lorg/joda/time/y/w;->p0:Lorg/joda/time/y/w;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/a;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/joda/time/y/f;-><init>(Lorg/joda/time/a;Ljava/lang/Object;I)V

    return-void
.end method

.method static P0(I)I
    .locals 3

    if-gtz p0, :cond_1

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Lorg/joda/time/IllegalFieldValueException;

    invoke-static {}, Lorg/joda/time/d;->U()Lorg/joda/time/d;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2, v2}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static Q0(Lorg/joda/time/f;)Lorg/joda/time/y/w;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {p0, v0}, Lorg/joda/time/y/w;->R0(Lorg/joda/time/f;I)Lorg/joda/time/y/w;

    move-result-object p0

    return-object p0
.end method

.method public static R0(Lorg/joda/time/f;I)Lorg/joda/time/y/w;
    .locals 5

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lorg/joda/time/f;->k()Lorg/joda/time/f;

    move-result-object p0

    .line 2
    :cond_0
    sget-object v0, Lorg/joda/time/y/w;->q0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/joda/time/y/w;

    if-nez v1, :cond_1

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/joda/time/y/w;

    .line 3
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/joda/time/y/w;

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    .line 4
    :try_start_0
    aget-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    .line 5
    monitor-enter v1

    .line 6
    :try_start_1
    aget-object v2, v1, v0

    if-nez v2, :cond_3

    .line 7
    sget-object v2, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    const/4 v3, 0x0

    if-ne p0, v2, :cond_2

    .line 8
    new-instance p0, Lorg/joda/time/y/w;

    invoke-direct {p0, v3, v3, p1}, Lorg/joda/time/y/w;-><init>(Lorg/joda/time/a;Ljava/lang/Object;I)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v2, p1}, Lorg/joda/time/y/w;->R0(Lorg/joda/time/f;I)Lorg/joda/time/y/w;

    move-result-object v2

    .line 10
    new-instance v4, Lorg/joda/time/y/w;

    invoke-static {v2, p0}, Lorg/joda/time/y/y;->Y(Lorg/joda/time/a;Lorg/joda/time/f;)Lorg/joda/time/y/y;

    move-result-object p0

    invoke-direct {v4, p0, v3, p1}, Lorg/joda/time/y/w;-><init>(Lorg/joda/time/a;Ljava/lang/Object;I)V

    move-object p0, v4

    .line 11
    :goto_0
    aput-object p0, v1, v0

    move-object v2, p0

    .line 12
    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-object v2

    .line 13
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid min days in first week: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/y/c;->y0()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    :cond_0
    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/joda/time/a;->o()Lorg/joda/time/f;

    move-result-object v0

    :goto_0
    invoke-static {v0, v1}, Lorg/joda/time/y/w;->R0(Lorg/joda/time/f;I)Lorg/joda/time/y/w;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public M()Lorg/joda/time/a;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/y/w;->p0:Lorg/joda/time/y/w;

    return-object v0
.end method

.method public N(Lorg/joda/time/f;)Lorg/joda/time/a;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lorg/joda/time/f;->k()Lorg/joda/time/f;

    move-result-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/joda/time/y/c;->o()Lorg/joda/time/f;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-static {p1}, Lorg/joda/time/y/w;->Q0(Lorg/joda/time/f;)Lorg/joda/time/y/w;

    move-result-object p1

    return-object p1
.end method

.method N0(I)Z
    .locals 0

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected S(Lorg/joda/time/y/a$a;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lorg/joda/time/y/c;->S(Lorg/joda/time/y/a$a;)V

    .line 3
    new-instance v0, Lorg/joda/time/a0/q;

    iget-object v1, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/a0/q;-><init>(Lorg/joda/time/a;Lorg/joda/time/c;)V

    iput-object v0, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    .line 4
    new-instance v0, Lorg/joda/time/a0/q;

    iget-object v1, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    invoke-direct {v0, p0, v1}, Lorg/joda/time/a0/q;-><init>(Lorg/joda/time/a;Lorg/joda/time/c;)V

    iput-object v0, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    :cond_0
    return-void
.end method

.method Y(I)J
    .locals 4

    add-int/lit16 v0, p1, -0x7b0

    if-gtz v0, :cond_0

    add-int/lit8 p1, v0, 0x3

    shr-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    shr-int/lit8 v1, v0, 0x2

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/y/w;->N0(I)Z

    move-result p1

    if-nez p1, :cond_1

    add-int/lit8 p1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    int-to-long v0, v0

    const-wide/16 v2, 0x16d

    mul-long v0, v0, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    const-wide v2, 0xe71960800L

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method Z()J
    .locals 2

    const-wide v0, 0x1c453aba2980L

    return-wide v0
.end method

.method a0()J
    .locals 2

    const-wide v0, 0x9cbf9040L

    return-wide v0
.end method

.method b0()J
    .locals 2

    const-wide v0, 0x758fac300L

    return-wide v0
.end method

.method c0()J
    .locals 2

    const-wide v0, 0x3ac7d6180L

    return-wide v0
.end method

.method d0(III)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/joda/time/y/w;->P0(I)I

    move-result p1

    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/y/c;->d0(III)J

    move-result-wide p1

    return-wide p1
.end method

.method v0()I
    .locals 1

    const v0, 0x116bbb60

    return v0
.end method

.method x0()I
    .locals 1

    const v0, -0x116babfe

    return v0
.end method
