.class public final Le/a/l/c/a/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/i;-><init>(Landroid/view/View;Le/a/o2/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b0/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/c/a/i;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/l/c/a/i;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/i$a;->b:Le/a/l/c/a/i;

    iput-object p2, p0, Le/a/l/c/a/i$a;->c:Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/b0/a/g;

    iget-object v1, p0, Le/a/l/c/a/i$a;->b:Le/a/l/c/a/i;

    .line 2
    iget-object v1, v1, Le/a/l/c/a/i;->d:Le/a/p5/i0;

    .line 3
    invoke-direct {v0, v1}, Le/a/b0/a/g;-><init>(Le/a/p5/h0;)V

    .line 4
    iget-object v1, p0, Le/a/l/c/a/i$a;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070501

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method
