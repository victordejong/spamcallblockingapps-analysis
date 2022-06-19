.class public final Le/a/f3/h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/callbubbles/CallBubblesContainerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/callbubbles/CallBubblesContainerView;)V
    .locals 0

    iput-object p1, p0, Le/a/f3/h;->b:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f3/h;->b:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    sget v1, Lcom/truecaller/callbubbles/R$id;->bubble:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method
