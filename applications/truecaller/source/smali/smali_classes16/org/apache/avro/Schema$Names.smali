.class public Lorg/apache/avro/Schema$Names;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Names"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lorg/apache/avro/Schema$Name;",
        "Lorg/apache/avro/Schema;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private space:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1300(Lorg/apache/avro/Schema$Names;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1302(Lorg/apache/avro/Schema$Names;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public add(Lorg/apache/avro/Schema;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lorg/apache/avro/Schema$NamedSchema;

    iget-object v0, v0, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-virtual {p0, v0, p1}, Lorg/apache/avro/Schema$Names;->put(Lorg/apache/avro/Schema$Name;Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    return-void
.end method

.method public contains(Lorg/apache/avro/Schema;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/Schema$NamedSchema;

    iget-object p1, p1, Lorg/apache/avro/Schema$NamedSchema;->name:Lorg/apache/avro/Schema$Name;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(Ljava/lang/String;)Lorg/apache/avro/Schema;
    .locals 2

    .line 1
    sget-object v0, Lorg/apache/avro/Schema;->PRIMITIVES:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/avro/Schema$Type;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lorg/apache/avro/Schema$Name;

    iget-object v1, p0, Lorg/apache/avro/Schema$Names;->space:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    new-instance v0, Lorg/apache/avro/Schema$Name;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lorg/apache/avro/Schema$Name;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    return-object p1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/avro/Schema$Name;

    check-cast p2, Lorg/apache/avro/Schema;

    invoke-virtual {p0, p1, p2}, Lorg/apache/avro/Schema$Names;->put(Lorg/apache/avro/Schema$Name;Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/apache/avro/Schema$Name;Lorg/apache/avro/Schema;)Lorg/apache/avro/Schema;
    .locals 2

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/avro/Schema;

    return-object p1

    .line 4
    :cond_0
    new-instance p2, Lorg/apache/avro/SchemaParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t redefine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/avro/SchemaParseException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public space()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-object v0
.end method

.method public space(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/avro/Schema$Names;->space:Ljava/lang/String;

    return-void
.end method
