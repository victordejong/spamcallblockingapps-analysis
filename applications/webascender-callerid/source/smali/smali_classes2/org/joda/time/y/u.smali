.class public final Lorg/joda/time/y/u;
.super Lorg/joda/time/y/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/y/u$a;
    }
.end annotation


# static fields
.field private static final R:Lorg/joda/time/y/u;

.field private static final S:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/joda/time/f;",
            "Lorg/joda/time/y/u;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/y/u;->S:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    new-instance v1, Lorg/joda/time/y/u;

    invoke-static {}, Lorg/joda/time/y/t;->R0()Lorg/joda/time/y/t;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/joda/time/y/u;-><init>(Lorg/joda/time/a;)V

    sput-object v1, Lorg/joda/time/y/u;->R:Lorg/joda/time/y/u;

    .line 3
    sget-object v2, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/joda/time/y/a;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static W()Lorg/joda/time/y/u;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/f;->k()Lorg/joda/time/f;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/y/u;->X(Lorg/joda/time/f;)Lorg/joda/time/y/u;

    move-result-object v0

    return-object v0
.end method

.method public static X(Lorg/joda/time/f;)Lorg/joda/time/y/u;
    .locals 3

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lorg/joda/time/f;->k()Lorg/joda/time/f;

    move-result-object p0

    .line 2
    :cond_0
    sget-object v0, Lorg/joda/time/y/u;->S:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/y/u;

    if-nez v1, :cond_1

    .line 3
    new-instance v1, Lorg/joda/time/y/u;

    sget-object v2, Lorg/joda/time/y/u;->R:Lorg/joda/time/y/u;

    invoke-static {v2, p0}, Lorg/joda/time/y/y;->Y(Lorg/joda/time/a;Lorg/joda/time/f;)Lorg/joda/time/y/y;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/joda/time/y/u;-><init>(Lorg/joda/time/a;)V

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/joda/time/y/u;

    if-eqz p0, :cond_1

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method public static Y()Lorg/joda/time/y/u;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/y/u;->R:Lorg/joda/time/y/u;

    return-object v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/y/u$a;

    invoke-virtual {p0}, Lorg/joda/time/y/a;->o()Lorg/joda/time/f;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/joda/time/y/u$a;-><init>(Lorg/joda/time/f;)V

    return-object v0
.end method


# virtual methods
.method public M()Lorg/joda/time/a;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/y/u;->R:Lorg/joda/time/y/u;

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
    invoke-virtual {p0}, Lorg/joda/time/y/a;->o()Lorg/joda/time/f;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    invoke-static {p1}, Lorg/joda/time/y/u;->X(Lorg/joda/time/f;)Lorg/joda/time/y/u;

    move-result-object p1

    return-object p1
.end method

.method protected S(Lorg/joda/time/y/a$a;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/a;->o()Lorg/joda/time/f;

    move-result-object v0

    sget-object v1, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    if-ne v0, v1, :cond_0

    .line 2
    new-instance v0, Lorg/joda/time/a0/g;

    sget-object v1, Lorg/joda/time/y/v;->c:Lorg/joda/time/c;

    invoke-static {}, Lorg/joda/time/d;->x()Lorg/joda/time/d;

    move-result-object v2

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/a0/g;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;I)V

    iput-object v0, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    .line 3
    invoke-virtual {v0}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    .line 4
    new-instance v0, Lorg/joda/time/a0/o;

    iget-object v1, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    check-cast v1, Lorg/joda/time/a0/g;

    invoke-static {}, Lorg/joda/time/d;->V()Lorg/joda/time/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/a0/o;-><init>(Lorg/joda/time/a0/g;Lorg/joda/time/d;)V

    iput-object v0, p1, Lorg/joda/time/y/a$a;->G:Lorg/joda/time/c;

    .line 5
    new-instance v0, Lorg/joda/time/a0/o;

    iget-object v1, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    check-cast v1, Lorg/joda/time/a0/g;

    iget-object v2, p1, Lorg/joda/time/y/a$a;->h:Lorg/joda/time/h;

    invoke-static {}, Lorg/joda/time/d;->T()Lorg/joda/time/d;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/joda/time/a0/o;-><init>(Lorg/joda/time/a0/g;Lorg/joda/time/h;Lorg/joda/time/d;)V

    iput-object v0, p1, Lorg/joda/time/y/a$a;->C:Lorg/joda/time/c;

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
    instance-of v0, p1, Lorg/joda/time/y/u;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/joda/time/y/u;

    .line 3
    invoke-virtual {p0}, Lorg/joda/time/y/a;->o()Lorg/joda/time/f;

    move-result-object v0

    invoke-virtual {p1}, Lorg/joda/time/y/a;->o()Lorg/joda/time/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/joda/time/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->o()Lorg/joda/time/f;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/f;->hashCode()I

    move-result v0

    const v1, 0xc3857

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->o()Lorg/joda/time/f;

    move-result-object v0

    const-string v1, "ISOChronology"

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/joda/time/f;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method
