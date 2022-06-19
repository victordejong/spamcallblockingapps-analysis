.class public Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/notifications/internal/InternalTruecallerNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationActionHistoryItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;->NONE:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    iput-object v0, p0, Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem;->b:Lcom/truecaller/notifications/internal/InternalTruecallerNotification$NotificationActionHistoryItem$Action;

    return-void
.end method
