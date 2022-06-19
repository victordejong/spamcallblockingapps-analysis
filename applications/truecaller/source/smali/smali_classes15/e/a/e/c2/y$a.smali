.class public Le/a/e/c2/y$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c2/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Le/a/o5/j0;->b:I

    const v0, 0x7f0a0b22

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4
    check-cast v0, Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Le/a/e/c2/y$a;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0b1e

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/TextView;

    .line 8
    iput-object v0, p0, Le/a/e/c2/y$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0a000b

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/ImageView;

    .line 11
    iput-object v0, p0, Le/a/e/c2/y$a;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a0b23

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/ImageView;

    .line 14
    iput-object v0, p0, Le/a/e/c2/y$a;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a0df9

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Le/a/e/c2/y$a;->e:Landroid/widget/ImageView;

    return-void
.end method
