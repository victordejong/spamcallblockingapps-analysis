.class final Lm/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/k0/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Ln/b0;

.field private final b:Ln/b0;

.field private c:Z

.field private final d:Lm/k0/d/d$a;

.field final synthetic e:Lm/d;


# direct methods
.method public constructor <init>(Lm/d;Lm/k0/d/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/k0/d/d$a;",
            ")V"
        }
    .end annotation

    const-string v0, "editor"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lm/d$d;->e:Lm/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm/d$d;->d:Lm/k0/d/d$a;

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p2, p1}, Lm/k0/d/d$a;->f(I)Ln/b0;

    move-result-object p1

    iput-object p1, p0, Lm/d$d;->a:Ln/b0;

    .line 3
    new-instance p2, Lm/d$d$a;

    invoke-direct {p2, p0, p1}, Lm/d$d$a;-><init>(Lm/d$d;Ln/b0;)V

    iput-object p2, p0, Lm/d$d;->b:Ln/b0;

    return-void
.end method

.method public static final synthetic c(Lm/d$d;)Lm/k0/d/d$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/d$d;->d:Lm/k0/d/d$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/d$d;->e:Lm/d;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lm/d$d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    :try_start_1
    iput-boolean v1, p0, Lm/d$d;->c:Z

    .line 4
    iget-object v2, p0, Lm/d$d;->e:Lm/d;

    invoke-virtual {v2}, Lm/d;->e()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lm/d;->j(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit v0

    .line 6
    iget-object v0, p0, Lm/d$d;->a:Ln/b0;

    invoke-static {v0}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    .line 7
    :try_start_2
    iget-object v0, p0, Lm/d$d;->d:Lm/k0/d/d$a;

    invoke-virtual {v0}, Lm/k0/d/d$a;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method

.method public b()Ln/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/d$d;->b:Ln/b0;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/d$d;->c:Z

    return v0
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/d$d;->c:Z

    return-void
.end method
