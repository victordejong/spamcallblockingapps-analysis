.class public final Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;",
        "Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;->access$000()Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/api/services/messenger/v1/AddParticipants$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;->access$000()Lcom/truecaller/api/services/messenger/v1/AddParticipants$Request;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method
