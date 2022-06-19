.class public final Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition$f;
.super Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;-><init>(Ljava/lang/String;ILs1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public calculateBounds(FF)Landroid/graphics/RectF;
    .locals 3

    add-float v0, p1, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float p2, p1, p2

    div-float/2addr p2, v1

    .line 1
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public calculateMargin(F)Landroid/graphics/RectF;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method
