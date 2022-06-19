.class public final Le/a/v/a/c/c/c;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/c/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/v/a/c/c/b;",
        ">;",
        "Le/a/v/a/c/c/a;"
    }
.end annotation


# instance fields
.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/contactfeedback/repo/SortType;",
            ">;"
        }
    .end annotation
.end field

.field public f:Le/a/q/h/b;

.field public final g:Ls1/w/f;

.field public final h:Le/a/p5/h0;

.field public final i:Le/a/q/h/c;

.field public final j:Le/a/v/a/c/b;

.field public final k:Le/a/u3/g;

.field public final l:Le/a/p5/u;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/h0;Le/a/q/h/c;Le/a/v/a/c/b;Le/a/u3/g;Le/a/p5/u;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themedResourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentsRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentViewModelMapper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/v/a/c/c/c;->g:Ls1/w/f;

    iput-object p2, p0, Le/a/v/a/c/c/c;->h:Le/a/p5/h0;

    iput-object p3, p0, Le/a/v/a/c/c/c;->i:Le/a/q/h/c;

    iput-object p4, p0, Le/a/v/a/c/c/c;->j:Le/a/v/a/c/b;

    iput-object p5, p0, Le/a/v/a/c/c/c;->k:Le/a/u3/g;

    iput-object p6, p0, Le/a/v/a/c/c/c;->l:Le/a/p5/u;

    .line 2
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    iput-object p1, p0, Le/a/v/a/c/c/c;->d:Ljava/util/List;

    .line 3
    iput-object p1, p0, Le/a/v/a/c/c/c;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/contactfeedback/repo/SortType;Lcom/truecaller/data/entity/Contact;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/v/a/c/c/c;->i:Le/a/q/h/c;

    new-instance v1, Le/a/v/a/c/c/c$b;

    invoke-direct {v1, p0}, Le/a/v/a/c/c/c$b;-><init>(Le/a/v/a/c/c/c;)V

    invoke-interface {v0, p2, p1, v1}, Le/a/q/h/c;->d(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;Ls1/z/b/l;)Le/a/q/h/b;

    move-result-object p1

    .line 2
    new-instance v3, Le/a/v/a/c/c/c$a;

    const/4 p2, 0x0

    invoke-direct {v3, p1, p2, p0}, Le/a/v/a/c/c/c$a;-><init>(Le/a/q/h/b;Ls1/w/d;Le/a/v/a/c/c/c;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 3
    iput-object p1, p0, Le/a/v/a/c/c/c;->f:Le/a/q/h/b;

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/v/a/c/c/c;->f:Le/a/q/h/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/v/a/c/c/c;->i:Le/a/q/h/c;

    invoke-interface {v1, v0}, Le/a/q/h/c;->b(Le/a/q/h/b;)V

    :cond_0
    return-void
.end method
