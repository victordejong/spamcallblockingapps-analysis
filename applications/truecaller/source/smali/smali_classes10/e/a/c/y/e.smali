.class public final Le/a/c/y/e;
.super Le/a/c/y/a;
.source "SourceFile"


# instance fields
.field public final g:Ls1/w/f;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "otp"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/c/y/a;-><init>()V

    iput-object p1, p0, Le/a/c/y/e;->h:Ljava/lang/String;

    .line 2
    iget-object p1, p0, Le/a/c/y/a;->d:Ls1/w/f;

    .line 3
    iput-object p1, p0, Le/a/c/y/e;->g:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
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

    iget-object v0, p0, Le/a/c/y/e;->h:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

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
    iget-object v2, p0, Le/a/c/y/e;->h:Ljava/lang/String;

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v2, v3}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Le/a/c/y/a;->f:Landroid/content/Context;

    .line 6
    sget v2, Lcom/truecaller/insights/R$string;->otp_copied_to_clipboard:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-object p1
.end method

.method public b()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/y/e;->g:Ls1/w/f;

    return-object v0
.end method
