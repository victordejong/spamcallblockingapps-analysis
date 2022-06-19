.class Lzendesk/support/guide/HelpCenterActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/guide/HelpCenterActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/guide/HelpCenterActivity;


# direct methods
.method constructor <init>(Lzendesk/support/guide/HelpCenterActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/guide/HelpCenterActivity$3;->this$0:Lzendesk/support/guide/HelpCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity$3;->this$0:Lzendesk/support/guide/HelpCenterActivity;

    invoke-static {v0}, Lzendesk/support/guide/HelpCenterActivity;->access$100(Lzendesk/support/guide/HelpCenterActivity;)Lzendesk/support/guide/HelpCenterMvp$Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lzendesk/support/guide/HelpCenterActivity$3;->this$0:Lzendesk/support/guide/HelpCenterActivity;

    invoke-static {v0}, Lzendesk/support/guide/HelpCenterActivity;->access$100(Lzendesk/support/guide/HelpCenterActivity;)Lzendesk/support/guide/HelpCenterMvp$Presenter;

    move-result-object v0

    invoke-interface {v0, p1}, Lzendesk/support/guide/HelpCenterMvp$Presenter;->onSearchSubmit(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
