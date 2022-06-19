.class public final enum Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;",
        "",
        "",
        "buttonTextResource",
        "I",
        "getButtonTextResource",
        "()I",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Setup",
        "Manage",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

.field public static final enum Manage:Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

.field public static final enum Setup:Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;


# instance fields
.field private final buttonTextResource:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    new-instance v1, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    .line 1
    sget v2, Lcom/truecaller/videocallerid/R$string;->vid_settings_setup:I

    const-string v3, "Setup"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;->Setup:Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    .line 2
    sget v2, Lcom/truecaller/videocallerid/R$string;->vid_settings_manage:I

    const-string v3, "Manage"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;->Manage:Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;->$VALUES:[Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

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

    iput p3, p0, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;->buttonTextResource:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;
    .locals 1

    const-class v0, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;
    .locals 1

    sget-object v0, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;->$VALUES:[Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    invoke-virtual {v0}, [Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;

    return-object v0
.end method


# virtual methods
.method public final getButtonTextResource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/videocallerid/ui/settings/ConfigureButtonType;->buttonTextResource:I

    return v0
.end method
