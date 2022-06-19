.class public final Le/a/v/a/c/a/f;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/c/a/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/v/a/c/a/c;",
        ">;",
        "Le/a/v/a/c/a/b;"
    }
.end annotation


# instance fields
.field public d:Le/a/b0/q/v;

.field public e:Le/a/q/h/b;

.field public final f:Ls1/w/f;

.field public final g:Le/a/q/h/c;

.field public final h:Le/a/q2/a;

.field public final i:Le/a/v/a/c/b;

.field public final j:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/q/h/c;Le/a/q2/a;Le/a/v/a/c/b;Le/a/u3/g;)V
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

    const-string v0, "commentsRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentViewModelMapper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/v/a/c/a/f;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/v/a/c/a/f;->g:Le/a/q/h/c;

    iput-object p3, p0, Le/a/v/a/c/a/f;->h:Le/a/q2/a;

    iput-object p4, p0, Le/a/v/a/c/a/f;->i:Le/a/v/a/c/b;

    iput-object p5, p0, Le/a/v/a/c/a/f;->j:Le/a/u3/g;

    .line 2
    new-instance p1, Le/a/b0/q/v;

    new-instance p2, Le/a/v/a/c/a/f$a;

    invoke-direct {p2, p0}, Le/a/v/a/c/a/f$a;-><init>(Le/a/v/a/c/a/f;)V

    invoke-direct {p1, p2}, Le/a/b0/q/v;-><init>(Ls1/z/b/a;)V

    iput-object p1, p0, Le/a/v/a/c/a/f;->d:Le/a/b0/q/v;

    return-void
.end method


# virtual methods
.method public Ij(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V
    .locals 2

    const-string v0, "comment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/c/a/f;->e:Le/a/q/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/q/h/b;->a:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/v/a/c/a/f;->g:Le/a/q/h/c;

    .line 4
    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v1, v0, p1}, Le/a/q/h/c;->e(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Jj(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V
    .locals 2

    const-string v0, "comment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/c/a/f;->e:Le/a/q/h/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/q/h/b;->a:Lcom/truecaller/data/entity/Contact;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/v/a/c/a/f;->g:Le/a/q/h/c;

    .line 4
    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    .line 5
    invoke-interface {v1, v0, p1}, Le/a/q/h/c;->a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/v/a/c/a/f;->e:Le/a/q/h/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/v/a/c/a/f;->g:Le/a/q/h/c;

    invoke-interface {v1, v0}, Le/a/q/h/c;->b(Le/a/q/h/b;)V

    :cond_0
    return-void
.end method
