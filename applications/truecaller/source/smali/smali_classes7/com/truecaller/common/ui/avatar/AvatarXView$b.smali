.class public final Lcom/truecaller/common/ui/avatar/AvatarXView$b;
.super Le/f/a/r/k/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/avatar/AvatarXView;->F(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/d<",
        "Landroid/widget/ImageView;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/truecaller/common/ui/avatar/AvatarXView;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXView$b;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-direct {p0, p2}, Le/f/a/r/k/d;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXView$b;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/common/ui/avatar/AvatarXView;->c:Le/a/b0/a/b/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Le/a/b0/a/b/c;->Xj(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p2, "resource"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/common/ui/avatar/AvatarXView$b;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 4
    iget-object p2, p2, Lcom/truecaller/common/ui/avatar/AvatarXView;->c:Le/a/b0/a/b/c;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2, p1}, Le/a/b0/a/b/c;->Xj(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public i(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/common/ui/avatar/AvatarXView$b;->d:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 2
    iget-object p1, p1, Lcom/truecaller/common/ui/avatar/AvatarXView;->c:Le/a/b0/a/b/c;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Le/a/b0/a/b/c;->Xj(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
