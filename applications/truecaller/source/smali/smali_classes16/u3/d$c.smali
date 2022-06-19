.class public final Lu3/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/p0/e/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Lv3/z;

.field public final b:Lv3/z;

.field public c:Z

.field public final d:Lu3/p0/e/e$a;

.field public final synthetic e:Lu3/d;


# direct methods
.method public constructor <init>(Lu3/d;Lu3/p0/e/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/p0/e/e$a;",
            ")V"
        }
    .end annotation

    const-string v0, "editor"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lu3/d$c;->e:Lu3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu3/d$c;->d:Lu3/p0/e/e$a;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p1}, Lu3/p0/e/e$a;->d(I)Lv3/z;

    move-result-object p1

    iput-object p1, p0, Lu3/d$c;->a:Lv3/z;

    .line 3
    new-instance p2, Lu3/d$c$a;

    invoke-direct {p2, p0, p1}, Lu3/d$c$a;-><init>(Lu3/d$c;Lv3/z;)V

    iput-object p2, p0, Lu3/d$c;->b:Lv3/z;

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu3/d$c;->e:Lu3/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lu3/d$c;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    iput-boolean v1, p0, Lu3/d$c;->c:Z

    .line 4
    iget-object v2, p0, Lu3/d$c;->e:Lu3/d;

    .line 5
    iget v3, v2, Lu3/d;->c:I

    add-int/2addr v3, v1

    .line 6
    iput v3, v2, Lu3/d;->c:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    .line 8
    iget-object v0, p0, Lu3/d$c;->a:Lv3/z;

    invoke-static {v0}, Lu3/p0/c;->d(Ljava/io/Closeable;)V

    .line 9
    :try_start_2
    iget-object v0, p0, Lu3/d$c;->d:Lu3/p0/e/e$a;

    invoke-virtual {v0}, Lu3/p0/e/e$a;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method
