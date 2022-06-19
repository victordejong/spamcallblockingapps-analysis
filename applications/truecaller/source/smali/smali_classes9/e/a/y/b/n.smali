.class public final Le/a/y/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/b/m;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/flashsdk/assist/FlashBitmapConverter;

.field public final c:Le/a/y/b/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/flashsdk/assist/FlashBitmapConverter;Le/a/y/b/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "converter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/b/n;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/y/b/n;->b:Lcom/truecaller/flashsdk/assist/FlashBitmapConverter;

    iput-object p3, p0, Le/a/y/b/n;->c:Le/a/y/b/h;

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Lu3/j0;
    .locals 2

    const-string v0, "uri"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/y/b/e;

    iget-object v1, p0, Le/a/y/b/n;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Le/a/y/b/e;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method

.method public b(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/y/b/n$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/y/b/n$a;

    iget v1, v0, Le/a/y/b/n$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/y/b/n$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/y/b/n$a;

    invoke-direct {v0, p0, p2}, Le/a/y/b/n$a;-><init>(Le/a/y/b/n;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/y/b/n$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/y/b/n$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 4
    iput v3, v0, Le/a/y/b/n$a;->e:I

    invoke-virtual {p0, p1}, Le/a/y/b/n;->e(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 7
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    const-string v0, "extension"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/b/n;->c:Le/a/y/b/h;

    invoke-interface {v0, p1}, Le/a/y/b/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/y/b/n;->c:Le/a/y/b/h;

    invoke-interface {v0, p1}, Le/a/y/b/h;->c(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/y/b/n$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/y/b/n$b;

    iget v1, v0, Le/a/y/b/n$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/y/b/n$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/y/b/n$b;

    invoke-direct {v0, p0, p2}, Le/a/y/b/n$b;-><init>(Le/a/y/b/n;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/y/b/n$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/y/b/n$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/y/b/n$b;->g:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 4
    iget-object p2, p0, Le/a/y/b/n;->b:Lcom/truecaller/flashsdk/assist/FlashBitmapConverter;

    invoke-interface {p2, p1}, Lcom/truecaller/flashsdk/assist/FlashBitmapConverter;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 5
    iput-object p2, v0, Le/a/y/b/n$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/y/b/n$b;->e:I

    invoke-virtual {p0, p1}, Le/a/y/b/n;->e(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p2

    :goto_1
    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;->CONTENT:Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v0, p0, Le/a/y/b/n;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-ne p1, v3, :cond_2

    move v2, v3

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;->FILE:Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;

    invoke-virtual {v1}, Lcom/truecaller/flashsdk/assist/FlashBitmapConverter$Scheme;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI scheme is not supported for deletion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    :cond_2
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
