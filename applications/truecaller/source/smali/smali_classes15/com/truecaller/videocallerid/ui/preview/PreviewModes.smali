.class public final enum Lcom/truecaller/videocallerid/ui/preview/PreviewModes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/videocallerid/ui/preview/PreviewModes;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\'\u0008\u0002\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006j\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/ui/preview/PreviewModes;",
        "",
        "",
        "description",
        "I",
        "getDescription",
        "()I",
        "actionButton",
        "getActionButton",
        "title",
        "getTitle",
        "<init>",
        "(Ljava/lang/String;IIII)V",
        "ON_BOARDING",
        "PREVIEW",
        "UPDATE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

.field public static final enum ON_BOARDING:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

.field public static final enum PREVIEW:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

.field public static final enum UPDATE:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;


# instance fields
.field private final actionButton:I

.field private final description:I

.field private final title:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    new-instance v7, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    .line 1
    sget v4, Lcom/truecaller/videocallerid/R$string;->vid_preview_on_boarding_title:I

    .line 2
    sget v5, Lcom/truecaller/videocallerid/R$string;->vid_preview_on_boarding_description:I

    .line 3
    sget v6, Lcom/truecaller/videocallerid/R$string;->vid_preview_create_now:I

    const-string v2, "ON_BOARDING"

    const/4 v3, 0x0

    move-object v1, v7

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->ON_BOARDING:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    .line 5
    sget v11, Lcom/truecaller/videocallerid/R$string;->vid_preview_create_new_video_title:I

    .line 6
    sget v12, Lcom/truecaller/videocallerid/R$string;->vid_preview_create_new_video_description:I

    .line 7
    sget v7, Lcom/truecaller/videocallerid/R$string;->vid_preview_got_it:I

    const-string v9, "PREVIEW"

    const/4 v10, 0x1

    move-object v8, v1

    move v13, v7

    .line 8
    invoke-direct/range {v8 .. v13}, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->PREVIEW:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    .line 9
    sget v5, Lcom/truecaller/videocallerid/R$string;->vid_preview_edit_video_title:I

    .line 10
    sget v6, Lcom/truecaller/videocallerid/R$string;->vid_preview_edit_video_description:I

    const-string v3, "UPDATE"

    const/4 v4, 0x2

    move-object v2, v1

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->UPDATE:Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->$VALUES:[Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->title:I

    iput p4, p0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->description:I

    iput p5, p0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->actionButton:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/videocallerid/ui/preview/PreviewModes;
    .locals 1

    const-class v0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/videocallerid/ui/preview/PreviewModes;
    .locals 1

    sget-object v0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->$VALUES:[Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    invoke-virtual {v0}, [Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/videocallerid/ui/preview/PreviewModes;

    return-object v0
.end method


# virtual methods
.method public final getActionButton()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->actionButton:I

    return v0
.end method

.method public final getDescription()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->description:I

    return v0
.end method

.method public final getTitle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/videocallerid/ui/preview/PreviewModes;->title:I

    return v0
.end method
