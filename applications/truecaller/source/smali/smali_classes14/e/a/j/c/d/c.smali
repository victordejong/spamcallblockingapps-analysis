.class public final Le/a/j/c/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j/c/d/b;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ln3/c0/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/j<",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/j/c/d/c;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/j/c/d/c$a;

    invoke-direct {v0, p0, p1}, Le/a/j/c/d/c$a;-><init>(Le/a/j/c/d/c;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/j/c/d/c;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/j/c/d/c$b;

    invoke-direct {v0, p0, p1}, Le/a/j/c/d/c$b;-><init>(Le/a/j/c/d/c;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/j/c/d/c;->c:Ln3/c0/j;

    .line 5
    new-instance v0, Le/a/j/c/d/c$c;

    invoke-direct {v0, p0, p1}, Le/a/j/c/d/c$c;-><init>(Le/a/j/c/d/c;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/j/c/d/c;->d:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM surveys"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/j/c/d/c;->a:Ln3/c0/q;

    new-instance v4, Le/a/j/c/d/c$g;

    invoke-direct {v4, p0, v0}, Le/a/j/c/d/c$g;-><init>(Le/a/j/c/d/c;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j/c/d/c;->a:Ln3/c0/q;

    new-instance v1, Le/a/j/c/d/c$d;

    invoke-direct {v1, p0, p1}, Le/a/j/c/d/c$d;-><init>(Le/a/j/c/d/c;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j/c/d/c;->a:Ln3/c0/q;

    new-instance v1, Le/a/j/c/d/c$f;

    invoke-direct {v1, p0, p1}, Le/a/j/c/d/c$f;-><init>(Le/a/j/c/d/c;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM surveys WHERE _id = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object v1, p0, Le/a/j/c/d/c;->a:Ln3/c0/q;

    const/4 v2, 0x0

    new-instance v3, Le/a/j/c/d/c$h;

    invoke-direct {v3, p0, v0}, Le/a/j/c/d/c$h;-><init>(Le/a/j/c/d/c;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/truecaller/surveys/data/local/SurveyEntity;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j/c/d/c;->a:Ln3/c0/q;

    new-instance v1, Le/a/j/c/d/c$e;

    invoke-direct {v1, p0, p1}, Le/a/j/c/d/c$e;-><init>(Le/a/j/c/d/c;Lcom/truecaller/surveys/data/local/SurveyEntity;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
