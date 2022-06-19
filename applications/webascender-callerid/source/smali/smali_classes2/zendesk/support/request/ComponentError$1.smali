.class Lzendesk/support/request/ComponentError$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ComponentError;->update(Lzendesk/support/request/ComponentError$ErrorStateModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ComponentError;


# direct methods
.method constructor <init>(Lzendesk/support/request/ComponentError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ComponentError$1;->this$0:Lzendesk/support/request/ComponentError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/support/request/ComponentError$1;->this$0:Lzendesk/support/request/ComponentError;

    sget-object v0, Lzendesk/support/request/StateError$ErrorType;->NoError:Lzendesk/support/request/StateError$ErrorType;

    invoke-static {p1, v0}, Lzendesk/support/request/ComponentError;->access$102(Lzendesk/support/request/ComponentError;Lzendesk/support/request/StateError$ErrorType;)Lzendesk/support/request/StateError$ErrorType;

    .line 2
    iget-object p1, p0, Lzendesk/support/request/ComponentError$1;->this$0:Lzendesk/support/request/ComponentError;

    invoke-static {p1}, Lzendesk/support/request/ComponentError;->access$300(Lzendesk/support/request/ComponentError;)Lt/a/f;

    move-result-object p1

    iget-object v0, p0, Lzendesk/support/request/ComponentError$1;->this$0:Lzendesk/support/request/ComponentError;

    invoke-static {v0}, Lzendesk/support/request/ComponentError;->access$200(Lzendesk/support/request/ComponentError;)Lzendesk/support/request/ActionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lzendesk/support/request/ActionFactory;->initialLoadCommentsAsync()Lt/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Lt/a/f;->c(Lt/a/a;)V

    return-void
.end method
