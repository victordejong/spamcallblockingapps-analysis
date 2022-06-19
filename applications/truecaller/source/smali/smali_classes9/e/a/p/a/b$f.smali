.class public final Le/a/p/a/b$f;
.super Le/f/a/r/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/b;->A2(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/c<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Le/a/p/a/b;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Le/a/p/a/b;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/p/a/b$f;->d:Le/a/p/a/b;

    iput p2, p0, Le/a/p/a/b$f;->e:I

    invoke-direct {p0, p4, p5}, Le/f/a/r/k/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p2, "resource"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/p/a/b$f;->d:Le/a/p/a/b;

    .line 4
    sget v0, Le/a/p/a/b;->W:I

    .line 5
    invoke-virtual {p2}, Le/a/p/a/b;->lB()Landroid/widget/EditText;

    move-result-object p2

    const-string v0, "tagEditText"

    .line 6
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Le/a/p/a/b$f;->e:I

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setCompoundDrawablePadding(I)V

    .line 7
    iget-object p2, p0, Le/a/p/a/b$f;->d:Le/a/p/a/b;

    .line 8
    invoke-virtual {p2}, Le/a/p/a/b;->lB()Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p2, p1, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
