.class public Lcom/zendesk/service/e;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zendesk/service/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lcom/zendesk/service/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zendesk/service/f<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zendesk/service/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zendesk/service/e;->b:Lcom/zendesk/service/f;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/zendesk/service/e;->a:Z

    return-void
.end method

.method public static a(Lcom/zendesk/service/f;)Lcom/zendesk/service/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/zendesk/service/f<",
            "TT;>;)",
            "Lcom/zendesk/service/e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/zendesk/service/e;

    invoke-direct {v0, p0}, Lcom/zendesk/service/e;-><init>(Lcom/zendesk/service/f;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/zendesk/service/e;->a:Z

    return-void
.end method

.method public onError(Lcom/zendesk/service/a;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/zendesk/service/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/service/e;->b:Lcom/zendesk/service/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    goto :goto_0

    :cond_0
    const-string v0, "SafeZendeskCallback"

    .line 3
    invoke-static {v0, p1}, Lg/k/b/a;->c(Ljava/lang/String;Lcom/zendesk/service/a;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/zendesk/service/e;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zendesk/service/e;->b:Lcom/zendesk/service/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SafeZendeskCallback"

    const-string v1, "Operation was a success but callback is null or was cancelled"

    .line 3
    invoke-static {v0, v1, p1}, Lg/k/b/a;->k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
