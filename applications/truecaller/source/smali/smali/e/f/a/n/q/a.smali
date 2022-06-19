.class public abstract Le/f/a/n/q/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/n/k<",
        "Landroid/graphics/ImageDecoder$Source;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/q/d/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Le/f/a/n/q/d/t;->a()Le/f/a/n/q/d/t;

    move-result-object v0

    iput-object v0, p0, Le/f/a/n/q/a;->a:Le/f/a/n/q/d/t;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Le/f/a/n/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/graphics/ImageDecoder$Source;

    invoke-virtual {p0, p1, p2, p3, p4}, Le/f/a/n/q/a;->c(Landroid/graphics/ImageDecoder$Source;IILe/f/a/n/i;)Le/f/a/n/o/w;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/graphics/ImageDecoder$Source;IILe/f/a/n/i;)Le/f/a/n/o/w;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Le/f/a/n/i;",
            ")",
            "Le/f/a/n/o/w<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/n;->f:Le/f/a/n/h;

    invoke-virtual {p4, v0}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/f/a/n/b;

    .line 2
    sget-object v0, Le/f/a/n/q/d/m;->g:Le/f/a/n/h;

    invoke-virtual {p4, v0}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Le/f/a/n/q/d/m;

    .line 3
    sget-object v0, Le/f/a/n/q/d/n;->i:Le/f/a/n/h;

    .line 4
    invoke-virtual {p4, v0}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p4, v0}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 6
    sget-object v0, Le/f/a/n/q/d/n;->g:Le/f/a/n/h;

    invoke-virtual {p4, v0}, Le/f/a/n/i;->c(Le/f/a/n/h;)Ljava/lang/Object;

    move-result-object p4

    move-object v8, p4

    check-cast v8, Le/f/a/n/j;

    .line 7
    new-instance p4, Le/f/a/n/q/a$a;

    move-object v1, p4

    move-object v2, p0

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v8}, Le/f/a/n/q/a$a;-><init>(Le/f/a/n/q/a;IIZLe/f/a/n/b;Le/f/a/n/q/d/m;Le/f/a/n/j;)V

    move-object p2, p0

    check-cast p2, Le/f/a/n/q/d/d;

    .line 8
    invoke-static {p1, p4}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 p3, 0x2

    const-string p4, "BitmapImageDecoder"

    .line 9
    invoke-static {p4, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 12
    :cond_1
    new-instance p3, Le/f/a/n/q/d/e;

    iget-object p2, p2, Le/f/a/n/q/d/d;->b:Le/f/a/n/o/b0/d;

    invoke-direct {p3, p1, p2}, Le/f/a/n/q/d/e;-><init>(Landroid/graphics/Bitmap;Le/f/a/n/o/b0/d;)V

    return-object p3
.end method
