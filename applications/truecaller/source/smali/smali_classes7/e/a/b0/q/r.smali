.class public final Le/a/b0/q/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/q/q;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ls1/w/f;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ui"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "async"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/q/r;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/b0/q/r;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/b0/q/r;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;IILs1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Ls1/w/d<",
            "-",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/b0/q/r$a;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/b0/q/r$a;

    iget v1, v0, Le/a/b0/q/r$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/b0/q/r$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/b0/q/r$a;

    invoke-direct {v0, p0, p4}, Le/a/b0/q/r$a;-><init>(Le/a/b0/q/r;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/b0/q/r$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/b0/q/r$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/b0/q/r$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/b0/q/r;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Le/a/b0/q/r;->b:Ls1/w/f;

    new-instance v2, Le/a/b0/q/r$c;

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, p0

    move-object v7, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v5 .. v10}, Le/a/b0/q/r$c;-><init>(Le/a/b0/q/r;Landroid/view/View;IILs1/w/d;)V

    iput-object p0, v0, Le/a/b0/q/r$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/b0/q/r$a;->e:I

    invoke-static {p4, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p4, Landroid/graphics/Bitmap;

    .line 6
    iget-object p2, p1, Le/a/b0/q/r;->c:Ls1/w/f;

    new-instance p3, Le/a/b0/q/r$b;

    const/4 v2, 0x0

    invoke-direct {p3, p1, p4, v2}, Le/a/b0/q/r$b;-><init>(Le/a/b0/q/r;Landroid/graphics/Bitmap;Ls1/w/d;)V

    iput-object v2, v0, Le/a/b0/q/r$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/b0/q/r$a;->e:I

    invoke-static {p2, p3, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p4
.end method
