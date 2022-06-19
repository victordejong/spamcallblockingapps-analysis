.class public final Le/a/f3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/p/a/b$l;


# instance fields
.field public final synthetic a:Lcom/truecaller/callbubbles/CallBubblesContainerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/callbubbles/CallBubblesContainerView;)V
    .locals 0

    iput-object p1, p0, Le/a/f3/m;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ln3/p/a/b;ZFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/p/a/b<",
            "Ln3/p/a/b<",
            "*>;>;ZFF)V"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/f3/m;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    .line 2
    sget p3, Lcom/truecaller/callbubbles/CallBubblesContainerView;->m:I

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->j()V

    .line 4
    iget-object p2, p0, Le/a/f3/m;->a:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    .line 5
    iget-object p2, p2, Lcom/truecaller/callbubbles/CallBubblesContainerView;->k:Ljava/util/List;

    .line 6
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
