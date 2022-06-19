.class public final Lcom/truecaller/common/ui/avatar/AvatarXView$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/avatar/AvatarXView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation


# static fields
.field public static final c:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

.field public static final d:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

.field public static final e:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

.field public static final f:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

.field public static final g:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

.field public static final h:Lcom/truecaller/common/ui/avatar/AvatarXView$a;


# instance fields
.field public final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;->c:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    new-instance v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;->d:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    new-instance v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;->e:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    new-instance v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;->f:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    new-instance v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;->g:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    new-instance v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/truecaller/common/ui/avatar/AvatarXView$a;-><init>(I)V

    sput-object v0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;->h:Lcom/truecaller/common/ui/avatar/AvatarXView$a;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/truecaller/common/ui/avatar/AvatarXView$a;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0

    .line 11
    :cond_3
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 13
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0

    .line 14
    :cond_4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0

    .line 17
    :cond_5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method
