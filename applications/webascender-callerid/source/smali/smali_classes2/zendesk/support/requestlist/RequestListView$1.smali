.class Lzendesk/support/requestlist/RequestListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/requestlist/RequestListView$OnItemClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListView;-><init>(Landroidx/appcompat/app/c;Lzendesk/support/requestlist/RequestListUiConfig;Lg/i/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/requestlist/RequestListView;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/requestlist/RequestListView$1;->this$0:Lzendesk/support/requestlist/RequestListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lzendesk/support/requestlist/RequestListItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView$1;->this$0:Lzendesk/support/requestlist/RequestListView;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestListView;->access$000(Lzendesk/support/requestlist/RequestListView;)Lzendesk/support/requestlist/RequestListView$OnItemClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListView$1;->this$0:Lzendesk/support/requestlist/RequestListView;

    invoke-static {v0}, Lzendesk/support/requestlist/RequestListView;->access$000(Lzendesk/support/requestlist/RequestListView;)Lzendesk/support/requestlist/RequestListView$OnItemClick;

    move-result-object v0

    invoke-interface {v0, p1}, Lzendesk/support/requestlist/RequestListView$OnItemClick;->onClick(Lzendesk/support/requestlist/RequestListItem;)V

    :cond_0
    return-void
.end method
