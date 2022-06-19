.class public final Le/a/d/u/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/u/c;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ljava/util/Set<",
        "+",
        "Le/a/d/x/r/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/x2/g;

.field public final synthetic b:Le/a/d/u/c;


# direct methods
.method public constructor <init>(Lq3/a/x2/g;Le/a/d/u/c;)V
    .locals 0

    iput-object p1, p0, Le/a/d/u/c$a;->a:Lq3/a/x2/g;

    iput-object p2, p0, Le/a/d/u/c$a;->b:Le/a/d/u/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Le/a/d/u/c$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/u/c$a$a;

    iget v1, v0, Le/a/d/u/c$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/u/c$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/u/c$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/u/c$a$a;-><init>(Le/a/d/u/c$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/u/c$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/u/c$a$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/d/u/c$a$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/util/Set;

    iget-object v2, v0, Le/a/d/u/c$a$a;->f:Ljava/lang/Object;

    check-cast v2, Lq3/a/x2/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, p0, Le/a/d/u/c$a;->a:Lq3/a/x2/g;

    .line 5
    check-cast p1, Ljava/util/Set;

    .line 6
    iget-object p2, p0, Le/a/d/u/c$a;->b:Le/a/d/u/c;

    iget-object v5, p2, Le/a/d/u/c;->b:Le/a/d/c0/z1/i;

    iget p2, p2, Le/a/d/u/c;->c:I

    iput-object v2, v0, Le/a/d/u/c$a$a;->f:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/u/c$a$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/d/u/c$a$a;->e:I

    invoke-interface {v5, p2, v0}, Le/a/d/c0/z1/i;->k(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 7
    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/String;

    const/4 v4, 0x0

    if-nez p2, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    .line 8
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Le/a/d/x/r/i;

    invoke-virtual {v6, p2}, Le/a/d/x/r/i;->a(Ljava/lang/String;)Z

    move-result v6

    .line 9
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 10
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_7
    move-object v5, v4

    :goto_2
    check-cast v5, Le/a/d/x/r/i;

    if-eqz v5, :cond_8

    .line 11
    iget-object p1, v5, Le/a/d/x/r/i;->b:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object p1, v4

    .line 12
    :goto_3
    sget-object p2, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Busy:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {p2}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 13
    :goto_4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 14
    iput-object v4, v0, Le/a/d/u/c$a$a;->f:Ljava/lang/Object;

    iput-object v4, v0, Le/a/d/u/c$a$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/d/u/c$a$a;->e:I

    invoke-interface {v2, p1, v0}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
