.class public final Le/a/x4/j/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/x4/j/a;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/x4/j/c/a;

.field public final c:Le/a/x4/j/d/b;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/x4/j/c/a;Le/a/x4/j/d/b;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsStubManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchWarningsDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x4/j/b;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/x4/j/b;->b:Le/a/x4/j/c/a;

    iput-object p3, p0, Le/a/x4/j/b;->c:Le/a/x4/j/d/b;

    return-void
.end method

.method public static final e(Le/a/x4/j/b;Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;)Lcom/truecaller/searchwarnings/data/SearchWarningDTO;
    .locals 7

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;

    invoke-virtual {p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v0, "id"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getHeader()Ljava/lang/String;

    move-result-object v2

    const-string v0, "header"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v0, "message"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getBackgroundColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getForegroundColor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/truecaller/api/services/searchwarnings/v1/ListAllSearchWarningsResult;->getIconUrl()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/searchwarnings/data/SearchWarningDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public varargs a([Lcom/truecaller/searchwarnings/data/SearchWarningDTO;)V
    .locals 2

    const-string v0, "searchWarnings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/x4/j/b$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/x4/j/b$c;-><init>(Le/a/x4/j/b;[Lcom/truecaller/searchwarnings/data/SearchWarningDTO;Ls1/w/d;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/searchwarnings/data/SearchWarningDTO;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/x4/j/b;->c:Le/a/x4/j/d/b;

    invoke-interface {v0, p1, p2}, Le/a/x4/j/d/b;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/x4/j/b;->a:Ls1/w/f;

    new-instance v1, Le/a/x4/j/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/x4/j/b$a;-><init>(Le/a/x4/j/b;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d([Lcom/truecaller/searchwarnings/data/SearchWarningDTO;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/searchwarnings/data/SearchWarningDTO;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/x4/j/b;->a:Ls1/w/f;

    new-instance v1, Le/a/x4/j/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/x4/j/b$b;-><init>(Le/a/x4/j/b;[Lcom/truecaller/searchwarnings/data/SearchWarningDTO;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
