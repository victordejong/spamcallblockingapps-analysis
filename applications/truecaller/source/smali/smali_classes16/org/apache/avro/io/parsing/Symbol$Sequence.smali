.class public Lorg/apache/avro/io/parsing/Symbol$Sequence;
.super Lorg/apache/avro/io/parsing/Symbol;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/avro/io/parsing/Symbol;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/avro/io/parsing/Symbol;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>([Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol$Kind;->SEQUENCE:Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0, p1}, Lorg/apache/avro/io/parsing/Symbol;-><init>(Lorg/apache/avro/io/parsing/Symbol$Kind;[Lorg/apache/avro/io/parsing/Symbol;)V

    return-void
.end method

.method public synthetic constructor <init>([Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/parsing/Symbol$Sequence;-><init>([Lorg/apache/avro/io/parsing/Symbol;)V

    return-void
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$Sequence;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;",
            "Ljava/util/List<",
            "Lorg/apache/avro/io/parsing/Symbol$Fixup;",
            ">;>;)",
            "Lorg/apache/avro/io/parsing/Symbol$Sequence;"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/io/parsing/Symbol$Sequence;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Sequence;

    invoke-virtual {p0}, Lorg/apache/avro/io/parsing/Symbol$Sequence;->flattenedSize()I

    move-result v1

    new-array v1, v1, [Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {v0, v1}, Lorg/apache/avro/io/parsing/Symbol$Sequence;-><init>([Lorg/apache/avro/io/parsing/Symbol;)V

    .line 4
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    const/4 v3, 0x0

    iget-object v4, v0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    const/4 v5, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Lorg/apache/avro/io/parsing/Symbol;->flatten([Lorg/apache/avro/io/parsing/Symbol;I[Lorg/apache/avro/io/parsing/Symbol;ILjava/util/Map;Ljava/util/Map;)V

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/avro/io/parsing/Symbol$Fixup;

    .line 9
    iget-object v2, v0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    const/4 v3, 0x0

    iget-object v4, v1, Lorg/apache/avro/io/parsing/Symbol$Fixup;->symbols:[Lorg/apache/avro/io/parsing/Symbol;

    iget v1, v1, Lorg/apache/avro/io/parsing/Symbol$Fixup;->pos:I

    array-length v5, v2

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$Sequence;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$Sequence;

    move-result-object p1

    return-object p1
.end method

.method public final flattenedSize()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/avro/io/parsing/Symbol;->flattenedSize([Lorg/apache/avro/io/parsing/Symbol;I)I

    move-result v0

    return v0
.end method

.method public get(I)Lorg/apache/avro/io/parsing/Symbol;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/avro/io/parsing/Symbol;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Sequence$1;

    invoke-direct {v0, p0}, Lorg/apache/avro/io/parsing/Symbol$Sequence$1;-><init>(Lorg/apache/avro/io/parsing/Symbol$Sequence;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    array-length v0, v0

    return v0
.end method
