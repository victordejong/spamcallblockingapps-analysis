.class public final Le/a/a/c/j3;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/i3;

.field public final synthetic c:Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Le/a/a/c/i3;Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/j3;->b:Le/a/a/c/i3;

    iput-object p2, p0, Le/a/a/c/j3;->c:Lcom/truecaller/messaging/data/types/Message;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/a/c/j3;->b:Le/a/a/c/i3;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/m3;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x7f1201c5

    .line 4
    invoke-interface {p1, v0}, Le/a/a/c/m3;->a(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Le/a/a/c/j3;->b:Le/a/a/c/i3;

    iget-object p1, p0, Le/a/a/c/j3;->c:Lcom/truecaller/messaging/data/types/Message;

    .line 6
    iget-object v2, v1, Le/a/a/c/i3;->i:Ls1/w/f;

    new-instance v4, Le/a/a/c/l3;

    const/4 v0, 0x0

    invoke-direct {v4, v1, p1, v0}, Le/a/a/c/l3;-><init>(Le/a/a/c/i3;Lcom/truecaller/messaging/data/types/Message;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 7
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
