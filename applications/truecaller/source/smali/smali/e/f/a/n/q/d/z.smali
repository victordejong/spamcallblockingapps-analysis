.class public Le/f/a/n/q/d/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/n/q/d/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/n/k<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/f/a/n/q/d/n;

.field public final b:Le/f/a/n/o/b0/b;


# direct methods
.method public constructor <init>(Le/f/a/n/q/d/n;Le/f/a/n/o/b0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/f/a/n/q/d/z;->a:Le/f/a/n/q/d/n;

    .line 3
    iput-object p2, p0, Le/f/a/n/q/d/z;->b:Le/f/a/n/o/b0/b;

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
    check-cast p1, Ljava/io/InputStream;

    .line 2
    iget-object p1, p0, Le/f/a/n/q/d/z;->a:Le/f/a/n/q/d/n;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/Object;IILe/f/a/n/i;)Le/f/a/n/o/w;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/InputStream;

    .line 2
    instance-of v0, p1, Le/f/a/n/q/d/w;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Le/f/a/n/q/d/w;

    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Le/f/a/n/q/d/w;

    iget-object v1, p0, Le/f/a/n/q/d/z;->b:Le/f/a/n/o/b0/b;

    invoke-direct {v0, p1, v1}, Le/f/a/n/q/d/w;-><init>(Ljava/io/InputStream;Le/f/a/n/o/b0/b;)V

    const/4 p1, 0x1

    move-object v9, v0

    move v0, p1

    move-object p1, v9

    .line 5
    :goto_0
    sget-object v1, Le/f/a/t/d;->c:Ljava/util/Queue;

    monitor-enter v1

    .line 6
    :try_start_0
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/f/a/t/d;

    .line 7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Le/f/a/t/d;

    invoke-direct {v2}, Le/f/a/t/d;-><init>()V

    .line 9
    :cond_1
    iput-object p1, v2, Le/f/a/t/d;->a:Ljava/io/InputStream;

    .line 10
    new-instance v4, Le/f/a/t/h;

    invoke-direct {v4, v2}, Le/f/a/t/h;-><init>(Ljava/io/InputStream;)V

    .line 11
    new-instance v8, Le/f/a/n/q/d/z$a;

    invoke-direct {v8, p1, v2}, Le/f/a/n/q/d/z$a;-><init>(Le/f/a/n/q/d/w;Le/f/a/t/d;)V

    .line 12
    :try_start_1
    iget-object v3, p0, Le/f/a/n/q/d/z;->a:Le/f/a/n/q/d/n;

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Le/f/a/n/q/d/n;->a(Ljava/io/InputStream;IILe/f/a/n/i;Le/f/a/n/q/d/n$b;)Le/f/a/n/o/w;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-virtual {v2}, Le/f/a/t/d;->b()V

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p1}, Le/f/a/n/q/d/w;->d()V

    :cond_2
    return-object p2

    :catchall_0
    move-exception p2

    .line 15
    invoke-virtual {v2}, Le/f/a/t/d;->b()V

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {p1}, Le/f/a/n/q/d/w;->d()V

    :cond_3
    throw p2

    :catchall_1
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
