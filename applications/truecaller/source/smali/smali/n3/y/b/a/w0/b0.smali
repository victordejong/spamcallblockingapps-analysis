.class public final Ln3/y/b/a/w0/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/w0/a0$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/w0/b0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/y/b/a/w0/a0$e;"
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/w0/k;

.field public final b:I

.field public final c:Ln3/y/b/a/w0/d0;

.field public final d:Ln3/y/b/a/w0/b0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/y/b/a/w0/b0$a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/h;Landroid/net/Uri;ILn3/y/b/a/w0/b0$a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/y/b/a/w0/h;",
            "Landroid/net/Uri;",
            "I",
            "Ln3/y/b/a/w0/b0$a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Ln3/y/b/a/w0/k;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p2

    .line 2
    invoke-direct/range {v0 .. v7}, Ln3/y/b/a/w0/k;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p2, Ln3/y/b/a/w0/d0;

    invoke-direct {p2, p1}, Ln3/y/b/a/w0/d0;-><init>(Ln3/y/b/a/w0/h;)V

    iput-object p2, p0, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    .line 5
    iput-object v8, p0, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    .line 6
    iput p3, p0, Ln3/y/b/a/w0/b0;->b:I

    .line 7
    iput-object p4, p0, Ln3/y/b/a/w0/b0;->d:Ln3/y/b/a/w0/b0$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Ln3/y/b/a/w0/d0;->b:J

    .line 3
    new-instance v0, Ln3/y/b/a/w0/j;

    iget-object v1, p0, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    iget-object v2, p0, Ln3/y/b/a/w0/b0;->a:Ln3/y/b/a/w0/k;

    invoke-direct {v0, v1, v2}, Ln3/y/b/a/w0/j;-><init>(Ln3/y/b/a/w0/h;Ln3/y/b/a/w0/k;)V

    .line 4
    :try_start_0
    iget-boolean v1, v0, Ln3/y/b/a/w0/j;->d:Z

    if-nez v1, :cond_0

    .line 5
    iget-object v1, v0, Ln3/y/b/a/w0/j;->a:Ln3/y/b/a/w0/h;

    iget-object v2, v0, Ln3/y/b/a/w0/j;->b:Ln3/y/b/a/w0/k;

    invoke-interface {v1, v2}, Ln3/y/b/a/w0/h;->b(Ln3/y/b/a/w0/k;)J

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Ln3/y/b/a/w0/j;->d:Z

    .line 7
    :cond_0
    iget-object v1, p0, Ln3/y/b/a/w0/b0;->c:Ln3/y/b/a/w0/d0;

    invoke-virtual {v1}, Ln3/y/b/a/w0/d0;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Ln3/y/b/a/w0/b0;->d:Ln3/y/b/a/w0/b0$a;

    invoke-interface {v2, v1, v0}, Ln3/y/b/a/w0/b0$a;->a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ln3/y/b/a/w0/b0;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    sget v1, Ln3/y/b/a/x0/x;->a:I

    .line 11
    :try_start_1
    invoke-virtual {v0}, Ln3/y/b/a/w0/j;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 12
    sget v2, Ln3/y/b/a/x0/x;->a:I

    .line 13
    :try_start_2
    invoke-virtual {v0}, Ln3/y/b/a/w0/j;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 14
    :catch_1
    throw v1
.end method

.method public final b()V
    .locals 0

    return-void
.end method
