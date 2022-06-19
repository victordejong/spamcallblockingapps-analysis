.class public final Le/a/o/b/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/l0;


# instance fields
.field public final a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Lcom/truecaller/data/entity/CallContextMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/b0/q/z;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneNumberHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/b/m0;->b:Lo3/a;

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/o/b/m0;->a:Lq3/a/x2/a1;

    return-void
.end method


# virtual methods
.method public i()Lq3/a/x2/a1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/a1<",
            "Lcom/truecaller/data/entity/CallContextMessage;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/b/m0;->a:Lq3/a/x2/a1;

    return-object v0
.end method

.method public k(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/CallContextMessage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/o/b/m0;->a:Lq3/a/x2/a1;

    .line 2
    invoke-interface {p2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/data/entity/CallContextMessage;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 3
    iget-object v1, p2, Lcom/truecaller/data/entity/CallContextMessage;->b:Ljava/lang/String;

    .line 4
    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2

    .line 5
    :cond_0
    iget-object v1, p0, Le/a/o/b/m0;->b:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/q/z;

    invoke-interface {v1, p1}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object v1, p2, Lcom/truecaller/data/entity/CallContextMessage;->b:Ljava/lang/String;

    .line 7
    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p2

    :cond_1
    return-object v0
.end method
