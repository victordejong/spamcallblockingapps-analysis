.class public final Lzendesk/support/request/RequestViewConversationsEnabled_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/request/RequestViewConversationsEnabled;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectAf(Lzendesk/support/request/RequestViewConversationsEnabled;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ActionFactory;

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled;->af:Lzendesk/support/request/ActionFactory;

    return-void
.end method

.method public static injectCellFactory(Lzendesk/support/request/RequestViewConversationsEnabled;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/CellFactory;

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled;->cellFactory:Lzendesk/support/request/CellFactory;

    return-void
.end method

.method public static injectPicasso(Lzendesk/support/request/RequestViewConversationsEnabled;Lg/i/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled;->picasso:Lg/i/a/d;

    return-void
.end method

.method public static injectStore(Lzendesk/support/request/RequestViewConversationsEnabled;Lt/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled;->store:Lt/a/q;

    return-void
.end method
