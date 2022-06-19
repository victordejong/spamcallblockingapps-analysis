.class final enum Lzendesk/support/requestlist/RequestListView$SceneState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/requestlist/RequestListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SceneState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/requestlist/RequestListView$SceneState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/requestlist/RequestListView$SceneState;

.field public static final enum EMPTY:Lzendesk/support/requestlist/RequestListView$SceneState;

.field public static final enum LIST:Lzendesk/support/requestlist/RequestListView$SceneState;

.field public static final enum NONE:Lzendesk/support/requestlist/RequestListView$SceneState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lzendesk/support/requestlist/RequestListView$SceneState;

    const-string v1, "LIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/requestlist/RequestListView$SceneState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/requestlist/RequestListView$SceneState;->LIST:Lzendesk/support/requestlist/RequestListView$SceneState;

    .line 2
    new-instance v1, Lzendesk/support/requestlist/RequestListView$SceneState;

    const-string v3, "EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/support/requestlist/RequestListView$SceneState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/support/requestlist/RequestListView$SceneState;->EMPTY:Lzendesk/support/requestlist/RequestListView$SceneState;

    .line 3
    new-instance v3, Lzendesk/support/requestlist/RequestListView$SceneState;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/support/requestlist/RequestListView$SceneState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/support/requestlist/RequestListView$SceneState;->NONE:Lzendesk/support/requestlist/RequestListView$SceneState;

    const/4 v5, 0x3

    new-array v5, v5, [Lzendesk/support/requestlist/RequestListView$SceneState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lzendesk/support/requestlist/RequestListView$SceneState;->$VALUES:[Lzendesk/support/requestlist/RequestListView$SceneState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/requestlist/RequestListView$SceneState;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/requestlist/RequestListView$SceneState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/requestlist/RequestListView$SceneState;

    return-object p0
.end method

.method public static values()[Lzendesk/support/requestlist/RequestListView$SceneState;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/requestlist/RequestListView$SceneState;->$VALUES:[Lzendesk/support/requestlist/RequestListView$SceneState;

    invoke-virtual {v0}, [Lzendesk/support/requestlist/RequestListView$SceneState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/requestlist/RequestListView$SceneState;

    return-object v0
.end method
