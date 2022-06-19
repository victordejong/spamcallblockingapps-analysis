.class public final Lzendesk/support/request/RequestViewConversationsDisabled_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/request/RequestViewConversationsDisabled;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectAf(Lzendesk/support/request/RequestViewConversationsDisabled;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ActionFactory;

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->af:Lzendesk/support/request/ActionFactory;

    return-void
.end method

.method public static injectPicasso(Lzendesk/support/request/RequestViewConversationsDisabled;Lg/i/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->picasso:Lg/i/a/d;

    return-void
.end method

.method public static injectStore(Lzendesk/support/request/RequestViewConversationsDisabled;Lt/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsDisabled;->store:Lt/a/q;

    return-void
.end method
