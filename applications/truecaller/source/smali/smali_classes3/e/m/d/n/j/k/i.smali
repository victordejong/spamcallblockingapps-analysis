.class public Le/m/d/n/j/k/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/k/h$d;


# instance fields
.field public final synthetic a:[B

.field public final synthetic b:[I


# direct methods
.method public constructor <init>(Le/m/d/n/j/k/j;[B[I)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/m/d/n/j/k/i;->a:[B

    iput-object p3, p0, Le/m/d/n/j/k/i;->b:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/d/n/j/k/i;->a:[B

    iget-object v1, p0, Le/m/d/n/j/k/i;->b:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1, p2}, Ljava/io/InputStream;->read([BII)I

    .line 2
    iget-object v0, p0, Le/m/d/n/j/k/i;->b:[I

    aget v1, v0, v2

    add-int/2addr v1, p2

    aput v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 4
    throw p2
.end method
