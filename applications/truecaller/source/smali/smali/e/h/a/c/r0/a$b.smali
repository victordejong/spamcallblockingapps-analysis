.class public Le/h/a/c/r0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/h/a/c/r0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Le/h/a/c/r0/a;Landroid/content/Context;Le/h/a/c/r0/a;[Landroid/widget/ImageView;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/h/a/c/r0/a$b;->a:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Le/h/a/c/r0/a$b;->b:[Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 4
    aget-object p1, p4, p1

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/clevertap/android/sdk/R$drawable;->ct_selected_dot:I

    .line 6
    sget-object p4, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    const/4 p4, 0x0

    .line 7
    invoke-virtual {p2, p3, p4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/h/a/c/r0/a$b;->b:[Landroid/widget/ImageView;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    .line 2
    iget-object v5, p0, Le/h/a/c/r0/a$b;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/clevertap/android/sdk/R$drawable;->ct_unselected_dot:I

    .line 4
    sget-object v7, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {v5, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/h/a/c/r0/a$b;->b:[Landroid/widget/ImageView;

    aget-object p1, v0, p1

    iget-object v0, p0, Le/h/a/c/r0/a$b;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/clevertap/android/sdk/R$drawable;->ct_selected_dot:I

    .line 9
    sget-object v2, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 10
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
