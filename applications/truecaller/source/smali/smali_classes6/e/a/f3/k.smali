.class public final Le/a/f3/k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/f3/x;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/callbubbles/CallBubblesContainerView;


# direct methods
.method public constructor <init>(Lcom/truecaller/callbubbles/CallBubblesContainerView;)V
    .locals 0

    iput-object p1, p0, Le/a/f3/k;->b:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Le/a/f3/x;

    const-string v0, "event"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New bubble touch event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    instance-of v0, p1, Le/a/f3/x$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f3/k;->b:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    check-cast p1, Le/a/f3/x$b;

    .line 5
    iget v1, p1, Le/a/f3/x$b;->a:F

    .line 6
    iget p1, p1, Le/a/f3/x$b;->b:F

    .line 7
    invoke-static {v0, v1, p1}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->b(Lcom/truecaller/callbubbles/CallBubblesContainerView;FF)V

    goto :goto_0

    .line 8
    :cond_0
    instance-of v0, p1, Le/a/f3/x$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/f3/k;->b:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    check-cast p1, Le/a/f3/x$c;

    .line 9
    iget v1, p1, Le/a/f3/x$c;->a:F

    .line 10
    iget p1, p1, Le/a/f3/x$c;->b:F

    .line 11
    sget v2, Lcom/truecaller/callbubbles/CallBubblesContainerView;->m:I

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->m(FF)V

    goto :goto_0

    .line 13
    :cond_1
    instance-of v0, p1, Le/a/f3/x$e;

    if-eqz v0, :cond_2

    iget-object p1, p0, Le/a/f3/k;->b:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    .line 14
    sget v0, Lcom/truecaller/callbubbles/CallBubblesContainerView;->m:I

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0, v0}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->m(FF)V

    goto :goto_0

    .line 16
    :cond_2
    instance-of p1, p1, Le/a/f3/x$d;

    if-eqz p1, :cond_3

    iget-object p1, p0, Le/a/f3/k;->b:Lcom/truecaller/callbubbles/CallBubblesContainerView;

    .line 17
    iget-object p1, p1, Lcom/truecaller/callbubbles/CallBubblesContainerView;->h:Ls1/z/b/a;

    if-eqz p1, :cond_3

    .line 18
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 19
    :cond_3
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
