.class public final Le/a/m3/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/j0/a;


# instance fields
.field public final a:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/m3/r0;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 3
    iput-object p3, p0, Le/a/m3/r0;->b:Landroid/widget/TextView;

    .line 4
    iput-object p4, p0, Le/a/m3/r0;->c:Landroid/widget/ImageView;

    return-void
.end method

.method public static a(Landroid/view/View;)Le/a/m3/r0;
    .locals 4

    const v0, 0x7f0a01b7

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a0c10

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a0e15

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 4
    new-instance v0, Le/a/m3/r0;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v0, p0, v1, v2, v3}, Le/a/m3/r0;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
