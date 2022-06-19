.class public final Lcom/truecaller/callbubbles/CallBubblesContainerView$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/p/a/b$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/callbubbles/CallBubblesContainerView;->r(Ln3/p/a/b$n;FFFFLjava/lang/Float;Ls1/z/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

.field public final synthetic b:Ln3/p/a/b$n;

.field public final synthetic c:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Lcom/truecaller/callbubbles/CallBubblesContainerView;Ln3/p/a/b$n;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$e;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    iput-object p2, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$e;->b:Ln3/p/a/b$n;

    iput-object p3, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$e;->c:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln3/p/a/b;ZFF)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/p/a/b<",
            "Ln3/p/a/b<",
            "*>;>;ZFF)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$e;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    .line 2
    iget-object p3, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$e;->b:Ln3/p/a/b$n;

    .line 3
    iget-object v0, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$e;->c:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 4
    invoke-static {p2, p3, p4, v0}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->i(Lcom/truecaller/callbubbles/CallBubblesContainerView;Ln3/p/a/b$n;FF)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/callbubbles/CallBubblesContainerView$e;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    .line 6
    iget-object p2, p2, Lcom/truecaller/callbubbles/CallBubblesContainerView;->k:Ljava/util/List;

    .line 7
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
