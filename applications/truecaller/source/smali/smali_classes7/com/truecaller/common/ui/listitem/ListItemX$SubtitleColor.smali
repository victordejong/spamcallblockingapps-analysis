.class public final enum Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/ui/listitem/ListItemX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubtitleColor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B1\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0004\u001a\u0004\u0008\u000c\u0010\u0006j\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;",
        "",
        "",
        "textColorBoldAttr",
        "I",
        "getTextColorBoldAttr",
        "()I",
        "iconColorAttr",
        "getIconColorAttr",
        "iconColorBoldAttr",
        "getIconColorBoldAttr",
        "textColorAttr",
        "getTextColorAttr",
        "<init>",
        "(Ljava/lang/String;IIIII)V",
        "DEFAULT",
        "BLUE",
        "RED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

.field public static final enum BLUE:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

.field public static final enum DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

.field public static final enum RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;


# instance fields
.field private final iconColorAttr:I

.field private final iconColorBoldAttr:I

.field private final textColorAttr:I

.field private final textColorBoldAttr:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    new-instance v8, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 1
    sget v7, Lcom/truecaller/common/ui/R$attr;->tcx_textSecondary:I

    sget v5, Lcom/truecaller/common/ui/R$attr;->tcx_textPrimary:I

    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_textTertiary:I

    const-string v2, "DEFAULT"

    const/4 v3, 0x0

    move-object v1, v8

    move v4, v7

    invoke-direct/range {v1 .. v7}, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;-><init>(Ljava/lang/String;IIIII)V

    sput-object v8, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 2
    sget v15, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    const-string v10, "BLUE"

    const/4 v11, 0x1

    move-object v9, v1

    move v12, v15

    move v13, v15

    move v14, v15

    invoke-direct/range {v9 .. v15}, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->BLUE:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    .line 3
    sget v9, Lcom/truecaller/common/ui/R$attr;->tcx_alertBackgroundRed:I

    const-string v4, "RED"

    const/4 v5, 0x2

    move-object v3, v1

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v9}, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;-><init>(Ljava/lang/String;IIIII)V

    sput-object v1, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->$VALUES:[Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->textColorAttr:I

    iput p4, p0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->textColorBoldAttr:I

    iput p5, p0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->iconColorAttr:I

    iput p6, p0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->iconColorBoldAttr:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;
    .locals 1

    const-class v0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;
    .locals 1

    sget-object v0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->$VALUES:[Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    invoke-virtual {v0}, [Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    return-object v0
.end method


# virtual methods
.method public final getIconColorAttr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->iconColorAttr:I

    return v0
.end method

.method public final getIconColorBoldAttr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->iconColorBoldAttr:I

    return v0
.end method

.method public final getTextColorAttr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->textColorAttr:I

    return v0
.end method

.method public final getTextColorBoldAttr()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->textColorBoldAttr:I

    return v0
.end method
