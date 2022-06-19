.class public final Le/m/d/r/k/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/r/f;


# static fields
.field public static final f:Ljava/nio/charset/Charset;

.field public static final g:Le/m/d/r/d;

.field public static final h:Le/m/d/r/d;

.field public static final i:Le/m/d/r/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/r/e<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/io/OutputStream;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/e<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final d:Le/m/d/r/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/r/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/m/d/r/k/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-object v0, Le/m/d/r/k/f$a;->a:Le/m/d/r/k/f$a;

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Le/m/d/r/k/g;->f:Ljava/nio/charset/Charset;

    const/4 v1, 0x1

    .line 2
    new-instance v2, Le/m/d/r/k/c;

    invoke-direct {v2, v1, v0}, Le/m/d/r/k/c;-><init>(ILe/m/d/r/k/f$a;)V

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Le/m/d/r/d;

    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    const-string v3, "key"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 8
    sput-object v2, Le/m/d/r/k/g;->g:Le/m/d/r/d;

    const/4 v1, 0x2

    .line 9
    new-instance v2, Le/m/d/r/k/c;

    invoke-direct {v2, v1, v0}, Le/m/d/r/k/c;-><init>(ILe/m/d/r/k/f$a;)V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Le/m/d/r/d;

    if-nez v0, :cond_1

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {v0}, Le/d/c/a/a;->c0(Ljava/util/HashMap;)Ljava/util/Map;

    move-result-object v0

    :goto_1
    const-string v2, "value"

    invoke-direct {v1, v2, v0, v4}, Le/m/d/r/d;-><init>(Ljava/lang/String;Ljava/util/Map;Le/m/d/r/d$a;)V

    .line 15
    sput-object v1, Le/m/d/r/k/g;->h:Le/m/d/r/d;

    .line 16
    sget-object v0, Le/m/d/r/k/a;->a:Le/m/d/r/k/a;

    sput-object v0, Le/m/d/r/k/g;->i:Le/m/d/r/e;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/Map;Ljava/util/Map;Le/m/d/r/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/e<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/m/d/r/g<",
            "*>;>;",
            "Le/m/d/r/e<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/d/r/k/i;

    invoke-direct {v0, p0}, Le/m/d/r/k/i;-><init>(Le/m/d/r/k/g;)V

    iput-object v0, p0, Le/m/d/r/k/g;->e:Le/m/d/r/k/i;

    .line 3
    iput-object p1, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    .line 4
    iput-object p2, p0, Le/m/d/r/k/g;->b:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Le/m/d/r/k/g;->c:Ljava/util/Map;

    .line 6
    iput-object p4, p0, Le/m/d/r/k/g;->d:Le/m/d/r/e;

    return-void
.end method

.method public static d(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static f(Le/m/d/r/d;)Le/m/d/r/k/f;
    .locals 1

    .line 1
    const-class v0, Le/m/d/r/k/f;

    .line 2
    iget-object p0, p0, Le/m/d/r/d;->b:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 3
    check-cast p0, Le/m/d/r/k/f;

    if-eqz p0, :cond_0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Le/m/d/r/c;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Le/m/d/r/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static g(Le/m/d/r/d;)I
    .locals 1

    .line 1
    const-class v0, Le/m/d/r/k/f;

    .line 2
    iget-object p0, p0, Le/m/d/r/d;->b:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    .line 3
    check-cast p0, Le/m/d/r/k/f;

    if-eqz p0, :cond_0

    .line 4
    check-cast p0, Le/m/d/r/k/c;

    .line 5
    iget p0, p0, Le/m/d/r/k/c;->c:I

    return p0

    .line 6
    :cond_0
    new-instance p0, Le/m/d/r/c;

    const-string v0, "Field has no @Protobuf config"

    invoke-direct {p0, v0}, Le/m/d/r/c;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/f;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 2
    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p3, :cond_1

    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_1

    return-object p0

    .line 4
    :cond_1
    invoke-static {p1}, Le/m/d/r/k/g;->g(Le/m/d/r/d;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 5
    invoke-virtual {p0, p1}, Le/m/d/r/k/g;->h(I)V

    .line 6
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Le/m/d/r/k/g;->f:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 7
    array-length p2, p1

    invoke-virtual {p0, p2}, Le/m/d/r/k/g;->h(I)V

    .line 8
    iget-object p2, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    .line 9
    :cond_2
    instance-of v0, p2, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 10
    check-cast p2, Ljava/util/Collection;

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 12
    invoke-virtual {p0, p1, p3, v1}, Le/m/d/r/k/g;->a(Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/f;

    goto :goto_0

    :cond_3
    return-object p0

    .line 13
    :cond_4
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 14
    check-cast p2, Ljava/util/Map;

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 16
    sget-object v0, Le/m/d/r/k/g;->i:Le/m/d/r/e;

    invoke-virtual {p0, v0, p1, p3, v1}, Le/m/d/r/k/g;->e(Le/m/d/r/e;Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/k/g;

    goto :goto_1

    :cond_5
    return-object p0

    .line 17
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 18
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    if-eqz p3, :cond_7

    const-wide/16 p2, 0x0

    cmpl-double p2, v0, p2

    if-nez p2, :cond_7

    goto :goto_2

    .line 19
    :cond_7
    invoke-static {p1}, Le/m/d/r/k/g;->g(Le/m/d/r/d;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, v2

    .line 20
    invoke-virtual {p0, p1}, Le/m/d/r/k/g;->h(I)V

    .line 21
    iget-object p1, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    const/16 p2, 0x8

    invoke-static {p2}, Le/m/d/r/k/g;->d(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_2
    return-object p0

    .line 22
    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 23
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    if-eqz p3, :cond_9

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_9

    goto :goto_3

    .line 24
    :cond_9
    invoke-static {p1}, Le/m/d/r/k/g;->g(Le/m/d/r/d;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x5

    .line 25
    invoke-virtual {p0, p1}, Le/m/d/r/k/g;->h(I)V

    .line 26
    iget-object p1, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    const/4 p3, 0x4

    invoke-static {p3}, Le/m/d/r/k/g;->d(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    :goto_3
    return-object p0

    .line 27
    :cond_a
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_b

    .line 28
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p3}, Le/m/d/r/k/g;->c(Le/m/d/r/d;JZ)Le/m/d/r/k/g;

    return-object p0

    .line 29
    :cond_b
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_c

    .line 30
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Le/m/d/r/k/g;->b(Le/m/d/r/d;IZ)Le/m/d/r/k/g;

    return-object p0

    .line 32
    :cond_c
    instance-of v0, p2, [B

    if-eqz v0, :cond_e

    .line 33
    check-cast p2, [B

    if-eqz p3, :cond_d

    .line 34
    array-length p3, p2

    if-nez p3, :cond_d

    return-object p0

    .line 35
    :cond_d
    invoke-static {p1}, Le/m/d/r/k/g;->g(Le/m/d/r/d;)I

    move-result p1

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    .line 36
    invoke-virtual {p0, p1}, Le/m/d/r/k/g;->h(I)V

    .line 37
    array-length p1, p2

    invoke-virtual {p0, p1}, Le/m/d/r/k/g;->h(I)V

    .line 38
    iget-object p1, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-object p0

    .line 39
    :cond_e
    iget-object v0, p0, Le/m/d/r/k/g;->b:Ljava/util/Map;

    .line 40
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/r/e;

    if-eqz v0, :cond_f

    .line 41
    invoke-virtual {p0, v0, p1, p2, p3}, Le/m/d/r/k/g;->e(Le/m/d/r/e;Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/k/g;

    return-object p0

    .line 42
    :cond_f
    iget-object v0, p0, Le/m/d/r/k/g;->c:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/d/r/g;

    if-eqz v0, :cond_10

    .line 43
    iget-object v2, p0, Le/m/d/r/k/g;->e:Le/m/d/r/k/i;

    .line 44
    iput-boolean v1, v2, Le/m/d/r/k/i;->a:Z

    .line 45
    iput-object p1, v2, Le/m/d/r/k/i;->c:Le/m/d/r/d;

    .line 46
    iput-boolean p3, v2, Le/m/d/r/k/i;->b:Z

    .line 47
    invoke-interface {v0, p2, v2}, Le/m/d/r/b;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 48
    :cond_10
    instance-of v0, p2, Le/m/d/r/k/e;

    if-eqz v0, :cond_11

    .line 49
    check-cast p2, Le/m/d/r/k/e;

    invoke-interface {p2}, Le/m/d/r/k/e;->getNumber()I

    move-result p2

    .line 50
    invoke-virtual {p0, p1, p2, v2}, Le/m/d/r/k/g;->b(Le/m/d/r/d;IZ)Le/m/d/r/k/g;

    return-object p0

    .line 51
    :cond_11
    instance-of v0, p2, Ljava/lang/Enum;

    if-eqz v0, :cond_12

    .line 52
    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    .line 53
    invoke-virtual {p0, p1, p2, v2}, Le/m/d/r/k/g;->b(Le/m/d/r/d;IZ)Le/m/d/r/k/g;

    return-object p0

    .line 54
    :cond_12
    iget-object v0, p0, Le/m/d/r/k/g;->d:Le/m/d/r/e;

    invoke-virtual {p0, v0, p1, p2, p3}, Le/m/d/r/k/g;->e(Le/m/d/r/e;Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/k/g;

    return-object p0
.end method

.method public add(Le/m/d/r/d;I)Le/m/d/r/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Le/m/d/r/k/g;->b(Le/m/d/r/d;IZ)Le/m/d/r/k/g;

    return-object p0
.end method

.method public add(Le/m/d/r/d;J)Le/m/d/r/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Le/m/d/r/k/g;->c(Le/m/d/r/d;JZ)Le/m/d/r/k/g;

    return-object p0
.end method

.method public add(Le/m/d/r/d;Ljava/lang/Object;)Le/m/d/r/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Le/m/d/r/k/g;->a(Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/f;

    move-result-object p1

    return-object p1
.end method

.method public add(Le/m/d/r/d;Z)Le/m/d/r/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Le/m/d/r/k/g;->b(Le/m/d/r/d;IZ)Le/m/d/r/k/g;

    return-object p0
.end method

.method public b(Le/m/d/r/d;IZ)Le/m/d/r/k/g;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Le/m/d/r/k/g;->f(Le/m/d/r/d;)Le/m/d/r/k/f;

    move-result-object p1

    .line 2
    check-cast p1, Le/m/d/r/k/c;

    .line 3
    iget p1, p1, Le/m/d/r/k/c;->c:I

    shl-int/lit8 p1, p1, 0x3

    .line 4
    invoke-virtual {p0, p1}, Le/m/d/r/k/g;->h(I)V

    .line 5
    invoke-virtual {p0, p2}, Le/m/d/r/k/g;->h(I)V

    return-object p0
.end method

.method public c(Le/m/d/r/d;JZ)Le/m/d/r/k/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p1}, Le/m/d/r/k/g;->f(Le/m/d/r/d;)Le/m/d/r/k/f;

    move-result-object p1

    .line 2
    check-cast p1, Le/m/d/r/k/c;

    .line 3
    iget p1, p1, Le/m/d/r/k/c;->c:I

    shl-int/lit8 p1, p1, 0x3

    .line 4
    invoke-virtual {p0, p1}, Le/m/d/r/k/g;->h(I)V

    .line 5
    invoke-virtual {p0, p2, p3}, Le/m/d/r/k/g;->i(J)V

    return-object p0
.end method

.method public final e(Le/m/d/r/e;Le/m/d/r/d;Ljava/lang/Object;Z)Le/m/d/r/k/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/d/r/e<",
            "TT;>;",
            "Le/m/d/r/d;",
            "TT;Z)",
            "Le/m/d/r/k/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/d/r/k/d;

    invoke-direct {v0}, Le/m/d/r/k/d;-><init>()V

    .line 2
    :try_start_0
    iget-object v1, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    .line 3
    iput-object v0, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-interface {p1, p3, p0}, Le/m/d/r/b;->encode(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iput-object v1, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    .line 6
    iget-wide v1, v0, Le/m/d/r/k/d;->a:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_0

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-nez p4, :cond_0

    return-object p0

    .line 8
    :cond_0
    invoke-static {p2}, Le/m/d/r/k/g;->g(Le/m/d/r/d;)I

    move-result p2

    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 9
    invoke-virtual {p0, p2}, Le/m/d/r/k/g;->h(I)V

    .line 10
    invoke-virtual {p0, v1, v2}, Le/m/d/r/k/g;->i(J)V

    .line 11
    invoke-interface {p1, p3, p0}, Le/m/d/r/b;->encode(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p1

    .line 12
    :try_start_3
    iput-object v1, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    .line 13
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 14
    :try_start_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public final h(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    and-int/lit8 v1, p1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public final i(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/d/r/k/g;->a:Ljava/io/OutputStream;

    long-to-int p1, p1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method
