.class public final Lcom/squareup/picasso/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/j;


# instance fields
.field final a:Lm/f$a;

.field private final b:Lm/d;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/squareup/picasso/f0;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/picasso/s;-><init>(Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lcom/squareup/picasso/f0;->a(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/picasso/s;-><init>(Ljava/io/File;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .line 3
    new-instance v0, Lm/c0$a;

    invoke-direct {v0}, Lm/c0$a;-><init>()V

    new-instance v1, Lm/d;

    invoke-direct {v1, p1, p2, p3}, Lm/d;-><init>(Ljava/io/File;J)V

    invoke-virtual {v0, v1}, Lm/c0$a;->d(Lm/d;)Lm/c0$a;

    invoke-virtual {v0}, Lm/c0$a;->c()Lm/c0;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/picasso/s;-><init>(Lm/c0;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/squareup/picasso/s;->c:Z

    return-void
.end method

.method public constructor <init>(Lm/c0;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/squareup/picasso/s;->c:Z

    .line 7
    iput-object p1, p0, Lcom/squareup/picasso/s;->a:Lm/f$a;

    .line 8
    invoke-virtual {p1}, Lm/c0;->g()Lm/d;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/s;->b:Lm/d;

    return-void
.end method


# virtual methods
.method public a(Lm/e0;)Lm/g0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/s;->a:Lm/f$a;

    invoke-interface {v0, p1}, Lm/f$a;->a(Lm/e0;)Lm/f;

    move-result-object p1

    invoke-interface {p1}, Lm/f;->execute()Lm/g0;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/squareup/picasso/s;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/picasso/s;->b:Lm/d;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lm/d;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
