.class public final Le/a/z3/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/k<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/BitmapFactory$Options;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Le/f/a/n/i;)Z
    .locals 1

    .line 1
    check-cast p1, Ljava/io/InputStream;

    const-string v0, "source"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "options"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/InputStream;

    const-string p2, "source"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "options"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 p3, 0x0

    .line 5
    invoke-static {p1, p3, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6
    new-instance p1, Le/f/a/n/q/b;

    invoke-direct {p1, p2}, Le/f/a/n/q/b;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
