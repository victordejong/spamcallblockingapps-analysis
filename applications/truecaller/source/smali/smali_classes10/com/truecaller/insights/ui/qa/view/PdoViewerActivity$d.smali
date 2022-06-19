.class public final Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lq3/a/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$d;->b:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$d;->b:Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;

    .line 2
    iget-object v1, v0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->c:Ls1/w/f;

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->d:Lq3/a/y;

    .line 4
    invoke-interface {v1, v0}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "uiContext"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
