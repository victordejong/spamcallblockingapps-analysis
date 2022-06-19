.class public final Le/a/v/a/c0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/c0/p;


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/v/a/c0/q;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)V
    .locals 3

    const-string v0, "image"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget v1, p0, Le/a/v/a/c0/q;->a:I

    .line 3
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v0, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
