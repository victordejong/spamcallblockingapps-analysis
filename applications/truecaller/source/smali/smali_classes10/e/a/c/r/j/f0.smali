.class public final Le/a/c/r/j/f0;
.super Le/a/c/r/j/c;
.source "SourceFile"


# instance fields
.field public final h:Ls1/w/f;

.field public final i:Ljava/lang/String;

.field public final j:Landroid/content/Context;


# direct methods
.method public constructor <init>(JLjava/lang/String;Landroid/content/Context;)V
    .locals 1

    const-string v0, "checkInUrl"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-direct {p0, p1, p2, v0}, Le/a/c/r/j/c;-><init>(JLcom/truecaller/insights/models/DomainOrigin;)V

    iput-object p3, p0, Le/a/c/r/j/f0;->i:Ljava/lang/String;

    iput-object p4, p0, Le/a/c/r/j/f0;->j:Landroid/content/Context;

    .line 2
    iget-object p1, p0, Le/a/c/r/j/c;->d:Ls1/w/f;

    .line 3
    iput-object p1, p0, Le/a/c/r/j/f0;->h:Ls1/w/f;

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
    iget-object p1, p0, Le/a/c/r/j/f0;->j:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/c/r/j/f0;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    sget-object v1, Ls1/s;->a:Ls1/s;

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-object v1
.end method

.method public b()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/f0;->h:Ls1/w/f;

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method
