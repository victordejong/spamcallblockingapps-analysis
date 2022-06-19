.class Lzendesk/core/AcceptHeaderInterceptor;
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm/e0;->i()Lm/e0$a;

    move-result-object v0

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 3
    invoke-virtual {v0, v1, v2}, Lm/e0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 4
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1
.end method
