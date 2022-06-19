.class Lzendesk/support/requestlist/RequestListPresenter$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/requestlist/RequestListView$OnItemClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListPresenter;->itemClicks(Lzendesk/support/requestlist/RequestListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Lzendesk/support/requestlist/RequestListView;


# direct methods
.method constructor <init>(Lzendesk/support/requestlist/RequestListPresenter;Lzendesk/support/requestlist/RequestListView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListPresenter$7;->val$view:Lzendesk/support/requestlist/RequestListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lzendesk/support/requestlist/RequestListItem;)V
    .locals 2

    .line 1
    invoke-static {}, Lzendesk/support/request/RequestActivity;->builder()Lzendesk/support/request/RequestUiConfig$Builder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/support/requestlist/RequestListPresenter$7;->val$view:Lzendesk/support/requestlist/RequestListView;

    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListItem;->configure(Lzendesk/support/request/RequestUiConfig$Builder;)Lzendesk/support/request/RequestUiConfig$Builder;

    invoke-virtual {v1, v0}, Lzendesk/support/requestlist/RequestListView;->startRequestActivity(Lzendesk/support/request/RequestUiConfig$Builder;)V

    return-void
.end method
