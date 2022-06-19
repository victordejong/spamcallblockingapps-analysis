.class public Lorg/apache/avro/Protocol$Message;
.super Lorg/apache/avro/JsonProperties;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Message"
.end annotation


# instance fields
.field private doc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private request:Lorg/apache/avro/Schema;

.field public final synthetic this$0:Lorg/apache/avro/Protocol;


# direct methods
.method private constructor <init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/apache/avro/Schema;",
            ")V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lorg/apache/avro/Protocol$Message;->this$0:Lorg/apache/avro/Protocol;

    .line 10
    invoke-static {}, Lorg/apache/avro/Protocol;->access$000()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lorg/apache/avro/JsonProperties;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    .line 11
    iput-object p2, p0, Lorg/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lorg/apache/avro/Protocol$Message;->doc:Ljava/lang/String;

    .line 13
    iput-object p5, p0, Lorg/apache/avro/Protocol$Message;->request:Lorg/apache/avro/Schema;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/avro/Protocol$Message;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lorg/apache/avro/Protocol$Message;->this$0:Lorg/apache/avro/Protocol;

    .line 4
    invoke-static {}, Lorg/apache/avro/Protocol;->access$000()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/avro/JsonProperties;-><init>(Ljava/util/Set;)V

    .line 5
    iput-object p2, p0, Lorg/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lorg/apache/avro/Protocol$Message;->doc:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lorg/apache/avro/Protocol$Message;->request:Lorg/apache/avro/Schema;

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p0, p4}, Lorg/apache/avro/JsonProperties;->addAllProps(Lorg/apache/avro/JsonProperties;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lorg/apache/avro/Protocol$Message;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/apache/avro/Protocol$Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lorg/apache/avro/Protocol$Message;

    .line 3
    iget-object v1, p0, Lorg/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/avro/Protocol$Message;->request:Lorg/apache/avro/Schema;

    iget-object v3, p1, Lorg/apache/avro/Protocol$Message;->request:Lorg/apache/avro/Schema;

    invoke-virtual {v1, v3}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->propsEqual(Lorg/apache/avro/JsonProperties;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getDoc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol$Message;->doc:Ljava/lang/String;

    return-object v0
.end method

.method public getErrors()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/avro/Schema;->createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol$Message;->request:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getResponse()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/Schema$Type;->NULL:Lorg/apache/avro/Schema$Type;

    invoke-static {v0}, Lorg/apache/avro/Schema;->create(Lorg/apache/avro/Schema$Type;)Lorg/apache/avro/Schema;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol$Message;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/Protocol$Message;->request:Lorg/apache/avro/Schema;

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lorg/apache/avro/JsonProperties;->propsHashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public isOneWay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toJson(Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/g;->M1()V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/Protocol$Message;->doc:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "doc"

    .line 3
    invoke-virtual {p1, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/avro/JsonProperties;->writeProps(Le/k/a/b/g;)V

    const-string v0, "request"

    .line 6
    invoke-virtual {p1, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lorg/apache/avro/Protocol$Message;->request:Lorg/apache/avro/Schema;

    iget-object v1, p0, Lorg/apache/avro/Protocol$Message;->this$0:Lorg/apache/avro/Protocol;

    invoke-static {v1}, Lorg/apache/avro/Protocol;->access$100(Lorg/apache/avro/Protocol;)Lorg/apache/avro/Schema$Names;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/avro/Schema;->fieldsToJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/avro/Protocol$Message;->toJson1(Le/k/a/b/g;)V

    .line 9
    invoke-virtual {p1}, Le/k/a/b/g;->t0()V

    return-void
.end method

.method public toJson1(Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    const-string v0, "null"

    .line 2
    invoke-virtual {p1, v0}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "one-way"

    .line 3
    invoke-virtual {p1, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0}, Le/k/a/b/g;->k0(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    sget-object v1, Lorg/apache/avro/Schema;->FACTORY:Le/k/a/b/e;

    invoke-virtual {v1, v0}, Le/k/a/b/e;->e(Ljava/io/Writer;)Le/k/a/b/g;

    move-result-object v1

    .line 3
    invoke-virtual {p0, v1}, Lorg/apache/avro/Protocol$Message;->toJson(Le/k/a/b/g;)V

    .line 4
    invoke-virtual {v1}, Le/k/a/b/g;->flush()V

    .line 5
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Lorg/apache/avro/AvroRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/avro/AvroRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
