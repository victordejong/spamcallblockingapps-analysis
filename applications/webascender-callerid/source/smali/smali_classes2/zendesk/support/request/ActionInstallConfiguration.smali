.class Lzendesk/support/request/ActionInstallConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/AsyncMiddleware$AsyncAction;


# instance fields
.field private final af:Lzendesk/support/request/ActionFactory;

.field private final blipsProvider:Lzendesk/support/SupportBlipsProvider;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final startConfig:Lzendesk/support/request/RequestUiConfig;

.field private final supportUiStorage:Lzendesk/support/SupportUiStorage;


# direct methods
.method constructor <init>(Lzendesk/support/SupportUiStorage;Lzendesk/support/request/RequestUiConfig;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzendesk/support/request/ActionFactory;Lzendesk/support/SupportBlipsProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/ActionInstallConfiguration;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/ActionInstallConfiguration;->startConfig:Lzendesk/support/request/RequestUiConfig;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/ActionInstallConfiguration;->executor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/ActionInstallConfiguration;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 6
    iput-object p5, p0, Lzendesk/support/request/ActionInstallConfiguration;->af:Lzendesk/support/request/ActionFactory;

    .line 7
    iput-object p6, p0, Lzendesk/support/request/ActionInstallConfiguration;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-void
.end method

.method static synthetic access$000(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/RequestUiConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionInstallConfiguration;->startConfig:Lzendesk/support/request/RequestUiConfig;

    return-object p0
.end method

.method static synthetic access$100(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/SupportUiStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionInstallConfiguration;->supportUiStorage:Lzendesk/support/SupportUiStorage;

    return-object p0
.end method

.method static synthetic access$200(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/SupportBlipsProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionInstallConfiguration;->blipsProvider:Lzendesk/support/SupportBlipsProvider;

    return-object p0
.end method

.method static synthetic access$300(Lzendesk/support/request/ActionInstallConfiguration;)Lzendesk/support/request/ActionFactory;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionInstallConfiguration;->af:Lzendesk/support/request/ActionFactory;

    return-object p0
.end method

.method static synthetic access$400(Lzendesk/support/request/ActionInstallConfiguration;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/ActionInstallConfiguration;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method


# virtual methods
.method public actionQueued(Lt/a/f;Lt/a/j;)V
    .locals 0

    return-void
.end method

.method public execute(Lt/a/f;Lt/a/j;Lzendesk/support/request/AsyncMiddleware$Callback;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lzendesk/support/request/ActionInstallConfiguration;->executor:Ljava/util/concurrent/Executor;

    new-instance v0, Lzendesk/support/request/ActionInstallConfiguration$1;

    invoke-direct {v0, p0, p1, p3}, Lzendesk/support/request/ActionInstallConfiguration$1;-><init>(Lzendesk/support/request/ActionInstallConfiguration;Lt/a/f;Lzendesk/support/request/AsyncMiddleware$Callback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
