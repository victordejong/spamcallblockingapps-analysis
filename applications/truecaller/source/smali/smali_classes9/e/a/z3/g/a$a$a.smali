.class public final Le/a/z3/g/a$a$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/z3/g/a$a;->d(Le/f/a/f;Le/f/a/n/n/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/graphics/Bitmap;",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/z3/g/a$a;

.field public final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Le/a/z3/g/a$a;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Le/a/z3/g/a$a$a;->b:Le/a/z3/g/a$a;

    iput-object p2, p0, Le/a/z3/g/a$a$a;->c:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v1, p0, Le/a/z3/g/a$a$a;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Le/a/z3/g/a$a$a;->b:Le/a/z3/g/a$a;

    .line 4
    iget v3, v2, Le/a/z3/g/a$a;->d:I

    .line 5
    iget v2, v2, Le/a/z3/g/a$a;->e:I

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v4, v4, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v1, p0, Le/a/z3/g/a$a$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    iget-object v0, p0, Le/a/z3/g/a$a$a;->b:Le/a/z3/g/a$a;

    const-string v1, "bitmap"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Le/a/z3/g/a$a;->e(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
