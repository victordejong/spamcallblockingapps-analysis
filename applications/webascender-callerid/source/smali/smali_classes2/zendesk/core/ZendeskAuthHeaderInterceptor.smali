.class Lzendesk/core/ZendeskAuthHeaderInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private identityManager:Lzendesk/core/IdentityManager;


# direct methods
.method constructor <init>(Lzendesk/core/IdentityManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskAuthHeaderInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->i()Lm/e0$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lzendesk/core/ZendeskAuthHeaderInterceptor;->identityManager:Lzendesk/core/IdentityManager;

    invoke-interface {v1}, Lzendesk/core/IdentityManager;->getStoredAccessTokenAsBearerToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Authorization"

    .line 3
    invoke-virtual {v0, v2, v1}, Lm/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
