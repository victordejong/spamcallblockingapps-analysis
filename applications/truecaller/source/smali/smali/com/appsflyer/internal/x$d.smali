.class public final Lcom/appsflyer/internal/x$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field public static final AFInAppEventType:Lcom/appsflyer/internal/x;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/appsflyer/internal/x;

    invoke-direct {v0}, Lcom/appsflyer/internal/x;-><init>()V

    sput-object v0, Lcom/appsflyer/internal/x$d;->AFInAppEventType:Lcom/appsflyer/internal/x;

    return-void
.end method
