.class public final Le/a/q/a/b/b;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/q/a/b/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/q/a/b/f;",
        ">;",
        "Le/a/q/a/b/e;"
    }
.end annotation


# instance fields
.field public d:Lcom/truecaller/contactfeedback/presentation/addcomment/model/AddCommentRequest;

.field public final e:Ls1/g;

.field public f:Lcom/truecaller/contactfeedback/model/Profile;

.field public final g:Ls1/g;

.field public final h:Ls1/g;

.field public final i:Ls1/w/f;

.field public final j:Le/a/b0/o/a;

.field public final k:Le/a/b0/a/v/a;

.field public final l:Le/a/p5/c;

.field public final m:Le/a/q/i/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/b0/o/a;Le/a/b0/a/v/a;Le/a/p5/c;Le/a/q/i/a;)V
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

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentBoxValidator"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commentFeedbackProcessor"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/q/a/b/b;->i:Ls1/w/f;

    iput-object p2, p0, Le/a/q/a/b/b;->j:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/q/a/b/b;->k:Le/a/b0/a/v/a;

    iput-object p4, p0, Le/a/q/a/b/b;->l:Le/a/p5/c;

    iput-object p5, p0, Le/a/q/a/b/b;->m:Le/a/q/i/a;

    .line 2
    new-instance p1, Le/a/q/a/b/b$b;

    invoke-direct {p1, p0}, Le/a/q/a/b/b$b;-><init>(Le/a/q/a/b/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/q/a/b/b;->e:Ls1/g;

    .line 3
    check-cast p1, Ls1/n;

    invoke-virtual {p1}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/contactfeedback/model/Profile;

    .line 4
    iput-object p1, p0, Le/a/q/a/b/b;->f:Lcom/truecaller/contactfeedback/model/Profile;

    .line 5
    new-instance p1, Le/a/q/a/b/b$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/q/a/b/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/q/a/b/b;->g:Ls1/g;

    .line 6
    new-instance p1, Le/a/q/a/b/b$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/q/a/b/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/q/a/b/b;->h:Ls1/g;

    return-void
.end method


# virtual methods
.method public final Ij()I
    .locals 1

    iget-object v0, p0, Le/a/q/a/b/b;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Le/a/q/a/b/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/q/a/b/b;->Ij()I

    move-result v0

    invoke-interface {p1, v0}, Le/a/q/a/b/f;->p3(I)V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/truecaller/contactfeedback/model/Profile;

    .line 5
    iget-object v1, p0, Le/a/q/a/b/b;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/contactfeedback/model/Profile;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 6
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q/a/b/f;->Z3(Ljava/util/List;)V

    return-void
.end method
