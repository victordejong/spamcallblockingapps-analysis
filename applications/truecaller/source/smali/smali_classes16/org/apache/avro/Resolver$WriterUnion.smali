.class public Lorg/apache/avro/Resolver$WriterUnion;
.super Lorg/apache/avro/Resolver$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Resolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WriterUnion"
.end annotation


# instance fields
.field public final actions:[Lorg/apache/avro/Resolver$Action;

.field public final unionEquiv:Z


# direct methods
.method private constructor <init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Z[Lorg/apache/avro/Resolver$Action;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Resolver$Action$Type;->WRITER_UNION:Lorg/apache/avro/Resolver$Action$Type;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/avro/Resolver$Action;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Lorg/apache/avro/Resolver$Action$Type;)V

    .line 2
    iput-boolean p4, p0, Lorg/apache/avro/Resolver$WriterUnion;->unionEquiv:Z

    .line 3
    iput-object p5, p0, Lorg/apache/avro/Resolver$WriterUnion;->actions:[Lorg/apache/avro/Resolver$Action;

    return-void
.end method

.method public static resolve(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/generic/GenericData;",
            "Ljava/util/Map<",
            "Lorg/apache/avro/Schema$SeenPair;",
            "Lorg/apache/avro/Resolver$Action;",
            ">;)",
            "Lorg/apache/avro/Resolver$Action;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/avro/Resolver;->access$100(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Ljava/util/Map;)Z

    move-result v5

    .line 2
    invoke-virtual {p0}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {p1}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 5
    new-array v6, v2, [Lorg/apache/avro/Resolver$Action;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/avro/Schema;

    if-eqz v5, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/avro/Schema;

    goto :goto_2

    :cond_1
    move-object v7, p1

    :goto_2
    invoke-static {v4, v7, p2, p3}, Lorg/apache/avro/Resolver;->access$000(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Ljava/util/Map;)Lorg/apache/avro/Resolver$Action;

    move-result-object v4

    aput-object v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7
    :cond_2
    new-instance p3, Lorg/apache/avro/Resolver$WriterUnion;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/avro/Resolver$WriterUnion;-><init>(Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/generic/GenericData;Z[Lorg/apache/avro/Resolver$Action;)V

    return-object p3
.end method
