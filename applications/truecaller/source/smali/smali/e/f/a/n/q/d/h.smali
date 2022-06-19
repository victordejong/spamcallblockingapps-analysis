.class public final Le/f/a/n/q/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/k<",
        "Ljava/nio/ByteBuffer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/q/d/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/f/a/n/q/d/d;

    invoke-direct {v0}, Le/f/a/n/q/d/d;-><init>()V

    iput-object v0, p0, Le/f/a/n/q/d/h;->a:Le/f/a/n/q/d/d;

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
    check-cast p1, Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/f/a/n/q/d/h;->a:Le/f/a/n/q/d/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/f/a/n/q/a;->c(Landroid/graphics/ImageDecoder$Source;IILe/f/a/n/i;)Le/f/a/n/o/w;

    move-result-object p1

    return-object p1
.end method
