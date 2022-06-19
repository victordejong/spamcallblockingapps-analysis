.class public final Le/a/a/c/a3;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/c/j8/c;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Ls1/g;

.field public final c:Le/a/a/c/f4;


# direct methods
.method public constructor <init>(Le/a/a/c/f4;Le/a/a/i1/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "inputPresenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/c/a3;->c:Le/a/a/c/f4;

    .line 2
    new-instance p1, Le/a/a/c/a3$a;

    invoke-direct {p1, p2}, Le/a/a/c/a3$a;-><init>(Le/a/a/i1/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/a3;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/a/c/j8/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/a/c/a3;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/a/c/j8/c;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/a/c/a3;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/c/j8/a;

    .line 4
    iget v0, p2, Le/a/a/c/j8/a;->b:I

    .line 5
    invoke-interface {p1, v0}, Le/a/a/c/j8/c;->P1(I)V

    .line 6
    new-instance v0, Le/a/a/c/b3;

    invoke-direct {v0, p0, p2}, Le/a/a/c/b3;-><init>(Le/a/a/c/a3;Le/a/a/c/j8/a;)V

    invoke-interface {p1, v0}, Le/a/a/c/j8/c;->setOnClickListener(Ls1/z/b/a;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/a3;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/a3;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/c/j8/a;

    .line 2
    iget-object p1, p1, Le/a/a/c/j8/a;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method
