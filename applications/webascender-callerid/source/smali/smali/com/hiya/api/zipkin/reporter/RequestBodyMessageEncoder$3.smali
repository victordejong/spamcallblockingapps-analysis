.class final enum Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$3;
.super Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder;-><init>(Ljava/lang/String;ILcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$1;)V

    return-void
.end method


# virtual methods
.method encode(Ljava/util/List;)Lm/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lm/f0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$Protobuf3RequestBody;

    invoke-direct {v0, p1}, Lcom/hiya/api/zipkin/reporter/RequestBodyMessageEncoder$Protobuf3RequestBody;-><init>(Ljava/util/List;)V

    return-object v0
.end method
