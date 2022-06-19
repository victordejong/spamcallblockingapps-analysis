.class public final Le/a/b0/b/j/b$a;
.super Lu3/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/b/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lu3/j0;


# direct methods
.method public constructor <init>(Lu3/j0;)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/j0;-><init>()V

    iput-object p1, p0, Le/a/b0/b/j/b$a;->b:Lu3/j0;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public b()Lu3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/b/j/b$a;->b:Lu3/j0;

    invoke-virtual {v0}, Lu3/j0;->b()Lu3/c0;

    move-result-object v0

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lv3/n;

    invoke-direct {v0, p1}, Lv3/n;-><init>(Lv3/z;)V

    const-string p1, "$this$buffer"

    .line 2
    invoke-static {v0, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lv3/u;

    invoke-direct {p1, v0}, Lv3/u;-><init>(Lv3/z;)V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Le/a/b0/b/j/b$a;->b:Lu3/j0;

    invoke-virtual {v1, p1}, Lu3/j0;->c(Lv3/g;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
