.class public Le/f/a/n/q/d/g;
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
.field public final a:Le/f/a/n/q/d/n;


# direct methods
.method public constructor <init>(Le/f/a/n/q/d/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/d/g;->a:Le/f/a/n/q/d/n;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Le/f/a/n/i;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    iget-object p1, p0, Le/f/a/n/q/d/g;->a:Le/f/a/n/q/d/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 2
    sget-object v0, Le/f/a/t/a;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v2, Le/f/a/t/a$a;

    invoke-direct {v2, p1}, Le/f/a/t/a$a;-><init>(Ljava/nio/ByteBuffer;)V

    .line 4
    iget-object v1, p0, Le/f/a/n/q/d/g;->a:Le/f/a/n/q/d/n;

    .line 5
    sget-object v6, Le/f/a/n/q/d/n;->k:Le/f/a/n/q/d/n$b;

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Le/f/a/n/q/d/n;->a(Ljava/io/InputStream;IILe/f/a/n/i;Le/f/a/n/q/d/n$b;)Le/f/a/n/o/w;

    move-result-object p1

    return-object p1
.end method
