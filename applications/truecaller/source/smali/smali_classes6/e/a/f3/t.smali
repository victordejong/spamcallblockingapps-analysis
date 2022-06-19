.class public final Le/a/f3/t;
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
.field public final synthetic b:Le/a/f3/y/a;


# direct methods
.method public constructor <init>(Le/a/f3/y/a;)V
    .locals 0

    iput-object p1, p0, Le/a/f3/t;->b:Le/a/f3/y/a;

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
    iget-object v0, p0, Le/a/f3/t;->b:Le/a/f3/y/a;

    .line 4
    iget-object v0, v0, Le/a/f3/y/a;->a:Ljava/lang/Integer;

    .line 5
    invoke-virtual {p1, v0}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->setStateText(Ljava/lang/Integer;)V

    .line 6
    iget-object v0, p0, Le/a/f3/t;->b:Le/a/f3/y/a;

    .line 7
    iget v1, v0, Le/a/f3/y/a;->b:I

    .line 8
    iget v0, v0, Le/a/f3/y/a;->c:I

    .line 9
    invoke-virtual {p1, v1, v0}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->p(II)V

    .line 10
    iget-object v0, p0, Le/a/f3/t;->b:Le/a/f3/y/a;

    .line 11
    instance-of v1, v0, Le/a/f3/y/a$c;

    if-eqz v1, :cond_0

    check-cast v0, Le/a/f3/y/a$c;

    .line 12
    iget-wide v0, v0, Le/a/f3/y/a$c;->d:J

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/truecaller/callbubbles/CallBubblesContainerView;->s(J)V

    .line 14
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
