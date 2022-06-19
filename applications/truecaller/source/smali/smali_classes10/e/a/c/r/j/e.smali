.class public final Le/a/c/r/j/e;
.super Le/a/c/r/j/c;
.source "SourceFile"


# instance fields
.field public final h:Ls1/w/f;

.field public final i:Ljava/lang/String;

.field public final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const-string v0, "origin"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "otp"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/c/r/j/c;-><init>(JLcom/truecaller/insights/models/DomainOrigin;)V

    iput-object p4, p0, Le/a/c/r/j/e;->i:Ljava/lang/String;

    iput-object p5, p0, Le/a/c/r/j/e;->j:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Le/a/c/r/j/c;->d:Ls1/w/f;

    .line 3
    iput-object p1, p0, Le/a/c/r/j/e;->h:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
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
    iget-object p1, p0, Le/a/c/r/j/e;->j:Landroid/content/Context;

    iget-object v0, p0, Le/a/c/r/j/e;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Le/a/e/a2;->d0(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Le/a/c/r/j/e;->j:Landroid/content/Context;

    sget v0, Lcom/truecaller/insights/R$string;->otp_copied_to_clipboard:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/e;->h:Ls1/w/f;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method
