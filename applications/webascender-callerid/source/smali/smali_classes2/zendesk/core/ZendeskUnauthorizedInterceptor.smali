.class Lzendesk/core/ZendeskUnauthorizedInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final sessionStorage:Lzendesk/core/SessionStorage;


# direct methods
.method constructor <init>(Lzendesk/core/SessionStorage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/ZendeskUnauthorizedInterceptor;->sessionStorage:Lzendesk/core/SessionStorage;

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lm/g0;->y()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x191

    invoke-virtual {p1}, Lm/g0;->f()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lzendesk/core/ZendeskUnauthorizedInterceptor;->onHttpUnauthorized()V

    :cond_0
    return-object p1
.end method

.method onHttpUnauthorized()V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/ZendeskUnauthorizedInterceptor;->sessionStorage:Lzendesk/core/SessionStorage;

    invoke-interface {v0}, Lzendesk/core/SessionStorage;->clear()V

    return-void
.end method
