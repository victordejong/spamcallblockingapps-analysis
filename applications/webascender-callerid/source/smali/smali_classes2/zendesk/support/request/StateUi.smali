.class Lzendesk/support/request/StateUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/StateUi$DialogState;
    }
.end annotation


# instance fields
.field private final dialogState:Lzendesk/support/request/StateUi$DialogState;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lzendesk/support/request/StateUi;->dialogState:Lzendesk/support/request/StateUi$DialogState;

    return-void
.end method

.method constructor <init>(Lzendesk/support/request/StateUi$DialogState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/StateUi;->dialogState:Lzendesk/support/request/StateUi$DialogState;

    return-void
.end method


# virtual methods
.method getDialogState()Lzendesk/support/request/StateUi$DialogState;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/StateUi;->dialogState:Lzendesk/support/request/StateUi$DialogState;

    return-object v0
.end method

.method setDialogState(Lzendesk/support/request/StateUi$DialogState;)Lzendesk/support/request/StateUi;
    .locals 1

    .line 1
    new-instance v0, Lzendesk/support/request/StateUi;

    invoke-direct {v0, p1}, Lzendesk/support/request/StateUi;-><init>(Lzendesk/support/request/StateUi$DialogState;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UiState{dialogState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzendesk/support/request/StateUi;->dialogState:Lzendesk/support/request/StateUi$DialogState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
