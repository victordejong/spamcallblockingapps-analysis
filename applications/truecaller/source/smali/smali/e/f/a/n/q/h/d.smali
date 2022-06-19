.class public Le/f/a/n/q/h/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/l<",
        "Le/f/a/n/q/h/c;",
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
.method public a(Ljava/lang/Object;Ljava/io/File;Le/f/a/n/i;)Z
    .locals 0

    .line 1
    check-cast p1, Le/f/a/n/o/w;

    .line 2
    invoke-interface {p1}, Le/f/a/n/o/w;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/f/a/n/q/h/c;

    .line 3
    :try_start_0
    iget-object p1, p1, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object p1, p1, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 4
    iget-object p1, p1, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    invoke-interface {p1}, Le/f/a/l/a;->f()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 5
    invoke-static {p1, p2}, Le/f/a/t/a;->b(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x5

    const-string p2, "GifEncoder"

    .line 6
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Le/f/a/n/i;)Le/f/a/n/c;
    .locals 0

    .line 1
    sget-object p1, Le/f/a/n/c;->a:Le/f/a/n/c;

    return-object p1
.end method
