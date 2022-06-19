.class public final Ln3/y/b/a/t0/f0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Ln3/y/b/a/q0/g;

.field public b:Ln3/y/b/a/q0/g;


# direct methods
.method public constructor <init>([Ln3/y/b/a/q0/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/f0$b;->a:[Ln3/y/b/a/q0/g;

    return-void
.end method


# virtual methods
.method public a(Ln3/y/b/a/q0/d;Ln3/y/b/a/q0/h;Landroid/net/Uri;)Ln3/y/b/a/q0/g;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/f0$b;->b:Ln3/y/b/a/q0/g;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/y/b/a/t0/f0$b;->a:[Ln3/y/b/a/q0/g;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 3
    aget-object p1, v0, v2

    iput-object p1, p0, Ln3/y/b/a/t0/f0$b;->b:Ln3/y/b/a/q0/g;

    goto :goto_3

    .line 4
    :cond_1
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 5
    :try_start_0
    invoke-interface {v4, p1}, Ln3/y/b/a/q0/g;->h(Ln3/y/b/a/q0/d;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    iput-object v4, p0, Ln3/y/b/a/t0/f0$b;->b:Ln3/y/b/a/q0/g;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput v2, p1, Ln3/y/b/a/q0/d;->f:I

    goto :goto_1

    :catchall_0
    move-exception p2

    iput v2, p1, Ln3/y/b/a/q0/d;->f:I

    .line 8
    throw p2

    .line 9
    :catch_0
    :cond_2
    iput v2, p1, Ln3/y/b/a/q0/d;->f:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Ln3/y/b/a/t0/f0$b;->b:Ln3/y/b/a/q0/g;

    if-nez p1, :cond_6

    .line 11
    new-instance p1, Ln3/y/b/a/t0/n0;

    iget-object p2, p0, Ln3/y/b/a/t0/f0$b;->a:[Ln3/y/b/a/q0/g;

    .line 12
    sget v0, Ln3/y/b/a/x0/x;->a:I

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    :goto_2
    array-length v1, p2

    if-ge v2, v1, :cond_5

    .line 15
    aget-object v1, p2, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_4

    const-string v1, ", "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x3a

    .line 19
    invoke-static {p2, v0}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "None of the available extractors ("

    const-string v2, ") could read the stream."

    invoke-static {v0, v1, p2, v2}, Le/d/c/a/a;->R1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Ln3/y/b/a/t0/n0;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1

    .line 20
    :cond_6
    :goto_3
    iget-object p1, p0, Ln3/y/b/a/t0/f0$b;->b:Ln3/y/b/a/q0/g;

    invoke-interface {p1, p2}, Ln3/y/b/a/q0/g;->d(Ln3/y/b/a/q0/h;)V

    .line 21
    iget-object p1, p0, Ln3/y/b/a/t0/f0$b;->b:Ln3/y/b/a/q0/g;

    return-object p1
.end method
