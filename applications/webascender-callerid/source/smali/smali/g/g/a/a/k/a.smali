.class public final Lg/g/a/a/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/k/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 2

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg/g/a/e/c;->a:Lg/g/a/e/c;

    iget-object v1, p0, Lg/g/a/a/k/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lg/g/a/e/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->i()Lm/e0$a;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    invoke-interface {p1, v0}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    invoke-static {p1}, Lcom/hiya/api/exception/HiyaRetrofitException;->f(Ljava/lang/Throwable;)Lcom/hiya/api/exception/HiyaRetrofitException;

    move-result-object p1

    const-string v0, "HiyaRetrofitException.offlineError(IOException())"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    throw p1
.end method
