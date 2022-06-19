.class public Le/f/a/n/q/d/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/q/d/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/n/q/d/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/f/a/n/q/d/w;

.field public final b:Le/f/a/t/d;


# direct methods
.method public constructor <init>(Le/f/a/n/q/d/w;Le/f/a/t/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/d/z$a;->a:Le/f/a/n/q/d/w;

    .line 3
    iput-object p2, p0, Le/f/a/n/q/d/z$a;->b:Le/f/a/t/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/z$a;->a:Le/f/a/n/q/d/w;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Le/f/a/n/q/d/w;->a:[B

    array-length v1, v1

    iput v1, v0, Le/f/a/n/q/d/w;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public b(Le/f/a/n/o/b0/d;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/f/a/n/q/d/z$a;->b:Le/f/a/t/d;

    .line 2
    iget-object v0, v0, Le/f/a/t/d;->b:Ljava/io/IOException;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1, p2}, Le/f/a/n/o/b0/d;->c(Landroid/graphics/Bitmap;)V

    .line 4
    :cond_0
    throw v0

    :cond_1
    return-void
.end method
