.class public final Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;->access$5400()Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/api/services/messenger/v1/events/Event$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;->access$5400()Lcom/truecaller/api/services/messenger/v1/events/Event$MessagesDeleted;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method
