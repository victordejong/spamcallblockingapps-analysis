.class public final Lzendesk/support/request/RequestActivity_MembersInjector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lzendesk/support/request/RequestActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public static injectActionHandlerRegistry(Lzendesk/support/request/RequestActivity;Lzendesk/core/ActionHandlerRegistry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->actionHandlerRegistry:Lzendesk/core/ActionHandlerRegistry;

    return-void
.end method

.method public static injectAf(Lzendesk/support/request/RequestActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/ActionFactory;

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->af:Lzendesk/support/request/ActionFactory;

    return-void
.end method

.method public static injectHeadlessComponentListener(Lzendesk/support/request/RequestActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lzendesk/support/request/HeadlessComponentListener;

    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->headlessComponentListener:Lzendesk/support/request/HeadlessComponentListener;

    return-void
.end method

.method public static injectPicasso(Lzendesk/support/request/RequestActivity;Lg/i/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->picasso:Lg/i/a/d;

    return-void
.end method

.method public static injectStore(Lzendesk/support/request/RequestActivity;Lt/a/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/RequestActivity;->store:Lt/a/q;

    return-void
.end method
