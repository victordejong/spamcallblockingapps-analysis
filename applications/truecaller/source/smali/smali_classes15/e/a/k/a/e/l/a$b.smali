.class public final Le/a/k/a/e/l/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/e/l/a;-><init>(Landroid/view/View;Le/a/k/a/e/l/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/k/m/n;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/a/e/l/a;


# direct methods
.method public constructor <init>(Le/a/k/a/e/l/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/e/l/a$b;->b:Le/a/k/a/e/l/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/a/e/l/a$b;->b:Le/a/k/a/e/l/a;

    .line 2
    iget-object v0, v0, Le/a/k/a/e/l/a;->c:Landroid/view/View;

    .line 3
    sget v1, Lcom/truecaller/videocallerid/R$id;->avatarView:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz v2, :cond_0

    .line 5
    sget v1, Lcom/truecaller/videocallerid/R$id;->cancelButton:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 7
    sget v1, Lcom/truecaller/videocallerid/R$id;->contactName:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 9
    new-instance v1, Le/a/k/m/n;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {v1, v0, v2, v3, v4}, Le/a/k/m/n;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/truecaller/common/ui/avatar/AvatarXView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v1

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
