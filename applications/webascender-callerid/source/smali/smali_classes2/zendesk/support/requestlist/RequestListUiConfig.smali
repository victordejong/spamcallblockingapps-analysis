.class public Lzendesk/support/requestlist/RequestListUiConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/commonui/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/requestlist/RequestListUiConfig$Builder;
    }
.end annotation


# instance fields
.field private final uiConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzendesk/support/requestlist/RequestListUiConfig$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lzendesk/support/requestlist/RequestListUiConfig$Builder;->access$000(Lzendesk/support/requestlist/RequestListUiConfig$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/requestlist/RequestListUiConfig;->uiConfigs:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/support/requestlist/RequestListUiConfig$Builder;Lzendesk/support/requestlist/RequestListUiConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/requestlist/RequestListUiConfig;-><init>(Lzendesk/support/requestlist/RequestListUiConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public getUiConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzendesk/commonui/p;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/requestlist/RequestListUiConfig;->uiConfigs:Ljava/util/List;

    invoke-static {v0, p0}, Lzendesk/commonui/q;->a(Ljava/util/List;Lzendesk/commonui/p;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
