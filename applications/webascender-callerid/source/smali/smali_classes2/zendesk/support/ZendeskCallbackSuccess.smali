.class abstract Lzendesk/support/ZendeskCallbackSuccess;
.super Lcom/zendesk/service/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/zendesk/service/f<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/zendesk/service/f;


# direct methods
.method constructor <init>(Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zendesk/service/f;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/ZendeskCallbackSuccess;->callback:Lcom/zendesk/service/f;

    return-void
.end method


# virtual methods
.method public onError(Lcom/zendesk/service/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/ZendeskCallbackSuccess;->callback:Lcom/zendesk/service/f;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/zendesk/service/f;->onError(Lcom/zendesk/service/a;)V

    :cond_0
    return-void
.end method
