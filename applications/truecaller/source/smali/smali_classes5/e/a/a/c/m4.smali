.class public final Le/a/a/c/m4;
.super Le/a/a/c/d3;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/l4;


# instance fields
.field public final h:Le/a/a/c/u5;


# direct methods
.method public constructor <init>(Le/a/a/v0/a;Le/a/u3/g;Le/a/a/c/u5;Ls1/w/f;Lo3/a;Le/a/q2/a;)V
    .locals 6
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p5    # Lo3/a;
        .annotation runtime Ljavax/inject/Named;
            value = "LinkPreviewExtractorContext"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/v0/a;",
            "Le/a/u3/g;",
            "Le/a/a/c/u5;",
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

    const-string v0, "draftEntityPresenter"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkPreviewContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/a/c/d3;-><init>(Le/a/a/v0/a;Le/a/u3/g;Ls1/w/f;Lo3/a;Le/a/q2/a;)V

    iput-object p3, p0, Le/a/a/c/m4;->h:Le/a/a/c/u5;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/c/m4;->i()V

    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/c/m4;->i()V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/m4;->h:Le/a/a/c/u5;

    invoke-virtual {p0}, Le/a/a/c/d3;->h()Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/a/c/u5;->Lj(Lcom/truecaller/messaging/linkpreviews/LinkMetaData;)V

    return-void
.end method
