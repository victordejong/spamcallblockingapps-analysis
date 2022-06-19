.class public Le/a/e/o1$b;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/o1$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/e/o1$b$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/i5/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public final synthetic d:Le/a/e/o1;


# direct methods
.method public constructor <init>(Le/a/e/o1;Landroid/view/View;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Le/a/i5/d;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/e/o1$b;->d:Le/a/e/o1;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Le/a/e/o1$b;->c:I

    .line 3
    iput-object p2, p0, Le/a/e/o1$b;->a:Landroid/view/View;

    .line 4
    iput-object p3, p0, Le/a/e/o1$b;->b:Ljava/util/List;

    .line 5
    iput p4, p0, Le/a/e/o1$b;->c:I

    return-void
.end method


# virtual methods
.method public e(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/o1$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/a/e/o1$b;->e(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 7

    .line 1
    check-cast p1, Le/a/e/o1$b$a;

    .line 2
    invoke-virtual {p0, p2}, Le/a/e/o1$b;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/e/o1$b;->b:Ljava/util/List;

    add-int/lit8 v1, p2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i5/d;

    .line 4
    iget v1, p0, Le/a/e/o1$b;->c:I

    const/4 v2, 0x1

    if-ne v1, p2, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 5
    :goto_0
    iget-object v1, p1, Le/a/e/o1$b$a;->a:Landroid/widget/TextView;

    .line 6
    iget v3, v0, Le/a/i5/d;->b:I

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object v1, p1, Le/a/e/o1$b$a;->e:Le/a/e/o1$b;

    iget-object v1, v1, Le/a/e/o1$b;->d:Le/a/e/o1;

    .line 9
    iget-object v1, v1, Le/a/e/o1;->f:Landroid/view/ContextThemeWrapper;

    .line 10
    iget v3, v0, Le/a/i5/d;->c:I

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 12
    iget-object v1, p1, Le/a/e/o1$b$a;->e:Le/a/e/o1$b;

    iget-object v1, v1, Le/a/e/o1$b;->d:Le/a/e/o1;

    .line 13
    iget-object v1, v1, Le/a/e/o1;->f:Landroid/view/ContextThemeWrapper;

    .line 14
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 15
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    const v4, 0x7f0406de

    .line 16
    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    iget-object v4, p1, Le/a/e/o1$b$a;->e:Le/a/e/o1$b;

    iget-object v4, v4, Le/a/e/o1$b;->d:Le/a/e/o1;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    .line 18
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 19
    invoke-static {v4, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v4

    const v5, 0x7f0406f4

    .line 20
    invoke-virtual {v1, v5, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 21
    iget-object v5, p1, Le/a/e/o1$b$a;->e:Le/a/e/o1$b;

    iget-object v5, v5, Le/a/e/o1$b;->d:Le/a/e/o1;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    .line 22
    invoke-static {v5, v6}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v5

    .line 23
    iget-object v6, p1, Le/a/e/o1$b$a;->b:Lcom/truecaller/ui/view/ThemeSelectorView;

    invoke-virtual {v6, v5}, Lcom/truecaller/ui/view/ThemeSelectorView;->setLeftColor(I)V

    .line 24
    iget-object v5, p1, Le/a/e/o1$b$a;->b:Lcom/truecaller/ui/view/ThemeSelectorView;

    invoke-virtual {v5, v4}, Lcom/truecaller/ui/view/ThemeSelectorView;->setRightColor(I)V

    if-eqz p2, :cond_2

    const p2, 0x7f040720

    .line 25
    invoke-virtual {v1, p2, v3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 26
    iget-object p2, p1, Le/a/e/o1$b$a;->a:Landroid/widget/TextView;

    iget-object v1, p1, Le/a/e/o1$b$a;->e:Le/a/e/o1$b;

    iget-object v1, v1, Le/a/e/o1$b;->d:Le/a/e/o1;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 27
    invoke-static {v1, v2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 28
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 29
    iget-object p2, p1, Le/a/e/o1$b$a;->a:Landroid/widget/TextView;

    iget v1, p1, Le/a/e/o1$b$a;->c:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object p1, p1, Le/a/e/o1$b$a;->e:Le/a/e/o1$b;

    iget-object p1, p1, Le/a/e/o1$b;->d:Le/a/e/o1;

    .line 31
    iget-object p1, p1, Le/a/e/o1;->e:Lcom/truecaller/ui/view/ThemePreviewView;

    .line 32
    iget-object p2, p1, Lcom/truecaller/ui/view/ThemePreviewView;->a:Landroid/view/ContextThemeWrapper;

    .line 33
    iget v0, v0, Le/a/i5/d;->c:I

    .line 34
    invoke-virtual {p2, v0}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 35
    invoke-virtual {p1}, Lcom/truecaller/ui/view/ThemePreviewView;->a()V

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 37
    :cond_2
    iget-object p2, p1, Le/a/e/o1$b$a;->a:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object p2, p1, Le/a/e/o1$b$a;->a:Landroid/widget/TextView;

    iget p1, p1, Le/a/e/o1$b$a;->d:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    new-instance p1, Le/a/e/o1$b$a;

    iget-object p2, p0, Le/a/e/o1$b;->a:Landroid/view/View;

    invoke-direct {p1, p0, p2}, Le/a/e/o1$b$a;-><init>(Le/a/e/o1$b;Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d039d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/e/o1$b$a;

    invoke-direct {p2, p0, p1}, Le/a/e/o1$b$a;-><init>(Le/a/e/o1$b;Landroid/view/View;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method
