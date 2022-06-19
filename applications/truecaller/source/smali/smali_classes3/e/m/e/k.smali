.class public final Le/m/e/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/e/k$a;
    }
.end annotation


# static fields
.field public static final n:Le/m/e/f0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/f0/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Le/m/e/f0/a<",
            "*>;",
            "Le/m/e/k$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/m/e/f0/a<",
            "*>;",
            "Le/m/e/b0<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Le/m/e/e0/g;

.field public final d:Le/m/e/e0/a0/d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/e/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Le/m/e/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/e/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/e/c0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Le/m/e/f0/a;->get(Ljava/lang/Class;)Le/m/e/f0/a;

    move-result-object v0

    sput-object v0, Le/m/e/k;->n:Le/m/e/f0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Le/m/e/e0/o;->c:Le/m/e/e0/o;

    sget-object v2, Le/m/e/d;->a:Le/m/e/d;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Le/m/e/a0;->a:Le/m/e/a0;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 5
    invoke-direct/range {v0 .. v17}, Le/m/e/k;-><init>(Le/m/e/e0/o;Le/m/e/e;Ljava/util/Map;ZZZZZZZLe/m/e/a0;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Le/m/e/e0/o;Le/m/e/e;Ljava/util/Map;ZZZZZZZLe/m/e/a0;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/e0/o;",
            "Le/m/e/e;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Le/m/e/m<",
            "*>;>;ZZZZZZZ",
            "Le/m/e/a0;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Le/m/e/c0;",
            ">;",
            "Ljava/util/List<",
            "Le/m/e/c0;",
            ">;",
            "Ljava/util/List<",
            "Le/m/e/c0;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, v0, Le/m/e/k;->a:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v0, Le/m/e/k;->b:Ljava/util/Map;

    .line 9
    iput-object v2, v0, Le/m/e/k;->f:Ljava/util/Map;

    .line 10
    new-instance v3, Le/m/e/e0/g;

    invoke-direct {v3, p3}, Le/m/e/e0/g;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Le/m/e/k;->c:Le/m/e/e0/g;

    move v2, p4

    .line 11
    iput-boolean v2, v0, Le/m/e/k;->g:Z

    move v2, p6

    .line 12
    iput-boolean v2, v0, Le/m/e/k;->h:Z

    move/from16 v2, p7

    .line 13
    iput-boolean v2, v0, Le/m/e/k;->i:Z

    move/from16 v2, p8

    .line 14
    iput-boolean v2, v0, Le/m/e/k;->j:Z

    move/from16 v2, p9

    .line 15
    iput-boolean v2, v0, Le/m/e/k;->k:Z

    move-object/from16 v2, p15

    .line 16
    iput-object v2, v0, Le/m/e/k;->l:Ljava/util/List;

    move-object/from16 v2, p16

    .line 17
    iput-object v2, v0, Le/m/e/k;->m:Ljava/util/List;

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    sget-object v4, Le/m/e/e0/a0/o;->Y:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v4, Le/m/e/e0/a0/h;->b:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p17

    .line 22
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 23
    sget-object v4, Le/m/e/e0/a0/o;->D:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v4, Le/m/e/e0/a0/o;->m:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v4, Le/m/e/e0/a0/o;->g:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v4, Le/m/e/e0/a0/o;->i:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v4, Le/m/e/e0/a0/o;->k:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v4, Le/m/e/a0;->a:Le/m/e/a0;

    move-object/from16 v5, p11

    if-ne v5, v4, :cond_0

    .line 29
    sget-object v4, Le/m/e/e0/a0/o;->t:Le/m/e/b0;

    goto :goto_0

    .line 30
    :cond_0
    new-instance v4, Le/m/e/h;

    invoke-direct {v4}, Le/m/e/h;-><init>()V

    .line 31
    :goto_0
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    .line 32
    new-instance v7, Le/m/e/e0/a0/r;

    invoke-direct {v7, v5, v6, v4}, Le/m/e/e0/a0/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;Le/m/e/b0;)V

    .line 33
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    if-eqz p10, :cond_1

    .line 35
    sget-object v7, Le/m/e/e0/a0/o;->v:Le/m/e/b0;

    goto :goto_1

    .line 36
    :cond_1
    new-instance v7, Le/m/e/f;

    invoke-direct {v7, p0}, Le/m/e/f;-><init>(Le/m/e/k;)V

    .line 37
    :goto_1
    new-instance v8, Le/m/e/e0/a0/r;

    invoke-direct {v8, v5, v6, v7}, Le/m/e/e0/a0/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;Le/m/e/b0;)V

    .line 38
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    if-eqz p10, :cond_2

    .line 40
    sget-object v7, Le/m/e/e0/a0/o;->u:Le/m/e/b0;

    goto :goto_2

    .line 41
    :cond_2
    new-instance v7, Le/m/e/g;

    invoke-direct {v7, p0}, Le/m/e/g;-><init>(Le/m/e/k;)V

    .line 42
    :goto_2
    new-instance v8, Le/m/e/e0/a0/r;

    invoke-direct {v8, v5, v6, v7}, Le/m/e/e0/a0/r;-><init>(Ljava/lang/Class;Ljava/lang/Class;Le/m/e/b0;)V

    .line 43
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v5, Le/m/e/e0/a0/o;->x:Le/m/e/c0;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v5, Le/m/e/e0/a0/o;->o:Le/m/e/c0;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v5, Le/m/e/e0/a0/o;->q:Le/m/e/c0;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v6, Le/m/e/i;

    invoke-direct {v6, v4}, Le/m/e/i;-><init>(Le/m/e/b0;)V

    .line 49
    invoke-virtual {v6}, Le/m/e/b0;->nullSafe()Le/m/e/b0;

    move-result-object v6

    .line 50
    new-instance v7, Le/m/e/e0/a0/q;

    invoke-direct {v7, v5, v6}, Le/m/e/e0/a0/q;-><init>(Ljava/lang/Class;Le/m/e/b0;)V

    .line 51
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 53
    new-instance v6, Le/m/e/j;

    invoke-direct {v6, v4}, Le/m/e/j;-><init>(Le/m/e/b0;)V

    .line 54
    invoke-virtual {v6}, Le/m/e/b0;->nullSafe()Le/m/e/b0;

    move-result-object v4

    .line 55
    new-instance v6, Le/m/e/e0/a0/q;

    invoke-direct {v6, v5, v4}, Le/m/e/e0/a0/q;-><init>(Ljava/lang/Class;Le/m/e/b0;)V

    .line 56
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v4, Le/m/e/e0/a0/o;->s:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v4, Le/m/e/e0/a0/o;->z:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v4, Le/m/e/e0/a0/o;->F:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v4, Le/m/e/e0/a0/o;->H:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    const-class v4, Ljava/math/BigDecimal;

    sget-object v5, Le/m/e/e0/a0/o;->B:Le/m/e/b0;

    .line 62
    new-instance v6, Le/m/e/e0/a0/q;

    invoke-direct {v6, v4, v5}, Le/m/e/e0/a0/q;-><init>(Ljava/lang/Class;Le/m/e/b0;)V

    .line 63
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    const-class v4, Ljava/math/BigInteger;

    sget-object v5, Le/m/e/e0/a0/o;->C:Le/m/e/b0;

    .line 65
    new-instance v6, Le/m/e/e0/a0/q;

    invoke-direct {v6, v4, v5}, Le/m/e/e0/a0/q;-><init>(Ljava/lang/Class;Le/m/e/b0;)V

    .line 66
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v4, Le/m/e/e0/a0/o;->J:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v4, Le/m/e/e0/a0/o;->L:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v4, Le/m/e/e0/a0/o;->P:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v4, Le/m/e/e0/a0/o;->R:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v4, Le/m/e/e0/a0/o;->W:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v4, Le/m/e/e0/a0/o;->N:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v4, Le/m/e/e0/a0/o;->d:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v4, Le/m/e/e0/a0/c;->b:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v4, Le/m/e/e0/a0/o;->U:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v4, Le/m/e/e0/a0/l;->b:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v4, Le/m/e/e0/a0/k;->b:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v4, Le/m/e/e0/a0/o;->S:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v4, Le/m/e/e0/a0/a;->c:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v4, Le/m/e/e0/a0/o;->b:Le/m/e/c0;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v4, Le/m/e/e0/a0/b;

    invoke-direct {v4, v3}, Le/m/e/e0/a0/b;-><init>(Le/m/e/e0/g;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v4, Le/m/e/e0/a0/g;

    move v5, p5

    invoke-direct {v4, v3, p5}, Le/m/e/e0/a0/g;-><init>(Le/m/e/e0/g;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v4, Le/m/e/e0/a0/d;

    invoke-direct {v4, v3}, Le/m/e/e0/a0/d;-><init>(Le/m/e/e0/g;)V

    iput-object v4, v0, Le/m/e/k;->d:Le/m/e/e0/a0/d;

    .line 84
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v5, Le/m/e/e0/a0/o;->Z:Le/m/e/c0;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v5, Le/m/e/e0/a0/j;

    move-object v6, p2

    invoke-direct {v5, v3, p2, p1, v4}, Le/m/e/e0/a0/j;-><init>(Le/m/e/e0/g;Le/m/e/e;Le/m/e/e0/o;Le/m/e/e0/a0/d;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le/m/e/k;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/Object;Le/m/e/g0/a;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object p0

    sget-object p1, Le/m/e/g0/b;->j:Le/m/e/g0/b;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Le/m/e/r;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Le/m/e/r;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Le/m/e/g0/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Le/m/e/r;

    invoke-direct {p1, p0}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 4
    new-instance p1, Le/m/e/z;

    invoke-direct {p1, p0}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/g0/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/r;,
            Le/m/e/z;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Le/m/e/g0/a;->b:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p1, Le/m/e/g0/a;->b:Z

    .line 3
    :try_start_0
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    const/4 v1, 0x0

    .line 4
    invoke-static {p2}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object p2

    .line 6
    invoke-virtual {p2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput-boolean v0, p1, Le/m/e/g0/a;->b:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v1, p2}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw v1

    :catch_1
    move-exception p2

    .line 11
    new-instance v1, Le/m/e/z;

    invoke-direct {v1, p2}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 12
    new-instance v1, Le/m/e/z;

    invoke-direct {v1, p2}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 13
    iput-boolean v0, p1, Le/m/e/g0/a;->b:Z

    return-object p2

    .line 14
    :cond_0
    :try_start_2
    new-instance v1, Le/m/e/z;

    invoke-direct {v1, p2}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_0
    iput-boolean v0, p1, Le/m/e/g0/a;->b:Z

    .line 16
    throw p2
.end method

.method public d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/z;,
            Le/m/e/r;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0, p1}, Le/m/e/k;->a(Ljava/lang/Object;Le/m/e/g0/a;)V

    .line 4
    invoke-static {p2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/r;,
            Le/m/e/z;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 3
    invoke-static {p2, p1}, Le/m/e/k;->a(Ljava/lang/Object;Le/m/e/g0/a;)V

    return-object p2
.end method

.method public f(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/z;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-static {p2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/z;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Le/m/e/k;->k(Ljava/io/Reader;)Le/m/e/g0/a;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1, p2}, Le/m/e/k;->c(Le/m/e/g0/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-static {p2, p1}, Le/m/e/k;->a(Ljava/lang/Object;Le/m/e/g0/a;)V

    return-object p2
.end method

.method public h(Le/m/e/f0/a;)Le/m/e/b0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/f0/a<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/k;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Le/m/e/k;->n:Le/m/e/f0/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/e/b0;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Le/m/e/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Le/m/e/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/e/k$a;

    if-eqz v2, :cond_3

    return-object v2

    .line 6
    :cond_3
    :try_start_0
    new-instance v2, Le/m/e/k$a;

    invoke-direct {v2}, Le/m/e/k$a;-><init>()V

    .line 7
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Le/m/e/k;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/m/e/c0;

    .line 9
    invoke-interface {v4, p0, p1}, Le/m/e/c0;->create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 10
    iget-object v3, v2, Le/m/e/k$a;->a:Le/m/e/b0;

    if-nez v3, :cond_6

    .line 11
    iput-object v4, v2, Le/m/e/k$a;->a:Le/m/e/b0;

    .line 12
    iget-object v2, p0, Le/m/e/k;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 14
    iget-object p1, p0, Le/m/e/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 15
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 16
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.6) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 17
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 18
    iget-object p1, p0, Le/m/e/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 19
    :cond_8
    throw v2
.end method

.method public i(Ljava/lang/Class;)Le/m/e/b0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/m/e/f0/a;->get(Ljava/lang/Class;)Le/m/e/f0/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object p1

    return-object p1
.end method

.method public j(Le/m/e/c0;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/c0;",
            "Le/m/e/f0/a<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/k;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Le/m/e/k;->d:Le/m/e/e0/a0/d;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Le/m/e/k;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/e/c0;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v2, p0, p2}, Le/m/e/c0;->create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 5
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Ljava/io/Reader;)Le/m/e/g0/a;
    .locals 1

    .line 1
    new-instance v0, Le/m/e/g0/a;

    invoke-direct {v0, p1}, Le/m/e/g0/a;-><init>(Ljava/io/Reader;)V

    .line 2
    iget-boolean p1, p0, Le/m/e/k;->k:Z

    .line 3
    iput-boolean p1, v0, Le/m/e/g0/a;->b:Z

    return-object v0
.end method

.method public l(Ljava/io/Writer;)Le/m/e/g0/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/m/e/k;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Le/m/e/g0/c;

    invoke-direct {v0, p1}, Le/m/e/g0/c;-><init>(Ljava/io/Writer;)V

    .line 4
    iget-boolean p1, p0, Le/m/e/k;->j:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 5
    invoke-virtual {v0, p1}, Le/m/e/g0/c;->Q(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Le/m/e/k;->g:Z

    .line 7
    iput-boolean p1, v0, Le/m/e/g0/c;->i:Z

    return-object v0
.end method

.method public m(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Le/m/e/s;->a:Le/m/e/s;

    .line 2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    invoke-virtual {p0, p1, v0}, Le/m/e/k;->p(Le/m/e/q;Ljava/lang/Appendable;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/m/e/k;->n(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Le/m/e/k;->s(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o(Le/m/e/q;Le/m/e/g0/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/r;
        }
    .end annotation

    .line 1
    iget-boolean v0, p2, Le/m/e/g0/c;->f:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p2, Le/m/e/g0/c;->f:Z

    .line 3
    iget-boolean v1, p2, Le/m/e/g0/c;->g:Z

    .line 4
    iget-boolean v2, p0, Le/m/e/k;->i:Z

    .line 5
    iput-boolean v2, p2, Le/m/e/g0/c;->g:Z

    .line 6
    iget-boolean v2, p2, Le/m/e/g0/c;->i:Z

    .line 7
    iget-boolean v3, p0, Le/m/e/k;->g:Z

    .line 8
    iput-boolean v3, p2, Le/m/e/g0/c;->i:Z

    .line 9
    :try_start_0
    sget-object v3, Le/m/e/e0/a0/o;->X:Le/m/e/b0;

    invoke-virtual {v3, p2, p1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-boolean v0, p2, Le/m/e/g0/c;->f:Z

    .line 11
    iput-boolean v1, p2, Le/m/e/g0/c;->g:Z

    .line 12
    iput-boolean v2, p2, Le/m/e/g0/c;->i:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v3, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw v3

    :catch_1
    move-exception p1

    .line 16
    new-instance v3, Le/m/e/r;

    invoke-direct {v3, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_0
    iput-boolean v0, p2, Le/m/e/g0/c;->f:Z

    .line 18
    iput-boolean v1, p2, Le/m/e/g0/c;->g:Z

    .line 19
    iput-boolean v2, p2, Le/m/e/g0/c;->i:Z

    .line 20
    throw p1
.end method

.method public p(Le/m/e/q;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/r;
        }
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p2, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Le/m/e/e0/u;

    invoke-direct {v0, p2}, Le/m/e/e0/u;-><init>(Ljava/lang/Appendable;)V

    move-object p2, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p2}, Le/m/e/k;->l(Ljava/io/Writer;)Le/m/e/g0/c;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2}, Le/m/e/k;->o(Le/m/e/q;Le/m/e/g0/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Le/m/e/r;

    invoke-direct {p2, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public q(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/r;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Le/m/e/k;->s(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Le/m/e/s;->a:Le/m/e/s;

    invoke-virtual {p0, p1, p2}, Le/m/e/k;->p(Le/m/e/q;Ljava/lang/Appendable;)V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/m/e/g0/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/r;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Le/m/e/f0/a;->get(Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object p2

    .line 2
    iget-boolean v0, p3, Le/m/e/g0/c;->f:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p3, Le/m/e/g0/c;->f:Z

    .line 4
    iget-boolean v1, p3, Le/m/e/g0/c;->g:Z

    .line 5
    iget-boolean v2, p0, Le/m/e/k;->i:Z

    .line 6
    iput-boolean v2, p3, Le/m/e/g0/c;->g:Z

    .line 7
    iget-boolean v2, p3, Le/m/e/g0/c;->i:Z

    .line 8
    iget-boolean v3, p0, Le/m/e/k;->g:Z

    .line 9
    iput-boolean v3, p3, Le/m/e/g0/c;->i:Z

    .line 10
    :try_start_0
    invoke-virtual {p2, p3, p1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iput-boolean v0, p3, Le/m/e/g0/c;->f:Z

    .line 12
    iput-boolean v1, p3, Le/m/e/g0/c;->g:Z

    .line 13
    iput-boolean v2, p3, Le/m/e/g0/c;->i:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.6): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw p2

    :catch_1
    move-exception p1

    .line 17
    new-instance p2, Le/m/e/r;

    invoke-direct {p2, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :goto_0
    iput-boolean v0, p3, Le/m/e/g0/c;->f:Z

    .line 19
    iput-boolean v1, p3, Le/m/e/g0/c;->g:Z

    .line 20
    iput-boolean v2, p3, Le/m/e/g0/c;->i:Z

    .line 21
    throw p1
.end method

.method public s(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/r;
        }
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p3, Ljava/io/Writer;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Le/m/e/e0/u;

    invoke-direct {v0, p3}, Le/m/e/e0/u;-><init>(Ljava/lang/Appendable;)V

    move-object p3, v0

    .line 2
    :goto_0
    invoke-virtual {p0, p3}, Le/m/e/k;->l(Ljava/io/Writer;)Le/m/e/g0/c;

    move-result-object p3

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Le/m/e/k;->r(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/m/e/g0/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Le/m/e/r;

    invoke-direct {p2, p1}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public t(Ljava/lang/Object;)Le/m/e/q;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Le/m/e/e0/a0/f;

    invoke-direct {v1}, Le/m/e/e0/a0/f;-><init>()V

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Le/m/e/k;->r(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/m/e/g0/c;)V

    .line 4
    invoke-virtual {v1}, Le/m/e/e0/a0/f;->D0()Le/m/e/q;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Le/m/e/k;->g:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/e/k;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/e/k;->c:Le/m/e/e0/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
