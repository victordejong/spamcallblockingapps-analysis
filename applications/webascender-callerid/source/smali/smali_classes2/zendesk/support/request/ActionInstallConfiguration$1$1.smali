.class Lzendesk/support/request/ActionInstallConfiguration$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/ActionInstallConfiguration$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lzendesk/support/request/ActionInstallConfiguration$1;

.field final synthetic val$newConfig:Lzendesk/support/request/RequestUiConfig;


# direct methods
.method constructor <init>(Lzendesk/support/request/ActionInstallConfiguration$1;Lzendesk/support/request/RequestUiConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->this$1:Lzendesk/support/request/ActionInstallConfiguration$1;

    iput-object p2, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->val$newConfig:Lzendesk/support/request/RequestUiConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->this$1:Lzendesk/support/request/ActionInstallConfiguration$1;

    iget-object v1, v0, Lzendesk/support/request/ActionInstallConfiguration$1;->val$dispatcher:Lt/a/f;

    iget-object v0, v0, Lzendesk/support/request/ActionInstallConfiguration$1;->this$0:Lzendesk/support/request/ActionInstallConfiguration;

    invoke-static {v0}, Lzendesk/support/request/ActionInstallConfiguration;->access$300(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/ActionFactory;

    move-result-object v0

    iget-object v2, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->val$newConfig:Lzendesk/support/request/RequestUiConfig;

    invoke-virtual {v0, v2}, Lzendesk/support/request/ActionFactory;->startConfig(Lzendesk/support/request/RequestUiConfig;)Lt/a/a;

    move-result-object v0

    invoke-interface {v1, v0}, Lt/a/f;->c(Lt/a/a;)V

    .line 2
    iget-object v0, p0, Lzendesk/support/request/ActionInstallConfiguration$1$1;->this$1:Lzendesk/support/request/ActionInstallConfiguration$1;

    iget-object v0, v0, Lzendesk/support/request/ActionInstallConfiguration$1;->val$callback:Lzendesk/support/request/AsyncMiddleware$Callback;

    invoke-interface {v0}, Lzendesk/support/request/AsyncMiddleware$Callback;->done()V

    return-void
.end method
