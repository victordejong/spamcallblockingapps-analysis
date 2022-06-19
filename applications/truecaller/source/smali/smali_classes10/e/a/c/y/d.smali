.class public final Le/a/c/y/d;
.super Le/a/c/y/a;
.source "SourceFile"


# instance fields
.field public final g:Ls1/w/f;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/c/y/a;-><init>()V

    iput-object p1, p0, Le/a/c/y/d;->h:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/c/y/a;->d:Ls1/w/f;

    .line 3
    iput-object p1, p0, Le/a/c/y/d;->g:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p1, Ls1/s;->a:Ls1/s;

    iget-object v0, p0, Le/a/c/y/d;->h:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object p1

    .line 2
    :cond_1
    iget-object v0, p0, Le/a/c/y/a;->f:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Le/a/c/y/d;->h:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Le/a/b0/q/t;->c(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {v0, v1}, Le/a/b0/q/t;->n(Landroid/content/Context;Landroid/content/Intent;)Z

    return-object p1
.end method

.method public b()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/y/d;->g:Ls1/w/f;

    return-object v0
.end method
