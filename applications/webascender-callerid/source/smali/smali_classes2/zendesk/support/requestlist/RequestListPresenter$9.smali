.class Lzendesk/support/requestlist/RequestListPresenter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/requestlist/RequestListPresenter;->createTicketClicks(Lzendesk/support/requestlist/RequestListView;)V
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
    iput-object p2, p0, Lzendesk/support/requestlist/RequestListPresenter$9;->val$view:Lzendesk/support/requestlist/RequestListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/support/requestlist/RequestListPresenter$9;->val$view:Lzendesk/support/requestlist/RequestListView;

    invoke-static {}, Lzendesk/support/request/RequestActivity;->builder()Lzendesk/support/request/RequestUiConfig$Builder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lzendesk/support/requestlist/RequestListView;->startRequestActivity(Lzendesk/support/request/RequestUiConfig$Builder;)V

    return-void
.end method
