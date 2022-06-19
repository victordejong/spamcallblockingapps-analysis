.class public final Le/a/a/c/c/u;
.super Le/a/a/c/d3;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/c/t;


# instance fields
.field public h:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/messaging/linkpreviews/LinkMetaData;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/v0/a;Le/a/u3/g;Ls1/w/f;Lo3/a;Le/a/q2/a;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p4    # Lo3/a;
        .annotation runtime Ljavax/inject/Named;
            value = "LinkPreviewExtractorContext"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/v0/a;",
            "Le/a/u3/g;",
            "Ls1/w/f;",
            "Lo3/a<",
            "Lq3/a/g0;",
            ">;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "linkMetaDataExtractor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkPreviewContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p5}, Le/a/a/c/d3;-><init>(Le/a/a/v0/a;Le/a/u3/g;Ls1/w/f;Lo3/a;Le/a/q2/a;)V

    return-void
.end method


# virtual methods
.method public b(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/messaging/linkpreviews/LinkMetaData;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onUpdateRequired"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/a/c/c/u;->h:Ls1/z/b/l;

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/c/u;->h:Ls1/z/b/l;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/a/c/d3;->h()Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    :cond_0
    return-void
.end method
