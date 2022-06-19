.class public final Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->access$1100()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->access$1100()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    invoke-static {v0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->access$1200(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;Ljava/lang/String;)V

    return-object p0
.end method
