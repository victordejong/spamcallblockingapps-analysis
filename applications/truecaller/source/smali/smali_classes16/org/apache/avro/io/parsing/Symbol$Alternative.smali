.class public Lorg/apache/avro/io/parsing/Symbol$Alternative;
.super Lorg/apache/avro/io/parsing/Symbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Alternative"
.end annotation


# instance fields
.field public final labels:[Ljava/lang/String;

.field public final symbols:[Lorg/apache/avro/io/parsing/Symbol;


# direct methods
.method private constructor <init>([Lorg/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol$Kind;->ALTERNATIVE:Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-direct {p0, v0}, Lorg/apache/avro/io/parsing/Symbol;-><init>(Lorg/apache/avro/io/parsing/Symbol$Kind;)V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lorg/apache/avro/io/parsing/Symbol;

    .line 4
    iput-object p2, p0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->labels:[Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>([Lorg/apache/avro/io/parsing/Symbol;[Ljava/lang/String;Lorg/apache/avro/io/parsing/Symbol$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$Alternative;-><init>([Lorg/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findLabel(Ljava/lang/String;)I
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->labels:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 2
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$Alternative;
    .locals 4
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
            "Lorg/apache/avro/io/parsing/Symbol$Alternative;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lorg/apache/avro/io/parsing/Symbol;

    array-length v0, v0

    new-array v1, v0, [Lorg/apache/avro/io/parsing/Symbol;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lorg/apache/avro/io/parsing/Symbol;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2}, Lorg/apache/avro/io/parsing/Symbol;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lorg/apache/avro/io/parsing/Symbol$Alternative;

    iget-object p2, p0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->labels:[Ljava/lang/String;

    invoke-direct {p1, v1, p2}, Lorg/apache/avro/io/parsing/Symbol$Alternative;-><init>([Lorg/apache/avro/io/parsing/Symbol;[Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/io/parsing/Symbol$Alternative;->flatten(Ljava/util/Map;Ljava/util/Map;)Lorg/apache/avro/io/parsing/Symbol$Alternative;

    move-result-object p1

    return-object p1
.end method

.method public getLabel(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->labels:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSymbol(I)Lorg/apache/avro/io/parsing/Symbol;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lorg/apache/avro/io/parsing/Symbol;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/io/parsing/Symbol$Alternative;->symbols:[Lorg/apache/avro/io/parsing/Symbol;

    array-length v0, v0

    return v0
.end method
