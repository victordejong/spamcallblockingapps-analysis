.class public final Le/a/b/a/b/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b/m/k1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/b/f;->b:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v1, p0, Le/a/b/a/b/f;->b:Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;

    .line 2
    sget v0, Lcom/truecaller/bizmon/R$id;->cta:I

    .line 3
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_0

    .line 4
    sget v0, Lcom/truecaller/bizmon/R$id;->icon:I

    .line 5
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v3, :cond_0

    .line 6
    sget v0, Lcom/truecaller/bizmon/R$id;->subtitle:I

    .line 7
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 8
    sget v0, Lcom/truecaller/bizmon/R$id;->title:I

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 10
    new-instance v6, Le/a/b/m/k1;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/b/m/k1;-><init>(Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v6

    .line 11
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
