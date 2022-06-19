.class public Le/a/j4/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j4/b/a/i$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/a/j4/b/a/i$a<",
        "Lcom/truecaller/notifications/internal/InternalTruecallerNotification;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/j4/b/a/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;->q()Lcom/truecaller/network/notification/NotificationType;

    move-result-object p1

    sget-object v0, Lcom/truecaller/network/notification/NotificationType;->SOFTWARE_UPDATE:Lcom/truecaller/network/notification/NotificationType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/truecaller/notifications/internal/InternalTruecallerNotification;-><init>(Ljava/util/Collection;Ljava/util/Map;)V

    return-object v0
.end method
