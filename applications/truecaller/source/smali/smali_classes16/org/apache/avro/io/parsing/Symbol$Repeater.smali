.class public Lorg/apache/avro/io/parsing/Symbol$Repeater;
.super Lorg/apache/avro/io/parsing/Symbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Repeater"
.end annotation


# instance fields
.field public final end:Lorg/apache/avro/io/parsing/Symbol;


# direct methods
.method private varargs constructor <init>(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol$Kind;->REPEATER:Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-static {p2}, Lorg/apache/avro/io/parsing/Symbol$Repeater;->makeProduction([Lorg/apache/avro/io/parsing/Symbol;)[Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lorg/apache/avro/io/parsing/Symbol;-><init>(Lorg/apache/avro/io/parsing/Symbol$Kind;[Lorg/apache/avro/io/parsing/Symbol;)V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/io/parsing/Symbol$Repeater;->end:Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    iget-object p1, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$Repeater;-><init>(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)V

    return-void
.end method

.method private static makeProduction([Lorg/apache/avro/io/parsing/Symbol;)[Lorg/apache/avro/io/parsing/Symbol;
    .locals 4

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$Repeater;
    .locals 9
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
            "Lorg/apache/avro/io/parsing/Symbol$Repeater;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/avro/io/parsing/Symbol$Repeater;

    iget-object v1, p0, Lorg/apache/avro/io/parsing/Symbol$Repeater;->end:Lorg/apache/avro/io/parsing/Symbol;

    iget-object v2, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/avro/io/parsing/Symbol;->flattenedSize([Lorg/apache/avro/io/parsing/Symbol;I)I

    move-result v2

    new-array v2, v2, [Lorg/apache/avro/io/parsing/Symbol;

    invoke-direct {v0, v1, v2}, Lorg/apache/avro/io/parsing/Symbol$Repeater;-><init>(Lorg/apache/avro/io/parsing/Symbol;[Lorg/apache/avro/io/parsing/Symbol;)V

    .line 3
    iget-object v3, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    iget-object v5, v0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    const/4 v4, 0x1

    const/4 v6, 0x1

    move-object v7, p1

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lorg/apache/avro/io/parsing/Symbol;->flatten([Lorg/apache/avro/io/parsing/Symbol;I[Lorg/apache/avro/io/parsing/Symbol;ILjava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$Repeater;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$Repeater;

    move-result-object p1

    return-object p1
.end method
