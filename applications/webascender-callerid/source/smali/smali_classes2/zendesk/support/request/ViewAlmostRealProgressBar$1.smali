.class Lzendesk/support/request/ViewAlmostRealProgressBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ViewAlmostRealProgressBar;->start(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/ViewAlmostRealProgressBar;

.field final synthetic val$steps:Ljava/util/List;


# direct methods
.method constructor <init>(Lzendesk/support/request/ViewAlmostRealProgressBar;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$1;->this$0:Lzendesk/support/request/ViewAlmostRealProgressBar;

    iput-object p2, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$1;->val$steps:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$1;->this$0:Lzendesk/support/request/ViewAlmostRealProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzendesk/support/request/ViewAlmostRealProgressBar;->access$002(Lzendesk/support/request/ViewAlmostRealProgressBar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$1;->val$steps:Ljava/util/List;

    invoke-static {v0}, Lg/k/d/a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    iget-object v1, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$1;->this$0:Lzendesk/support/request/ViewAlmostRealProgressBar;

    invoke-static {v1, v0}, Lzendesk/support/request/ViewAlmostRealProgressBar;->access$102(Lzendesk/support/request/ViewAlmostRealProgressBar;Ljava/util/List;)Ljava/util/List;

    .line 5
    iget-object v0, p0, Lzendesk/support/request/ViewAlmostRealProgressBar$1;->this$0:Lzendesk/support/request/ViewAlmostRealProgressBar;

    invoke-static {v0}, Lzendesk/support/request/ViewAlmostRealProgressBar;->access$100(Lzendesk/support/request/ViewAlmostRealProgressBar;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lzendesk/support/request/ViewAlmostRealProgressBar;->access$200(Lzendesk/support/request/ViewAlmostRealProgressBar;Ljava/util/List;I)V

    return-void
.end method
