.class public final Le/a/d/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/f;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/c0<",
        "Le/a/d/a/o;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/a/f;

.field public final synthetic b:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Le/a/d/a/f;Ljava/util/LinkedHashMap;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/f$a;->a:Le/a/d/a/f;

    iput-object p2, p0, Le/a/d/a/f$a;->b:Ljava/util/LinkedHashMap;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Le/a/d/a/f$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/a/f$a$a;

    iget v1, v0, Le/a/d/a/f$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/a/f$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/a/f$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/a/f$a$a;-><init>(Le/a/d/a/f$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/a/f$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/a/f$a$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Le/a/d/c0/c0;

    .line 5
    instance-of p2, p1, Le/a/d/c0/c0$a;

    if-eqz p2, :cond_3

    iget-object p2, p0, Le/a/d/a/f$a;->a:Le/a/d/a/f;

    iget-object p2, p2, Le/a/d/a/f;->f:Le/a/d/a/a;

    check-cast p1, Le/a/d/c0/c0$a;

    .line 6
    iget-object p1, p1, Le/a/d/c0/c0$a;->a:Ljava/util/Set;

    .line 7
    iget-object v2, p0, Le/a/d/a/f$a;->b:Ljava/util/LinkedHashMap;

    iput v3, v0, Le/a/d/a/f$a$a;->e:I

    invoke-virtual {p2, p1, v2, v0}, Le/a/d/a/a;->RA(Ljava/util/Set;Ljava/util/HashMap;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 8
    :cond_3
    instance-of p2, p1, Le/a/d/c0/c0$b;

    if-eqz p2, :cond_5

    iget-object p2, p0, Le/a/d/a/f$a;->a:Le/a/d/a/f;

    iget-object p2, p2, Le/a/d/a/f;->f:Le/a/d/a/a;

    check-cast p1, Le/a/d/c0/c0$b;

    .line 9
    iget-object p1, p1, Le/a/d/c0/c0$b;->a:Ljava/util/Set;

    .line 10
    iget-object v0, p0, Le/a/d/a/f$a;->b:Ljava/util/LinkedHashMap;

    .line 11
    sget-object v1, Le/a/d/a/a;->i:[Ls1/a/l;

    .line 12
    invoke-virtual {p2}, Le/a/d/a/a;->SA()Le/a/d/s/i;

    move-result-object p2

    .line 13
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/a/o;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_4

    const-string v2, "peerViewMap.remove(deletedPeer) ?: return@forEach"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v2, p2, Le/a/d/s/i;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 16
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 17
    iget-object v1, p2, Le/a/d/s/i;->e:Landroid/widget/LinearLayout;

    const-string v2, "llCalls"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_1

    .line 18
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
