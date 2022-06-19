.class public final Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/c/a/k/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/k/c/d;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/c/a/k/c/d;

    .line 2
    iget-object p2, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;

    iget-object p2, p2, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    .line 3
    iget-object p2, p2, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 4
    iget-object p2, p2, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    .line 5
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;

    iget-object p2, p2, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    .line 7
    iget-object v1, p2, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 8
    iget-object v1, v1, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {p2, v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->h(Z)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;

    iget-object p2, p2, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    .line 11
    iget-object v1, p1, Le/a/c/a/k/c/d;->b:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 14
    new-instance p2, Le/a/c/a/k/c/c$c;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Le/a/c/a/k/c/c$c;-><init>(Z)V

    goto :goto_0

    .line 15
    :cond_1
    new-instance p2, Le/a/c/a/k/c/c$c;

    invoke-direct {p2, v0}, Le/a/c/a/k/c/c$c;-><init>(Z)V

    :goto_0
    const-string v0, "$this$toSet"

    .line 16
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    .line 18
    iget-object v0, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;

    iget-object v0, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    .line 19
    iget-object v1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->a:Le/a/c/a/k/c/b;

    .line 20
    iput-object p1, v1, Le/a/c/a/k/c/b;->a:Le/a/c/a/k/c/d;

    .line 21
    iget-object p1, v0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->c:Ln3/v/k0;

    .line 22
    invoke-virtual {p1, p2}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a$a;->a:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;

    iget-object p1, p1, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a;->f:Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    .line 24
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->d()V

    .line 25
    :cond_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
