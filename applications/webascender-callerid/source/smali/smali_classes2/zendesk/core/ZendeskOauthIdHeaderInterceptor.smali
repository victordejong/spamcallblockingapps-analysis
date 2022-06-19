.class Lzendesk/core/ZendeskOauthIdHeaderInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final oauthId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskOauthIdHeaderInterceptor;->oauthId:Ljava/lang/String;

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
    iget-object v1, p0, Lzendesk/core/ZendeskOauthIdHeaderInterceptor;->oauthId:Ljava/lang/String;

    invoke-static {v1}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lzendesk/core/ZendeskOauthIdHeaderInterceptor;->oauthId:Ljava/lang/String;

    const-string v2, "Client-Identifier"

    invoke-virtual {v0, v2, v1}, Lm/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 4
    :cond_0
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
