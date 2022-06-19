.class public final Le/a/f3/p;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/callbubbles/CallBubblesContainerView;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f3/o;


# direct methods
.method public constructor <init>(Le/a/f3/o;)V
    .locals 0

    iput-object p1, p0, Le/a/f3/p;->b:Le/a/f3/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/callbubbles/CallBubblesContainerView;

    const-string v0, "bubbleView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->l()V

    .line 4
    iget-object p1, p0, Le/a/f3/p;->b:Le/a/f3/o;

    invoke-virtual {p1}, Le/a/f3/o;->getCoroutineContext()Ls1/w/f;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Ls1/a/a/a/v0/f/d;->R(Ls1/w/f;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
