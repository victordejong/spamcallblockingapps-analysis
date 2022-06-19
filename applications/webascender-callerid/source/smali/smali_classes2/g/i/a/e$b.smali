.class Lg/i/a/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/i/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/Picasso$b;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/squareup/picasso/Picasso$b;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/Picasso$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lg/i/a/e$b;->a:Lcom/squareup/picasso/Picasso$b;

    return-void
.end method


# virtual methods
.method public a(Lm/c0;)Lg/i/a/d$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/i/a/e$b;->a:Lcom/squareup/picasso/Picasso$b;

    new-instance v1, Lg/h/b/a;

    invoke-direct {v1, p1}, Lg/h/b/a;-><init>(Lm/c0;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso$b;->c(Lcom/squareup/picasso/j;)Lcom/squareup/picasso/Picasso$b;

    return-object p0
.end method

.method public b(Landroid/graphics/Bitmap$Config;)Lg/i/a/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/e$b;->a:Lcom/squareup/picasso/Picasso$b;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso$b;->b(Landroid/graphics/Bitmap$Config;)Lcom/squareup/picasso/Picasso$b;

    return-object p0
.end method

.method public c()Lg/i/a/d;
    .locals 3

    .line 1
    new-instance v0, Lg/i/a/e;

    iget-object v1, p0, Lg/i/a/e$b;->a:Lcom/squareup/picasso/Picasso$b;

    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$b;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg/i/a/e;-><init>(Lcom/squareup/picasso/Picasso;Lg/i/a/e$a;)V

    return-object v0
.end method

.method public d(Ljava/util/concurrent/ExecutorService;)Lg/i/a/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/e$b;->a:Lcom/squareup/picasso/Picasso$b;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso$b;->d(Ljava/util/concurrent/ExecutorService;)Lcom/squareup/picasso/Picasso$b;

    return-object p0
.end method
