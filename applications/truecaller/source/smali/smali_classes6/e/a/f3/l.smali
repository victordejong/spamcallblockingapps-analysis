.class public final Le/a/f3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/callbubbles/CallBubblesContainerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/callbubbles/CallBubblesContainerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/f3/l;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/f3/l;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    .line 2
    sget v0, Lcom/truecaller/callbubbles/CallBubblesContainerView;->m:I

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->j()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
