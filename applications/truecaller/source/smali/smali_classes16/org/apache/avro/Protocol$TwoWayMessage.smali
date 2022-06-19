.class public Lorg/apache/avro/Protocol$TwoWayMessage;
.super Lorg/apache/avro/Protocol$Message;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/Protocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwoWayMessage"
.end annotation


# instance fields
.field private errors:Lorg/apache/avro/Schema;

.field private response:Lorg/apache/avro/Schema;

.field public final synthetic this$0:Lorg/apache/avro/Protocol;


# direct methods
.method private constructor <init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            "Lorg/apache/avro/Schema;",
            ")V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->this$0:Lorg/apache/avro/Protocol;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Protocol$Message;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    .line 5
    iput-object p6, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->response:Lorg/apache/avro/Schema;

    .line 6
    iput-object p7, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->errors:Lorg/apache/avro/Schema;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lorg/apache/avro/Protocol$TwoWayMessage;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V
    .locals 7

    .line 7
    iput-object p1, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->this$0:Lorg/apache/avro/Protocol;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/apache/avro/Protocol$Message;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V

    .line 9
    iput-object p6, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->response:Lorg/apache/avro/Schema;

    .line 10
    iput-object p7, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->errors:Lorg/apache/avro/Schema;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Protocol$1;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Lorg/apache/avro/Protocol$TwoWayMessage;-><init>(Lorg/apache/avro/Protocol;Ljava/lang/String;Ljava/lang/String;Lorg/apache/avro/JsonProperties;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;Lorg/apache/avro/Schema;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lorg/apache/avro/Protocol$Message;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p1, Lorg/apache/avro/Protocol$TwoWayMessage;

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    check-cast p1, Lorg/apache/avro/Protocol$TwoWayMessage;

    .line 4
    iget-object v0, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->response:Lorg/apache/avro/Schema;

    iget-object v2, p1, Lorg/apache/avro/Protocol$TwoWayMessage;->response:Lorg/apache/avro/Schema;

    invoke-virtual {v0, v2}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->errors:Lorg/apache/avro/Schema;

    iget-object p1, p1, Lorg/apache/avro/Protocol$TwoWayMessage;->errors:Lorg/apache/avro/Schema;

    invoke-virtual {v0, p1}, Lorg/apache/avro/Schema;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public getErrors()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->errors:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public getResponse()Lorg/apache/avro/Schema;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->response:Lorg/apache/avro/Schema;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/apache/avro/Protocol$Message;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->response:Lorg/apache/avro/Schema;

    invoke-virtual {v1}, Lorg/apache/avro/Schema;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->errors:Lorg/apache/avro/Schema;

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public isOneWay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toJson1(Le/k/a/b/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    .line 1
    invoke-virtual {p1, v0}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->response:Lorg/apache/avro/Schema;

    iget-object v1, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->this$0:Lorg/apache/avro/Protocol;

    invoke-static {v1}, Lorg/apache/avro/Protocol;->access$100(Lorg/apache/avro/Protocol;)Lorg/apache/avro/Schema$Names;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/avro/Schema;->toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    .line 3
    iget-object v0, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->errors:Lorg/apache/avro/Schema;

    invoke-virtual {v0}, Lorg/apache/avro/Schema;->getTypes()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/avro/Schema;->createUnion(Ljava/util/List;)Lorg/apache/avro/Schema;

    move-result-object v0

    const-string v1, "errors"

    .line 6
    invoke-virtual {p1, v1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lorg/apache/avro/Protocol$TwoWayMessage;->this$0:Lorg/apache/avro/Protocol;

    invoke-static {v1}, Lorg/apache/avro/Protocol;->access$100(Lorg/apache/avro/Protocol;)Lorg/apache/avro/Schema$Names;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/avro/Schema;->toJson(Lorg/apache/avro/Schema$Names;Le/k/a/b/g;)V

    :cond_0
    return-void
.end method
