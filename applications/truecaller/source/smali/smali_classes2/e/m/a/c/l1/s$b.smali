.class public final Le/m/a/c/l1/s$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/l1/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[Le/m/a/c/g1/h;

.field public b:Le/m/a/c/g1/h;


# direct methods
.method public constructor <init>([Le/m/a/c/g1/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/l1/s$b;->a:[Le/m/a/c/g1/h;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/g1/e;Le/m/a/c/g1/i;Landroid/net/Uri;)Le/m/a/c/g1/h;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/s$b;->b:Le/m/a/c/g1/h;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/c/l1/s$b;->a:[Le/m/a/c/g1/h;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 3
    aget-object p1, v0, v2

    iput-object p1, p0, Le/m/a/c/l1/s$b;->b:Le/m/a/c/g1/h;

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
    invoke-interface {v4, p1}, Le/m/a/c/g1/h;->i(Le/m/a/c/g1/e;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    iput-object v4, p0, Le/m/a/c/l1/s$b;->b:Le/m/a/c/g1/h;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput v2, p1, Le/m/a/c/g1/e;->f:I

    goto :goto_1

    :catchall_0
    move-exception p2

    iput v2, p1, Le/m/a/c/g1/e;->f:I

    .line 8
    throw p2

    .line 9
    :catch_0
    :cond_2
    iput v2, p1, Le/m/a/c/g1/e;->f:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    :goto_1
    iget-object p1, p0, Le/m/a/c/l1/s$b;->b:Le/m/a/c/g1/h;

    if-nez p1, :cond_6

    .line 11
    new-instance p1, Le/m/a/c/l1/z;

    const-string p2, "None of the available extractors ("

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Le/m/a/c/l1/s$b;->a:[Le/m/a/c/g1/h;

    .line 12
    sget v1, Le/m/a/c/q1/d0;->a:I

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 15
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_4

    const-string v3, ", "

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 18
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") could read the stream."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Le/m/a/c/l1/z;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p1

    .line 20
    :cond_6
    :goto_3
    iget-object p1, p0, Le/m/a/c/l1/s$b;->b:Le/m/a/c/g1/h;

    invoke-interface {p1, p2}, Le/m/a/c/g1/h;->h(Le/m/a/c/g1/i;)V

    .line 21
    iget-object p1, p0, Le/m/a/c/l1/s$b;->b:Le/m/a/c/g1/h;

    return-object p1
.end method
