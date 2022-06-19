.class public final Le/a/b0/a/c/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/c/e;->b:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b0/a/c/e;->b:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    .line 2
    sget v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->i:I

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/common/ui/R$dimen;->avatar_tcx_line_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/truecaller/common/ui/R$dimen;->avatar_tcx_default_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr v1, v0

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
