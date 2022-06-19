.class public final Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;->access$3700()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;->access$3700()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    invoke-static {v0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;->access$4500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;Ljava/lang/String;)V

    return-object p0
.end method

.method public b(D)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    invoke-static {v0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;->access$3800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;D)V

    return-object p0
.end method

.method public c(D)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;

    invoke-static {v0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;->access$4000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Location;D)V

    return-object p0
.end method
