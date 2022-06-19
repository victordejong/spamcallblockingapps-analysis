.class public Ln3/y/e/c;
.super Ln3/y/e/a0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/e/c$a;,
        Ln3/y/e/c$b;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ln3/y/e/c$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/y/e/a0$e;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/e/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaFormat;)Ln3/y/e/b0;
    .locals 2

    const-string v0, "mime"

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/cea-608"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Ln3/y/e/c;->b:Ln3/y/e/c$a;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ln3/y/e/c$a;

    iget-object v1, p0, Ln3/y/e/c;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Ln3/y/e/c$a;-><init>(Ln3/y/e/c;Landroid/content/Context;)V

    iput-object v0, p0, Ln3/y/e/c;->b:Ln3/y/e/c$a;

    .line 5
    :cond_0
    new-instance v0, Ln3/y/e/c$b;

    iget-object v1, p0, Ln3/y/e/c;->b:Ln3/y/e/c$a;

    invoke-direct {v0, v1, p1}, Ln3/y/e/c$b;-><init>(Ln3/y/e/c$a;Landroid/media/MediaFormat;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No matching format: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Landroid/media/MediaFormat;)Z
    .locals 2

    const-string v0, "mime"

    .line 1
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "text/cea-608"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
