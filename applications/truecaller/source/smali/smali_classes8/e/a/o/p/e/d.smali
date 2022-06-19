.class public final Le/a/o/p/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/p/e/c;


# instance fields
.field public final a:Ls1/g;

.field public final b:Lcom/truecaller/contextcall/db/ContextCallDatabase;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/db/ContextCallDatabase;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callContextDatabase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iOContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o/p/e/d;->b:Lcom/truecaller/contextcall/db/ContextCallDatabase;

    iput-object p2, p0, Le/a/o/p/e/d;->c:Ls1/w/f;

    .line 2
    new-instance p1, Le/a/o/p/e/d$a;

    invoke-direct {p1, p0}, Le/a/o/p/e/d$a;-><init>(Le/a/o/p/e/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/o/p/e/d;->a:Ls1/g;

    return-void
.end method

.method public static final f(Le/a/o/p/e/d;)Le/a/o/p/e/a;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/o/p/e/d;->a:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/o/p/e/a;

    return-object p0
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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
    iget-object v0, p0, Le/a/o/p/e/d;->c:Ls1/w/f;

    new-instance v1, Le/a/o/p/e/d$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/o/p/e/d$c;-><init>(Le/a/o/p/e/d;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;
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
    iget-object v0, p0, Le/a/o/p/e/d;->c:Ls1/w/f;

    new-instance v1, Le/a/o/p/e/d$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/p/e/d$f;-><init>(Le/a/o/p/e/d;Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
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
    iget-object v0, p0, Le/a/o/p/e/d;->c:Ls1/w/f;

    new-instance v1, Le/a/o/p/e/d$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/p/e/d$e;-><init>(Le/a/o/p/e/d;Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

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
    iget-object v0, p0, Le/a/o/p/e/d;->c:Ls1/w/f;

    new-instance v1, Le/a/o/p/e/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/o/p/e/d$b;-><init>(Le/a/o/p/e/d;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)Ljava/lang/Object;
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
    iget-object v0, p0, Le/a/o/p/e/d;->c:Ls1/w/f;

    new-instance v1, Le/a/o/p/e/d$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/o/p/e/d$d;-><init>(Le/a/o/p/e/d;Lcom/truecaller/contextcall/db/reason/CallReason;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
