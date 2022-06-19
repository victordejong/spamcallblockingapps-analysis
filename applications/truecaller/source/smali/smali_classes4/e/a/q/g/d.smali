.class public final Le/a/q/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/g/c;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/contactfeedback/db/ContactFeedback;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q/g/d;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/q/g/d$a;

    invoke-direct {v0, p0, p1}, Le/a/q/g/d$a;-><init>(Le/a/q/g/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/q/g/d;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/q/g/d$b;

    invoke-direct {v0, p0, p1}, Le/a/q/g/d$b;-><init>(Le/a/q/g/d;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/q/g/d;->c:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(JILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/contactfeedback/db/ContactFeedback;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT * FROM contact_feedback \n        WHERE created_at >= ? \n        ORDER BY created_at DESC \n        LIMIT ? \n        "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    int-to-long p1, p3

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 4
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object p2, p0, Le/a/q/g/d;->a:Ln3/c0/q;

    new-instance p3, Le/a/q/g/d$e;

    invoke-direct {p3, p0, v0}, Le/a/q/g/d$e;-><init>(Le/a/q/g/d;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p3, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b([Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Long;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q/g/d;->a:Ln3/c0/q;

    new-instance v1, Le/a/q/g/d$f;

    invoke-direct {v1, p0, p1}, Le/a/q/g/d$f;-><init>(Le/a/q/g/d;[Ljava/lang/Long;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c([Lcom/truecaller/contactfeedback/db/ContactFeedback;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/contactfeedback/db/ContactFeedback;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q/g/d;->a:Ln3/c0/q;

    new-instance v1, Le/a/q/g/d$c;

    invoke-direct {v1, p0, p1}, Le/a/q/g/d$c;-><init>(Le/a/q/g/d;[Lcom/truecaller/contactfeedback/db/ContactFeedback;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/q/g/d;->a:Ln3/c0/q;

    new-instance v1, Le/a/q/g/d$d;

    invoke-direct {v1, p0}, Le/a/q/g/d$d;-><init>(Le/a/q/g/d;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
