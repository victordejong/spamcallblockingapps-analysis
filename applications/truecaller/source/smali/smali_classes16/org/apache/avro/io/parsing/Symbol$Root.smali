.class public Lorg/apache/avro/io/parsing/Symbol$Root;
.super Lorg/apache/avro/io/parsing/Symbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Root"
.end annotation


# direct methods
.method private varargs constructor <init>([Lorg/apache/avro/io/parsing/Symbol;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/avro/io/parsing/Symbol$Kind;->ROOT:Lorg/apache/avro/io/parsing/Symbol$Kind;

    invoke-static {p1}, Lorg/apache/avro/io/parsing/Symbol$Root;->makeProduction([Lorg/apache/avro/io/parsing/Symbol;)[Lorg/apache/avro/io/parsing/Symbol;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/avro/io/parsing/Symbol;-><init>(Lorg/apache/avro/io/parsing/Symbol$Kind;[Lorg/apache/avro/io/parsing/Symbol;)V

    .line 3
    iget-object p1, p0, Lorg/apache/avro/io/parsing/Symbol;->production:[Lorg/apache/avro/io/parsing/Symbol;

    const/4 v0, 0x0

    aput-object p0, p1, v0

    return-void
.end method

.method public synthetic constructor <init>([Lorg/apache/avro/io/parsing/Symbol;Lorg/apache/avro/io/parsing/Symbol$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/parsing/Symbol$Root;-><init>([Lorg/apache/avro/io/parsing/Symbol;)V

    return-void
.end method

.method private static makeProduction([Lorg/apache/avro/io/parsing/Symbol;)[Lorg/apache/avro/io/parsing/Symbol;
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lorg/apache/avro/io/parsing/Symbol;->flattenedSize([Lorg/apache/avro/io/parsing/Symbol;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lorg/apache/avro/io/parsing/Symbol;

    .line 2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lorg/apache/avro/io/parsing/Symbol;->flatten([Lorg/apache/avro/io/parsing/Symbol;I[Lorg/apache/avro/io/parsing/Symbol;ILjava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method
