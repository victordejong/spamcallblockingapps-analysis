.class Lzendesk/support/request/ComponentDialog$RetryDialogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/RetryDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/ComponentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RetryDialogListener"
.end annotation


# instance fields
.field private final af:Lzendesk/support/request/ActionFactory;

.field private final dispatcher:Lt/a/f;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionFactory;Lt/a/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ComponentDialog$RetryDialogListener;->af:Lzendesk/support/request/ActionFactory;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ComponentDialog$RetryDialogListener;->dispatcher:Lt/a/f;

    return-void
.end method


# virtual methods
.method public onDeleteMessage(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/StateMessage;

    .line 2
    iget-object v1, p0, Lzendesk/support/request/ComponentDialog$RetryDialogListener;->dispatcher:Lt/a/f;

    iget-object v2, p0, Lzendesk/support/request/ComponentDialog$RetryDialogListener;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v2, v0}, Lzendesk/support/request/ActionFactory;->deleteMessage(Lzendesk/support/request/StateMessage;)Lt/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lt/a/f;->c(Lt/a/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRetryMessage(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzendesk/support/request/StateMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lzendesk/support/request/ComponentDialog$RetryDialogListener;->onDeleteMessage(Ljava/util/List;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzendesk/support/request/StateMessage;

    .line 3
    iget-object v1, p0, Lzendesk/support/request/ComponentDialog$RetryDialogListener;->dispatcher:Lt/a/f;

    iget-object v2, p0, Lzendesk/support/request/ComponentDialog$RetryDialogListener;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v2, v0}, Lzendesk/support/request/ActionFactory;->resendCommentAsync(Lzendesk/support/request/StateMessage;)Lt/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lt/a/f;->c(Lt/a/a;)V

    .line 4
    iget-object v0, p0, Lzendesk/support/request/ComponentDialog$RetryDialogListener;->dispatcher:Lt/a/f;

    iget-object v1, p0, Lzendesk/support/request/ComponentDialog$RetryDialogListener;->af:Lzendesk/support/request/ActionFactory;

    invoke-virtual {v1}, Lzendesk/support/request/ActionFactory;->updateCommentsAsync()Lt/a/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lt/a/f;->c(Lt/a/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method
