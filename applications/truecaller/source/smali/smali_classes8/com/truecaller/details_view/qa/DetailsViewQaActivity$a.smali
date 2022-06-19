.class public final Lcom/truecaller/details_view/qa/DetailsViewQaActivity$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/details_view/qa/DetailsViewQaActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p5/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/details_view/qa/DetailsViewQaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/details_view/qa/DetailsViewQaActivity$a;->b:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/qa/DetailsViewQaActivity$a;->b:Lcom/truecaller/details_view/qa/DetailsViewQaActivity;

    .line 2
    iget-object v0, v0, Lcom/truecaller/details_view/qa/DetailsViewQaActivity;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j2;

    .line 3
    invoke-interface {v0}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v0

    const-string v1, "trueGraph.clock()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
