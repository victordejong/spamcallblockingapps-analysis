.class Lzendesk/support/ZendeskRequestSessionCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/RequestSessionCache;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
