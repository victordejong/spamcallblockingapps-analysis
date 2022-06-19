.class public final Lu1;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
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

    iput p1, p0, Lu1;->b:I

    iput-object p2, p0, Lu1;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lu1;->b:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1
    iget-object v1, p0, Lu1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/truecontext/TrueContext;

    .line 2
    iget-object v3, v1, Lcom/truecaller/truecontext/TrueContext;->B:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    .line 3
    iput-object v2, v1, Lcom/truecaller/truecontext/TrueContext;->B:Landroid/widget/PopupWindow;

    .line 4
    iget-object v1, v1, Lcom/truecaller/truecontext/TrueContext;->u:Le/a/m5/c;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/m5/c;->g4()V

    .line 5
    :cond_0
    iget-object v1, p0, Lu1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/truecontext/TrueContext;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/truecaller/truecontext/TrueContext;->f1(Lcom/truecaller/truecontext/TrueContext;Z)V

    return-object v0

    .line 6
    :cond_1
    throw v2

    .line 7
    :cond_2
    iget-object v1, p0, Lu1;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/truecontext/TrueContext;

    .line 8
    iget-object v3, v1, Lcom/truecaller/truecontext/TrueContext;->B:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_3

    .line 9
    iput-object v2, v1, Lcom/truecaller/truecontext/TrueContext;->B:Landroid/widget/PopupWindow;

    .line 10
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    return-object v0
.end method
