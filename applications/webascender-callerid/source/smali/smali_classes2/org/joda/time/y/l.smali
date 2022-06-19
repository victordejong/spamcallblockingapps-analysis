.class public final Lorg/joda/time/y/l;
.super Lorg/joda/time/y/a;
.source "SourceFile"


# static fields
.field private static final R:Lorg/joda/time/c;

.field private static final S:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lorg/joda/time/f;",
            "Lorg/joda/time/y/l;",
            ">;"
        }
    .end annotation
.end field

.field private static final T:Lorg/joda/time/y/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/joda/time/y/h;

    const-string v1, "BE"

    invoke-direct {v0, v1}, Lorg/joda/time/y/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/joda/time/y/l;->R:Lorg/joda/time/c;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/joda/time/y/l;->S:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    sget-object v0, Lorg/joda/time/f;->g:Lorg/joda/time/f;

    invoke-static {v0}, Lorg/joda/time/y/l;->W(Lorg/joda/time/f;)Lorg/joda/time/y/l;

    move-result-object v0

    sput-object v0, Lorg/joda/time/y/l;->T:Lorg/joda/time/y/l;

    return-void
.end method

.method private constructor <init>(Lorg/joda/time/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/joda/time/y/a;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static W(Lorg/joda/time/f;)Lorg/joda/time/y/l;
    .locals 13

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lorg/joda/time/f;->k()Lorg/joda/time/f;

    move-result-object p0

    .line 2
    :cond_0
    sget-object v0, Lorg/joda/time/y/l;->S:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/joda/time/y/l;

    if-nez v1, :cond_2

    .line 3
    new-instance v1, Lorg/joda/time/y/l;

    const/4 v11, 0x0

    invoke-static {p0, v11}, Lorg/joda/time/y/n;->b0(Lorg/joda/time/f;Lorg/joda/time/r;)Lorg/joda/time/y/n;

    move-result-object v2

    invoke-direct {v1, v2, v11}, Lorg/joda/time/y/l;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    .line 4
    new-instance v12, Lorg/joda/time/b;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v12

    move-object v10, v1

    invoke-direct/range {v2 .. v10}, Lorg/joda/time/b;-><init>(IIIIIIILorg/joda/time/a;)V

    .line 5
    new-instance v2, Lorg/joda/time/y/l;

    invoke-static {v1, v12, v11}, Lorg/joda/time/y/x;->Z(Lorg/joda/time/a;Lorg/joda/time/p;Lorg/joda/time/p;)Lorg/joda/time/y/x;

    move-result-object v1

    const-string v3, ""

    invoke-direct {v2, v1, v3}, Lorg/joda/time/y/l;-><init>(Lorg/joda/time/a;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lorg/joda/time/y/l;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static X()Lorg/joda/time/y/l;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/y/l;->T:Lorg/joda/time/y/l;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->T()Lorg/joda/time/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/joda/time/y/l;->X()Lorg/joda/time/y/l;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/joda/time/a;->o()Lorg/joda/time/f;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/y/l;->W(Lorg/joda/time/f;)Lorg/joda/time/y/l;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public M()Lorg/joda/time/a;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/y/l;->T:Lorg/joda/time/y/l;

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
    invoke-static {p1}, Lorg/joda/time/y/l;->W(Lorg/joda/time/f;)Lorg/joda/time/y/l;

    move-result-object p1

    return-object p1
.end method

.method protected S(Lorg/joda/time/y/a$a;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->U()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lorg/joda/time/i;->c()Lorg/joda/time/i;

    move-result-object v0

    invoke-static {v0}, Lorg/joda/time/a0/t;->u(Lorg/joda/time/i;)Lorg/joda/time/a0/t;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/y/a$a;->l:Lorg/joda/time/h;

    .line 3
    iget-object v0, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    .line 4
    new-instance v1, Lorg/joda/time/a0/k;

    new-instance v2, Lorg/joda/time/a0/r;

    invoke-direct {v2, p0, v0}, Lorg/joda/time/a0/r;-><init>(Lorg/joda/time/a;Lorg/joda/time/c;)V

    const/16 v0, 0x21f

    invoke-direct {v1, v2, v0}, Lorg/joda/time/a0/k;-><init>(Lorg/joda/time/c;I)V

    iput-object v1, p1, Lorg/joda/time/y/a$a;->E:Lorg/joda/time/c;

    .line 5
    iget-object v2, p1, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    .line 6
    new-instance v2, Lorg/joda/time/a0/f;

    iget-object v3, p1, Lorg/joda/time/y/a$a;->l:Lorg/joda/time/h;

    invoke-static {}, Lorg/joda/time/d;->W()Lorg/joda/time/d;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/joda/time/a0/f;-><init>(Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/d;)V

    iput-object v2, p1, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    .line 7
    iget-object v1, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    .line 8
    new-instance v2, Lorg/joda/time/a0/k;

    new-instance v3, Lorg/joda/time/a0/r;

    invoke-direct {v3, p0, v1}, Lorg/joda/time/a0/r;-><init>(Lorg/joda/time/a;Lorg/joda/time/c;)V

    invoke-direct {v2, v3, v0}, Lorg/joda/time/a0/k;-><init>(Lorg/joda/time/c;I)V

    iput-object v2, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    .line 9
    new-instance v0, Lorg/joda/time/a0/k;

    iget-object v1, p1, Lorg/joda/time/y/a$a;->F:Lorg/joda/time/c;

    const/16 v2, 0x63

    invoke-direct {v0, v1, v2}, Lorg/joda/time/a0/k;-><init>(Lorg/joda/time/c;I)V

    .line 10
    new-instance v1, Lorg/joda/time/a0/g;

    iget-object v2, p1, Lorg/joda/time/y/a$a;->l:Lorg/joda/time/h;

    invoke-static {}, Lorg/joda/time/d;->x()Lorg/joda/time/d;

    move-result-object v3

    const/16 v4, 0x64

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/joda/time/a0/g;-><init>(Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/d;I)V

    iput-object v1, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    .line 11
    invoke-virtual {v1}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    iput-object v0, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    .line 12
    new-instance v0, Lorg/joda/time/a0/o;

    iget-object v1, p1, Lorg/joda/time/y/a$a;->H:Lorg/joda/time/c;

    check-cast v1, Lorg/joda/time/a0/g;

    invoke-direct {v0, v1}, Lorg/joda/time/a0/o;-><init>(Lorg/joda/time/a0/g;)V

    .line 13
    new-instance v1, Lorg/joda/time/a0/k;

    invoke-static {}, Lorg/joda/time/d;->V()Lorg/joda/time/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lorg/joda/time/a0/k;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;I)V

    iput-object v1, p1, Lorg/joda/time/y/a$a;->G:Lorg/joda/time/c;

    .line 14
    new-instance v0, Lorg/joda/time/a0/o;

    iget-object v1, p1, Lorg/joda/time/y/a$a;->B:Lorg/joda/time/c;

    iget-object v2, p1, Lorg/joda/time/y/a$a;->k:Lorg/joda/time/h;

    invoke-static {}, Lorg/joda/time/d;->T()Lorg/joda/time/d;

    move-result-object v5

    invoke-direct {v0, v1, v2, v5, v4}, Lorg/joda/time/a0/o;-><init>(Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/d;I)V

    .line 15
    new-instance v1, Lorg/joda/time/a0/k;

    invoke-static {}, Lorg/joda/time/d;->T()Lorg/joda/time/d;

    move-result-object v2

    invoke-direct {v1, v0, v2, v3}, Lorg/joda/time/a0/k;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;I)V

    iput-object v1, p1, Lorg/joda/time/y/a$a;->C:Lorg/joda/time/c;

    .line 16
    sget-object v0, Lorg/joda/time/y/l;->R:Lorg/joda/time/c;

    iput-object v0, p1, Lorg/joda/time/y/a$a;->I:Lorg/joda/time/c;

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
    instance-of v0, p1, Lorg/joda/time/y/l;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lorg/joda/time/y/l;

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

    const v1, 0x1dc28427

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/a;->o()Lorg/joda/time/f;

    move-result-object v0

    const-string v1, "BuddhistChronology"

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
