.class Lzendesk/support/request/RetryDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/RetryDialog;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/RetryDialog;


# direct methods
.method constructor <init>(Lzendesk/support/request/RetryDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RetryDialog$1;->this$0:Lzendesk/support/request/RetryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/support/request/RetryDialog$1;->this$0:Lzendesk/support/request/RetryDialog;

    invoke-static {p1}, Lzendesk/support/request/RetryDialog;->access$000(Lzendesk/support/request/RetryDialog;)Lzendesk/support/request/RetryDialog$Listener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lzendesk/support/request/RetryDialog$1;->this$0:Lzendesk/support/request/RetryDialog;

    invoke-static {p1}, Lzendesk/support/request/RetryDialog;->access$000(Lzendesk/support/request/RetryDialog;)Lzendesk/support/request/RetryDialog$Listener;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/request/RetryDialog$1;->this$0:Lzendesk/support/request/RetryDialog;

    invoke-static {v0}, Lzendesk/support/request/RetryDialog;->access$100(Lzendesk/support/request/RetryDialog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lzendesk/support/request/RetryDialog$Listener;->onDeleteMessage(Ljava/util/List;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/support/request/RetryDialog$1;->this$0:Lzendesk/support/request/RetryDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/g;->dismiss()V

    return-void
.end method
