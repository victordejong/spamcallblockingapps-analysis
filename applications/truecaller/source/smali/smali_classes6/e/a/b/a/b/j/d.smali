.class public final Le/a/b/a/b/j/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b/m/f1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/b/j/d;->b:Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/b/j/d;->b:Lcom/truecaller/bizmon/newBusiness/components/images/BusinessImageListWidget;

    .line 2
    sget v1, Lcom/truecaller/bizmon/R$id;->imageList:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 4
    new-instance v1, Le/a/b/m/f1;

    invoke-direct {v1, v0, v2}, Le/a/b/m/f1;-><init>(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
