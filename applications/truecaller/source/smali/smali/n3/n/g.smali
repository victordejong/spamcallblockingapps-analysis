.class public Ln3/n/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ln3/n/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/n/e;

    invoke-direct {v0}, Ln3/n/e;-><init>()V

    sput-object v0, Ln3/n/g;->a:Ln3/n/d;

    return-void
.end method

.method public static a(Ln3/n/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Ln3/n/f;",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln3/n/g;->a:Ln3/n/d;

    invoke-virtual {v0, p0, p1, p2}, Ln3/n/d;->getDataBinder(Ln3/n/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Ln3/n/g;->c(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLn3/n/f;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLn3/n/f;)Landroidx/databinding/ViewDataBinding;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/databinding/ViewDataBinding;",
            ">(",
            "Landroid/view/LayoutInflater;",
            "I",
            "Landroid/view/ViewGroup;",
            "Z",
            "Ln3/n/f;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    .line 2
    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz v2, :cond_4

    .line 3
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    sub-int p3, p0, v3

    if-ne p3, v0, :cond_2

    sub-int/2addr p0, v0

    .line 4
    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 5
    invoke-static {p4, p0, p1}, Ln3/n/g;->a(Ln3/n/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    goto :goto_3

    .line 6
    :cond_2
    new-array p0, p3, [Landroid/view/View;

    :goto_2
    if-ge v1, p3, :cond_3

    add-int v0, v1, v3

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    aput-object v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8
    :cond_3
    sget-object p2, Ln3/n/g;->a:Ln3/n/d;

    invoke-virtual {p2, p4, p0, p1}, Ln3/n/d;->getDataBinder(Ln3/n/f;[Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    :goto_3
    return-object p0

    .line 9
    :cond_4
    invoke-static {p4, p0, p1}, Ln3/n/g;->a(Ln3/n/f;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    return-object p0
.end method
