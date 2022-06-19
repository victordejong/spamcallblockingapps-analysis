.class public Le/f/a/n/q/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/q/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/q/i/e<",
        "Landroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/graphics/Bitmap$CompressFormat;

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object v0, p0, Le/f/a/n/q/i/a;->a:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Le/f/a/n/q/i/a;->b:I

    return-void
.end method


# virtual methods
.method public a(Le/f/a/n/o/w;Le/f/a/n/i;)Le/f/a/n/o/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/w<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Le/f/a/n/i;",
            ")",
            "Le/f/a/n/o/w<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    invoke-interface {p1}, Le/f/a/n/o/w;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Le/f/a/n/q/i/a;->a:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Le/f/a/n/q/i/a;->b:I

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 3
    invoke-interface {p1}, Le/f/a/n/o/w;->b()V

    .line 4
    new-instance p1, Le/f/a/n/q/e/b;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-direct {p1, p2}, Le/f/a/n/q/e/b;-><init>([B)V

    return-object p1
.end method
