.class public Lg/g/b/a/k/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "h"


# instance fields
.field private a:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lg/g/b/a/k/h;->a:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lg/g/b/a/k/h;->a:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    return-object v0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FileName cannot be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lm/h0;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lg/g/b/a/k/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 2
    invoke-static {p2}, Ln/r;->f(Ljava/io/File;)Ln/b0;

    move-result-object p2

    invoke-static {p2}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lm/h0;->source()Ln/h;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p2, p1, p3}, Lg/g/b/a/k/h;->c(Ln/g;Ln/h;I)V

    .line 5
    invoke-interface {p1}, Ln/d0;->close()V

    .line 6
    invoke-interface {p2}, Ln/b0;->close()V

    return-void
.end method

.method public c(Ln/g;Ln/h;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/common/base/m;->d(Z)V

    const/4 v1, 0x0

    .line 2
    :goto_1
    invoke-interface {p2}, Ln/h;->S()Z

    move-result v2

    if-nez v2, :cond_3

    if-ne v1, p3, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-interface {p2}, Ln/h;->c0()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {p1, v2}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    const-string v2, "\n"

    .line 5
    invoke-interface {p1, v2}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_2
    sget-object p1, Lg/g/b/a/k/h;->b:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "WriteToFile BufferedSource is returning null value"

    invoke-static {p1, p3, p2}, Lcom/hiya/client/support/logging/d;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    return-void
.end method
