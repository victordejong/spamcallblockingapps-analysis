.class public final Lm/f0$a$a;
.super Lm/f0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/f0$a;->a(Ljava/io/File;Lm/a0;)Lm/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lm/a0;


# direct methods
.method constructor <init>(Ljava/io/File;Lm/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/f0$a$a;->a:Ljava/io/File;

    iput-object p2, p0, Lm/f0$a$a;->b:Lm/a0;

    invoke-direct {p0}, Lm/f0;-><init>()V

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lm/f0$a$a;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lm/a0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/f0$a$a;->b:Lm/a0;

    return-object v0
.end method

.method public writeTo(Ln/g;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/f0$a$a;->a:Ljava/io/File;

    invoke-static {v0}, Ln/r;->k(Ljava/io/File;)Ln/d0;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, v0}, Ln/g;->C0(Ln/d0;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
