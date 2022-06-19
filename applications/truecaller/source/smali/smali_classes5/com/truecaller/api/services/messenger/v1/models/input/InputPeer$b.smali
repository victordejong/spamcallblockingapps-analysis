.class public final Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Le/a/t2/a/e/a/d/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;",
        ">;",
        "Le/a/t2/a/e/a/d/h/b;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->access$1600()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->access$1600()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    invoke-static {v0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->access$2100(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;)V

    return-object p0
.end method

.method public b(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    invoke-static {v0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->access$1800(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;)V

    return-object p0
.end method

.method public getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$TypeCase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->getTypeCase()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$TypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$User;

    move-result-object v0

    return-object v0
.end method
