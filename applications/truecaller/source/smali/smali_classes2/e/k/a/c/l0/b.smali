.class public abstract Le/k/a/c/l0/b;
.super Le/k/a/c/l0/p;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/k/a/c/n<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Le/k/a/c/n<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Le/k/a/c/c0/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/k/a/c/l0/t/r0;

    invoke-direct {v3}, Le/k/a/c/l0/t/r0;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v2, Le/k/a/c/l0/t/t0;->c:Le/k/a/c/l0/t/t0;

    .line 5
    const-class v3, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-class v3, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-class v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v2, Ljava/lang/Double;

    const-class v3, Ljava/lang/Long;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Le/k/a/c/l0/t/a0;

    invoke-direct {v6, v4}, Le/k/a/c/l0/t/a0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Le/k/a/c/l0/t/a0;

    invoke-direct {v6, v4}, Le/k/a/c/l0/t/a0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Le/k/a/c/l0/t/b0;

    invoke-direct {v5, v3}, Le/k/a/c/l0/t/b0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Le/k/a/c/l0/t/b0;

    invoke-direct {v5, v3}, Le/k/a/c/l0/t/b0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Le/k/a/c/l0/t/z;->c:Le/k/a/c/l0/t/z;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-class v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Le/k/a/c/l0/t/c0;->c:Le/k/a/c/l0/t/c0;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Le/k/a/c/l0/t/x;

    invoke-direct {v4, v2}, Le/k/a/c/l0/t/x;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/k/a/c/l0/t/x;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4}, Le/k/a/c/l0/t/x;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Le/k/a/c/l0/t/y;->c:Le/k/a/c/l0/t/y;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/k/a/c/l0/t/e;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Le/k/a/c/l0/t/e;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/k/a/c/l0/t/e;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Le/k/a/c/l0/t/e;-><init>(Z)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-class v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/k/a/c/l0/t/v;

    const-class v4, Ljava/math/BigInteger;

    invoke-direct {v3, v4}, Le/k/a/c/l0/t/v;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-class v2, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/k/a/c/l0/t/v;

    const-class v4, Ljava/math/BigDecimal;

    invoke-direct {v3, v4}, Le/k/a/c/l0/t/v;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-class v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Le/k/a/c/l0/t/h;->f:Le/k/a/c/l0/t/h;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Le/k/a/c/l0/t/k;->f:Le/k/a/c/l0/t/k;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 28
    const-class v3, Ljava/net/URL;

    new-instance v4, Le/k/a/c/l0/t/t0;

    const-class v5, Ljava/net/URL;

    invoke-direct {v4, v5}, Le/k/a/c/l0/t/t0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-class v3, Ljava/net/URI;

    new-instance v4, Le/k/a/c/l0/t/t0;

    const-class v5, Ljava/net/URI;

    invoke-direct {v4, v5}, Le/k/a/c/l0/t/t0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-class v3, Ljava/util/Currency;

    new-instance v4, Le/k/a/c/l0/t/t0;

    const-class v5, Ljava/util/Currency;

    invoke-direct {v4, v5}, Le/k/a/c/l0/t/t0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-class v3, Ljava/util/UUID;

    new-instance v4, Le/k/a/c/l0/t/w0;

    invoke-direct {v4}, Le/k/a/c/l0/t/w0;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-class v3, Ljava/util/regex/Pattern;

    new-instance v4, Le/k/a/c/l0/t/t0;

    const-class v5, Ljava/util/regex/Pattern;

    invoke-direct {v4, v5}, Le/k/a/c/l0/t/t0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-class v3, Ljava/util/Locale;

    new-instance v4, Le/k/a/c/l0/t/t0;

    const-class v5, Ljava/util/Locale;

    invoke-direct {v4, v5}, Le/k/a/c/l0/t/t0;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const-class v4, Le/k/a/c/l0/t/k0;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const-class v4, Le/k/a/c/l0/t/l0;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-class v4, Le/k/a/c/l0/t/m0;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-class v3, Ljava/io/File;

    const-class v4, Le/k/a/c/l0/t/o;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-class v3, Ljava/lang/Class;

    const-class v4, Le/k/a/c/l0/t/i;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-class v3, Ljava/lang/Void;

    sget-object v4, Le/k/a/c/l0/t/u;->c:Le/k/a/c/l0/t/u;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 44
    instance-of v5, v4, Le/k/a/c/n;

    if-eqz v5, :cond_0

    .line 45
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v4, Le/k/a/c/n;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_0
    check-cast v4, Ljava/lang/Class;

    .line 47
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 48
    :cond_1
    const-class v2, Le/k/a/c/n0/a0;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Le/k/a/c/l0/t/v0;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sput-object v1, Le/k/a/c/l0/b;->b:Ljava/util/HashMap;

    .line 50
    sput-object v0, Le/k/a/c/l0/b;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/l0/p;-><init>()V

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Le/k/a/c/c0/n;

    invoke-direct {p1}, Le/k/a/c/c0/n;-><init>()V

    :cond_0
    iput-object p1, p0, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/n;)Le/k/a/c/n;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/i;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 2
    invoke-virtual {v0, p2}, Le/k/a/c/y;->v(Le/k/a/c/i;)Le/k/a/c/c;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Le/k/a/c/c0/n;->a:[Le/k/a/c/l0/q;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 5
    iget-object v3, p0, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    .line 6
    new-instance v7, Le/k/a/c/n0/d;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v7, v2}, Le/k/a/c/n0/d;-><init>([Ljava/lang/Object;)V

    move-object v2, v6

    .line 7
    :cond_1
    invoke-virtual {v7}, Le/k/a/c/n0/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v7}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/l0/q;

    .line 8
    invoke-interface {v2, v0, p2, v1}, Le/k/a/c/l0/q;->b(Le/k/a/c/y;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/n;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    move-object v2, v6

    :cond_3
    :goto_1
    if-nez v2, :cond_1c

    .line 9
    move-object v2, v1

    check-cast v2, Le/k/a/c/g0/q;

    .line 10
    iget-object v3, v2, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 11
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v7

    .line 12
    invoke-virtual {v7, v3}, Le/k/a/c/b;->s(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 13
    invoke-virtual {p1, v3, v7}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v3

    goto :goto_2

    :cond_4
    move-object v3, v6

    :goto_2
    if-nez v3, :cond_1b

    if-nez p3, :cond_1d

    .line 14
    iget-object v3, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 15
    sget-object v7, Le/k/a/c/l0/t/o0;->a:Le/k/a/c/n;

    const/4 v7, 0x2

    const/16 v8, 0x8

    if-eqz v3, :cond_11

    .line 16
    const-class v9, Ljava/lang/Object;

    if-ne v3, v9, :cond_5

    goto/16 :goto_5

    .line 17
    :cond_5
    const-class v9, Ljava/lang/String;

    if-ne v3, v9, :cond_6

    .line 18
    sget-object v3, Le/k/a/c/l0/t/o0;->a:Le/k/a/c/n;

    goto/16 :goto_6

    .line 19
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 20
    invoke-static {v3}, Le/k/a/c/n0/g;->N(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 21
    :cond_7
    const-class v9, Ljava/lang/Integer;

    if-ne v3, v9, :cond_8

    .line 22
    new-instance v9, Le/k/a/c/l0/t/o0$a;

    const/4 v10, 0x5

    invoke-direct {v9, v10, v3}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    :goto_3
    move-object v3, v9

    goto/16 :goto_6

    .line 23
    :cond_8
    const-class v9, Ljava/lang/Long;

    if-ne v3, v9, :cond_9

    .line 24
    new-instance v9, Le/k/a/c/l0/t/o0$a;

    const/4 v10, 0x6

    invoke-direct {v9, v10, v3}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    goto :goto_3

    .line 25
    :cond_9
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-nez v9, :cond_10

    const-class v9, Ljava/lang/Number;

    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_4

    .line 26
    :cond_a
    const-class v9, Ljava/lang/Class;

    if-ne v3, v9, :cond_b

    .line 27
    new-instance v9, Le/k/a/c/l0/t/o0$a;

    const/4 v10, 0x3

    invoke-direct {v9, v10, v3}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    goto :goto_3

    .line 28
    :cond_b
    const-class v9, Ljava/util/Date;

    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 29
    new-instance v9, Le/k/a/c/l0/t/o0$a;

    invoke-direct {v9, v5, v3}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    goto :goto_3

    .line 30
    :cond_c
    const-class v9, Ljava/util/Calendar;

    invoke-virtual {v9, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 31
    new-instance v9, Le/k/a/c/l0/t/o0$a;

    invoke-direct {v9, v7, v3}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    goto :goto_3

    .line 32
    :cond_d
    const-class v9, Ljava/util/UUID;

    if-ne v3, v9, :cond_e

    .line 33
    new-instance v9, Le/k/a/c/l0/t/o0$a;

    invoke-direct {v9, v8, v3}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    goto :goto_3

    .line 34
    :cond_e
    const-class v9, [B

    if-ne v3, v9, :cond_f

    .line 35
    new-instance v9, Le/k/a/c/l0/t/o0$a;

    const/4 v10, 0x7

    invoke-direct {v9, v10, v3}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    goto :goto_3

    :cond_f
    move-object v3, v6

    goto :goto_6

    .line 36
    :cond_10
    :goto_4
    new-instance v9, Le/k/a/c/l0/t/o0$a;

    invoke-direct {v9, v8, v3}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    goto :goto_3

    .line 37
    :cond_11
    :goto_5
    new-instance v3, Le/k/a/c/l0/t/o0$b;

    invoke-direct {v3}, Le/k/a/c/l0/t/o0$b;-><init>()V

    :goto_6
    if-nez v3, :cond_1b

    .line 38
    iget-object v2, v2, Le/k/a/c/g0/q;->b:Le/k/a/c/g0/b0;

    if-nez v2, :cond_12

    goto :goto_7

    .line 39
    :cond_12
    iget-boolean v3, v2, Le/k/a/c/g0/b0;->i:Z

    if-nez v3, :cond_13

    .line 40
    invoke-virtual {v2}, Le/k/a/c/g0/b0;->h()V

    .line 41
    :cond_13
    iget-object v3, v2, Le/k/a/c/g0/b0;->q:Ljava/util/LinkedList;

    if-eqz v3, :cond_15

    .line 42
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-gt v3, v5, :cond_14

    .line 43
    iget-object v2, v2, Le/k/a/c/g0/b0;->q:Ljava/util/LinkedList;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/k/a/c/g0/i;

    goto :goto_8

    :cond_14
    new-array p1, v7, [Ljava/lang/Object;

    .line 44
    iget-object p2, v2, Le/k/a/c/g0/b0;->q:Ljava/util/LinkedList;

    .line 45
    invoke-virtual {p2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v4

    iget-object p2, v2, Le/k/a/c/g0/b0;->q:Ljava/util/LinkedList;

    .line 46
    invoke-virtual {p2, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    aput-object p2, p1, v5

    const-string p2, "Multiple \'as-key\' properties defined (%s vs %s)"

    .line 47
    invoke-virtual {v2, p2, p1}, Le/k/a/c/g0/b0;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_15
    :goto_7
    move-object v2, v6

    :goto_8
    if-nez v2, :cond_16

    .line 48
    invoke-virtual {v1}, Le/k/a/c/c;->c()Le/k/a/c/g0/i;

    move-result-object v2

    :cond_16
    if-eqz v2, :cond_18

    .line 49
    invoke-virtual {v2}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/b;->a(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/n;)Le/k/a/c/n;

    move-result-object p1

    .line 50
    invoke-virtual {v0}, Le/k/a/c/c0/k;->b()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 51
    invoke-virtual {v2}, Le/k/a/c/g0/i;->i()Ljava/lang/reflect/Member;

    move-result-object p2

    sget-object p3, Le/k/a/c/p;->q:Le/k/a/c/p;

    .line 52
    invoke-virtual {v0, p3}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p3

    .line 53
    invoke-static {p2, p3}, Le/k/a/c/n0/g;->e(Ljava/lang/reflect/Member;Z)V

    .line 54
    :cond_17
    new-instance p3, Le/k/a/c/l0/t/s;

    invoke-direct {p3, v2, v6, p1}, Le/k/a/c/l0/t/s;-><init>(Le/k/a/c/g0/i;Le/k/a/c/j0/h;Le/k/a/c/n;)V

    goto :goto_9

    .line 55
    :cond_18
    iget-object p1, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-eqz p1, :cond_1a

    .line 56
    const-class p2, Ljava/lang/Enum;

    if-ne p1, p2, :cond_19

    .line 57
    new-instance p3, Le/k/a/c/l0/t/o0$b;

    invoke-direct {p3}, Le/k/a/c/l0/t/o0$b;-><init>()V

    goto :goto_9

    .line 58
    :cond_19
    invoke-static {p1}, Le/k/a/c/n0/g;->w(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 59
    invoke-static {v0, p1}, Le/k/a/c/n0/k;->a(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/n0/k;

    move-result-object p2

    .line 60
    new-instance p3, Le/k/a/c/l0/t/o0$c;

    invoke-direct {p3, p1, p2}, Le/k/a/c/l0/t/o0$c;-><init>(Ljava/lang/Class;Le/k/a/c/n0/k;)V

    goto :goto_9

    .line 61
    :cond_1a
    new-instance p3, Le/k/a/c/l0/t/o0$a;

    invoke-direct {p3, v8, p1}, Le/k/a/c/l0/t/o0$a;-><init>(ILjava/lang/Class;)V

    goto :goto_9

    :cond_1b
    move-object p3, v3

    goto :goto_9

    :cond_1c
    move-object p3, v2

    .line 62
    :cond_1d
    :goto_9
    iget-object p1, p0, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {p1}, Le/k/a/c/c0/n;->a()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 63
    iget-object p1, p0, Le/k/a/c/l0/b;->a:Le/k/a/c/c0/n;

    invoke-virtual {p1}, Le/k/a/c/c0/n;->b()Ljava/lang/Iterable;

    move-result-object p1

    check-cast p1, Le/k/a/c/n0/d;

    :goto_a
    invoke-virtual {p1}, Le/k/a/c/n0/d;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-virtual {p1}, Le/k/a/c/n0/d;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/k/a/c/l0/g;

    .line 64
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_1e
    return-object p3
.end method

.method public b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;
    .locals 9

    .line 1
    iget-object v0, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/c/c0/k;->m(Ljava/lang/Class;)Le/k/a/c/c;

    move-result-object v0

    .line 3
    check-cast v0, Le/k/a/c/g0/q;

    .line 4
    iget-object v2, v0, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 5
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1, v2, p2}, Le/k/a/c/b;->Z(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Le/k/a/c/i;)Le/k/a/c/j0/g;

    move-result-object v0

    const/4 v7, 0x0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 8
    iget-object v0, v0, Le/k/a/c/c0/a;->f:Le/k/a/c/j0/g;

    move-object v1, v7

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p1, Le/k/a/c/c0/l;->d:Le/k/a/c/j0/d;

    .line 10
    check-cast v1, Le/k/a/c/j0/i/n;

    .line 11
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v5

    .line 13
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 14
    new-instance v3, Le/k/a/c/j0/b;

    .line 15
    iget-object v4, v2, Le/k/a/c/g0/c;->b:Ljava/lang/Class;

    .line 16
    invoke-direct {v3, v4, v7}, Le/k/a/c/j0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    move-object v4, p1

    move-object v6, v8

    .line 17
    invoke-virtual/range {v1 .. v6}, Le/k/a/c/j0/i/n;->d(Le/k/a/c/g0/c;Le/k/a/c/j0/b;Le/k/a/c/c0/k;Le/k/a/c/b;Ljava/util/HashMap;)V

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    if-nez v0, :cond_1

    return-object v7

    .line 19
    :cond_1
    invoke-interface {v0, p1, p2, v1}, Le/k/a/c/j0/g;->f(Le/k/a/c/y;Le/k/a/c/i;Ljava/util/Collection;)Le/k/a/c/j0/h;

    move-result-object p1

    return-object p1
.end method

.method public c(Le/k/a/c/a0;Le/k/a/c/c;Le/k/a/c/i;Ljava/lang/Class;)Le/k/a/a/r$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/c;",
            "Le/k/a/c/i;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/r$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 2
    iget-object v0, p1, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    .line 3
    iget-object v0, v0, Le/k/a/c/c0/g;->a:Le/k/a/a/r$b;

    .line 4
    invoke-virtual {p2, v0}, Le/k/a/c/c;->e(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object p2

    .line 5
    invoke-virtual {p1, p4, p2}, Le/k/a/c/c0/k;->j(Ljava/lang/Class;Le/k/a/a/r$b;)Le/k/a/a/r$b;

    .line 6
    iget-object p3, p3, Le/k/a/c/i;->a:Ljava/lang/Class;

    const/4 p4, 0x0

    .line 7
    invoke-virtual {p1, p3, p4}, Le/k/a/c/c0/k;->j(Ljava/lang/Class;Le/k/a/a/r$b;)Le/k/a/a/r$b;

    return-object p2
.end method

.method public final d(Le/k/a/c/a0;Le/k/a/c/i;Le/k/a/c/c;)Le/k/a/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/i;",
            "Le/k/a/c/c;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p2, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 2
    const-class v0, Le/k/a/c/m;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Le/k/a/c/l0/t/g0;->c:Le/k/a/c/l0/t/g0;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p3}, Le/k/a/c/c;->c()Le/k/a/c/g0/i;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 5
    iget-object p3, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    invoke-virtual {p3}, Le/k/a/c/c0/k;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p2}, Le/k/a/c/g0/i;->i()Ljava/lang/reflect/Member;

    move-result-object p3

    sget-object v0, Le/k/a/c/p;->q:Le/k/a/c/p;

    .line 7
    invoke-virtual {p1, v0}, Le/k/a/c/a0;->L(Le/k/a/c/p;)Z

    move-result v0

    .line 8
    invoke-static {p3, v0}, Le/k/a/c/n0/g;->e(Ljava/lang/reflect/Member;Z)V

    .line 9
    :cond_1
    invoke-virtual {p2}, Le/k/a/c/g0/b;->e()Le/k/a/c/i;

    move-result-object p3

    .line 10
    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/b;->e(Le/k/a/c/a0;Le/k/a/c/g0/b;)Le/k/a/c/n;

    move-result-object v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p3, Le/k/a/c/i;->c:Ljava/lang/Object;

    .line 12
    check-cast v0, Le/k/a/c/n;

    .line 13
    :cond_2
    iget-object v1, p3, Le/k/a/c/i;->d:Ljava/lang/Object;

    .line 14
    check-cast v1, Le/k/a/c/j0/h;

    if-nez v1, :cond_3

    .line 15
    iget-object p1, p1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 16
    invoke-virtual {p0, p1, p3}, Le/k/a/c/l0/b;->b(Le/k/a/c/y;Le/k/a/c/i;)Le/k/a/c/j0/h;

    move-result-object v1

    .line 17
    :cond_3
    new-instance p1, Le/k/a/c/l0/t/s;

    invoke-direct {p1, p2, v1, v0}, Le/k/a/c/l0/t/s;-><init>(Le/k/a/c/g0/i;Le/k/a/c/j0/h;Le/k/a/c/n;)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public e(Le/k/a/c/a0;Le/k/a/c/g0/b;)Le/k/a/c/n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/g0/b;",
            ")",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Le/k/a/c/b;->V(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1, p2, v0}, Le/k/a/c/a0;->Q(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v2

    invoke-virtual {v2, p2}, Le/k/a/c/b;->R(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1, p2, v2}, Le/k/a/c/e;->g(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n0/i;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1}, Le/k/a/c/a0;->i()Le/k/a/c/m0/o;

    move-result-object p1

    invoke-interface {v1, p1}, Le/k/a/c/n0/i;->b(Le/k/a/c/m0/o;)Le/k/a/c/i;

    move-result-object p1

    .line 6
    new-instance p2, Le/k/a/c/l0/t/j0;

    invoke-direct {p2, v1, p1, v0}, Le/k/a/c/l0/t/j0;-><init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/n;)V

    move-object v0, p2

    :goto_1
    return-object v0
.end method

.method public f(Le/k/a/c/y;Le/k/a/c/c;Le/k/a/c/j0/h;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p3

    .line 2
    check-cast p2, Le/k/a/c/g0/q;

    .line 3
    iget-object p2, p2, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 4
    invoke-virtual {p3, p2}, Le/k/a/c/b;->U(Le/k/a/c/g0/b;)Le/k/a/c/b0/f$b;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 5
    sget-object p3, Le/k/a/c/b0/f$b;->c:Le/k/a/c/b0/f$b;

    if-eq p2, p3, :cond_1

    .line 6
    sget-object p1, Le/k/a/c/b0/f$b;->b:Le/k/a/c/b0/f$b;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 7
    :cond_1
    sget-object p2, Le/k/a/c/p;->r:Le/k/a/c/p;

    invoke-virtual {p1, p2}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result p1

    return p1
.end method
