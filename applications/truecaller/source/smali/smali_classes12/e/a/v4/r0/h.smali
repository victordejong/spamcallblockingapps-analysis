.class public final Le/a/v4/r0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/j0/a;


# instance fields
.field public final a:Landroid/widget/LinearLayout;

.field public final b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatCheckedTextView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/v4/r0/h;->a:Landroid/widget/LinearLayout;

    .line 3
    iput-object p2, p0, Le/a/v4/r0/h;->b:Landroidx/appcompat/widget/AppCompatCheckedTextView;

    .line 4
    iput-object p3, p0, Le/a/v4/r0/h;->c:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/View;)Le/a/v4/r0/h;
    .locals 3

    .line 1
    sget v0, Lcom/truecaller/sdk/R$id;->checkbox:I

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatCheckedTextView;

    if-eqz v1, :cond_0

    .line 3
    sget v0, Lcom/truecaller/sdk/R$id;->divider:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    new-instance v0, Le/a/v4/r0/h;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1, v2}, Le/a/v4/r0/h;-><init>(Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatCheckedTextView;Landroid/view/View;)V

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
