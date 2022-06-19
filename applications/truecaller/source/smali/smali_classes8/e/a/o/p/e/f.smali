.class public final Le/a/o/p/e/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/p/e/e;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o/p/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/o/b/b;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/o/b/b;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/o/p/e/c;",
            ">;",
            "Le/a/o/b/b;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callReasonDbHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iOContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/p/e/f;->a:Lo3/a;

    iput-object p2, p0, Le/a/o/p/e/f;->b:Le/a/o/b/b;

    iput-object p3, p0, Le/a/o/p/e/f;->c:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/f;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/p/e/c;

    invoke-interface {v0, p1}, Le/a/o/p/e/c;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    iget-object v2, p0, Le/a/o/p/e/f;->b:Le/a/o/b/b;

    invoke-virtual {p1}, Lcom/truecaller/contextcall/db/reason/CallReason;->getReasonText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Le/a/o/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2
    iget-object v3, p0, Le/a/o/p/e/f;->a:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/o/p/e/c;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v4, v2, v5, v6}, Lcom/truecaller/contextcall/db/reason/CallReason;->copy$default(Lcom/truecaller/contextcall/db/reason/CallReason;ILjava/lang/String;ILjava/lang/Object;)Lcom/truecaller/contextcall/db/reason/CallReason;

    move-result-object p1

    invoke-interface {v3, p1, p2}, Le/a/o/p/e/c;->b(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_0

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    if-ne v2, v1, :cond_2

    return-object v2

    :cond_2
    return-object v0
.end method

.method public c(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/db/reason/CallReason;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/f;->c:Ls1/w/f;

    new-instance v1, Le/a/o/p/e/f$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/p/e/f$c;-><init>(Le/a/o/p/e/f;Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Le/a/o/p/e/f;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o/p/e/c;

    invoke-interface {v0, p1}, Le/a/o/p/e/c;->d(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/e/f;->c:Ls1/w/f;

    new-instance v1, Le/a/o/p/e/f$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/p/e/f$a;-><init>(Le/a/o/p/e/f;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Le/a/m0/a1$k;->b1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f()Ljava/lang/Integer;
    .locals 3

    .line 1
    new-instance v0, Le/a/o/p/e/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/o/p/e/f$b;-><init>(Le/a/o/p/e/f;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
