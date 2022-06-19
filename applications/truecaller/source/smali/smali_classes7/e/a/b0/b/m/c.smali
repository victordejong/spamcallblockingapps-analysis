.class public final Le/a/b0/b/m/c;
.super Lu3/j0;
.source "SourceFile"


# instance fields
.field public final b:Landroid/graphics/Bitmap;

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/j0;-><init>()V

    iput-object p1, p0, Le/a/b0/b/m/c;->b:Landroid/graphics/Bitmap;

    iput p2, p0, Le/a/b0/b/m/c;->c:I

    return-void
.end method


# virtual methods
.method public b()Lu3/c0;
    .locals 1

    .line 1
    sget-object v0, Le/a/b0/b/a/c;->b:Lu3/c0;

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/b/m/c;->b:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Le/a/b0/b/m/c;->c:I

    invoke-interface {p1}, Lv3/g;->j2()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    return-void
.end method
