.class Lzendesk/core/ZendeskProviderStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/core/ProviderStore;


# instance fields
.field private final pushRegistrationProvider:Lzendesk/core/PushRegistrationProvider;

.field private final userProvider:Lzendesk/core/UserProvider;


# direct methods
.method constructor <init>(Lzendesk/core/UserProvider;Lzendesk/core/PushRegistrationProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskProviderStore;->userProvider:Lzendesk/core/UserProvider;

    .line 3
    iput-object p2, p0, Lzendesk/core/ZendeskProviderStore;->pushRegistrationProvider:Lzendesk/core/PushRegistrationProvider;

    return-void
.end method
