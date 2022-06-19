.class public final Ln1;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Ln1;->b:I

    iput-object p2, p0, Ln1;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Ln1;->b:I

    const/4 v2, 0x0

    const-string v3, "it"

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 1
    check-cast p1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;

    .line 2
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v1, p1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ln1;->c:Ljava/lang/Object;

    check-cast v1, Le/a/k/a/g/f;

    invoke-virtual {v1}, Le/a/k/a/g/f;->SA()Le/a/k/a/g/w;

    move-result-object v1

    check-cast p1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;

    .line 4
    iget-object p1, p1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption$PredefinedVideo;->a:Ljava/lang/String;

    .line 5
    check-cast v1, Le/a/k/a/g/y;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "videoId"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v1, Le/a/k/a/g/y;->s:Le/a/k/c/p1;

    invoke-interface {v1, p1}, Le/a/k/c/p1;->c(Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 8
    :cond_1
    throw v2

    .line 9
    :cond_2
    check-cast p1, Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;

    .line 10
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Ln1;->c:Ljava/lang/Object;

    check-cast v1, Le/a/k/a/g/f;

    invoke-virtual {v1}, Le/a/k/a/g/f;->SA()Le/a/k/a/g/w;

    move-result-object v1

    check-cast v1, Le/a/k/a/g/y;

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "option"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v3, Le/a/k/a/g/d0;

    invoke-direct {v3, v1, p1, v2}, Le/a/k/a/g/d0;-><init>(Le/a/k/a/g/y;Lcom/truecaller/videocallerid/ui/recording/customisation_option/VideoCustomisationOption;Ls1/w/d;)V

    invoke-virtual {v1, v3}, Le/a/k/a/g/y;->Pj(Ls1/z/b/l;)V

    return-object v0
.end method
