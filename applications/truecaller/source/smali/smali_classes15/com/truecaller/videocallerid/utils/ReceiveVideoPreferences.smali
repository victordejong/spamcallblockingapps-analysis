.class public final enum Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\n\u0008\u0080\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;",
        "",
        "",
        "value",
        "I",
        "getValue",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Everyone",
        "Contacts",
        "NoOne",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

.field public static final enum Contacts:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

.field public static final enum Everyone:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

.field public static final enum NoOne:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    new-instance v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    const-string v2, "Everyone"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Everyone:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    const-string v2, "Contacts"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->Contacts:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    const-string v2, "NoOne"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v3}, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->NoOne:Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->$VALUES:[Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;
    .locals 1

    const-class v0, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;
    .locals 1

    sget-object v0, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->$VALUES:[Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    invoke-virtual {v0}, [Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/videocallerid/utils/ReceiveVideoPreferences;->value:I

    return v0
.end method
