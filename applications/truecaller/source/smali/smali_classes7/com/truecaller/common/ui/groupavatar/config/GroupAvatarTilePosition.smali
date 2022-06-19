.class public abstract enum Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$c;,
        Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$d;,
        Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$e;,
        Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$f;,
        Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$a;,
        Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0000\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;",
        "",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "Left",
        "Right",
        "TopLeft",
        "TopRight",
        "BottomLeft",
        "BottomRight",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

.field public static final enum BottomLeft:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

.field public static final enum BottomRight:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

.field public static final enum Left:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

.field public static final enum Right:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

.field public static final enum TopLeft:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

.field public static final enum TopRight:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    new-instance v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$c;

    const-string v2, "Left"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->Left:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$d;

    const-string v2, "Right"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->Right:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$e;

    const-string v2, "TopLeft"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->TopLeft:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$f;

    const-string v2, "TopRight"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->TopRight:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$a;

    const-string v2, "BottomLeft"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->BottomLeft:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$b;

    const-string v2, "BottomRight"

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->BottomRight:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->$VALUES:[Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILs1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;
    .locals 1

    const-class v0, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;
    .locals 1

    sget-object v0, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->$VALUES:[Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    invoke-virtual {v0}, [Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    return-object v0
.end method


# virtual methods
.method public abstract synthetic calculateBounds(FF)Landroid/graphics/RectF;
.end method

.method public abstract synthetic calculateMargin(F)Landroid/graphics/RectF;
.end method
