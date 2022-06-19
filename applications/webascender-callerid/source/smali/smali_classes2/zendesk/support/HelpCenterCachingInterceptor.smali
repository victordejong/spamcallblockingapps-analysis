.class Lzendesk/support/HelpCenterCachingInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    invoke-virtual {p1}, Lm/g0;->r()Lm/x;

    move-result-object v0

    const-string v1, "X-ZD-Cache-Control"

    invoke-virtual {v0, v1}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lm/g0;->C()Lm/g0$a;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v1}, Lm/g0;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Cache-Control"

    invoke-virtual {v0, v1, p1}, Lm/g0$a;->j(Ljava/lang/String;Ljava/lang/String;)Lm/g0$a;

    .line 5
    invoke-virtual {v0}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    :cond_0
    return-object p1
.end method
