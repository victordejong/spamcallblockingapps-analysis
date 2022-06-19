.class public final Le/a/d/m$g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/m;->u(Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Le/a/d/c0/k1;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.VoipSupportImpl$searchNumbers$2"
    f = "VoipSupportImpl.kt"
    l = {
        0xa9,
        0xb1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/m;

.field public final synthetic h:Ljava/util/Set;

.field public final synthetic i:Lcom/truecaller/voip/util/VoipSearchDirection;


# direct methods
.method public constructor <init>(Le/a/d/m;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/m$g;->g:Le/a/d/m;

    iput-object p2, p0, Le/a/d/m$g;->h:Ljava/util/Set;

    iput-object p3, p0, Le/a/d/m$g;->i:Lcom/truecaller/voip/util/VoipSearchDirection;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/m$g;

    iget-object v0, p0, Le/a/d/m$g;->g:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$g;->h:Ljava/util/Set;

    iget-object v2, p0, Le/a/d/m$g;->i:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/m$g;-><init>(Le/a/d/m;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/m$g;

    iget-object v0, p0, Le/a/d/m$g;->g:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$g;->h:Ljava/util/Set;

    iget-object v2, p0, Le/a/d/m$g;->i:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/m$g;-><init>(Le/a/d/m;Ljava/util/Set;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/m$g;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/u/t;->a:Ls1/u/t;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/m$g;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/d/m$g;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/m$g;->h:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/d/m$g;->i:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-ne p1, v4, :cond_4

    const/16 p1, 0xe

    goto :goto_0

    .line 6
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_5
    const/16 p1, 0x1b

    goto :goto_0

    :cond_6
    const/16 p1, 0x1c

    .line 7
    :goto_0
    iget-object v2, p0, Le/a/d/m$g;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 8
    iget-object p1, p0, Le/a/d/m$g;->h:Ljava/util/Set;

    invoke-static {p1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 9
    iget-object v2, p0, Le/a/d/m$g;->g:Le/a/d/m;

    .line 10
    iget-object v4, p0, Le/a/d/m$g;->i:Lcom/truecaller/voip/util/VoipSearchDirection;

    iput-object p1, p0, Le/a/d/m$g;->e:Ljava/lang/Object;

    iput v5, p0, Le/a/d/m$g;->f:I

    invoke-virtual {v2, p1, v4, v3, p0}, Le/a/d/m;->I(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v1, p1

    move-object p1, v2

    :goto_1
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_b

    .line 11
    iget-object v0, p0, Le/a/d/m$g;->g:Le/a/d/m;

    .line 12
    invoke-virtual {v0, p1, v3}, Le/a/d/m;->K(Lcom/truecaller/data/entity/Contact;Z)Le/a/d/c0/k1;

    move-result-object p1

    .line 13
    new-instance v0, Ls1/k;

    invoke-direct {v0, v1, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-static {v0}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    goto :goto_4

    .line 15
    :cond_8
    iget-object v2, p0, Le/a/d/m$g;->g:Le/a/d/m;

    .line 16
    iget-object v3, p0, Le/a/d/m$g;->h:Ljava/util/Set;

    iput v4, p0, Le/a/d/m$g;->f:I

    .line 17
    iget-object v4, v2, Le/a/d/m;->a:Ls1/w/f;

    new-instance v5, Le/a/d/o;

    invoke-direct {v5, v2, p1, v3}, Le/a/d/o;-><init>(Le/a/d/m;ILjava/util/Set;)V

    invoke-static {v4, v5, p0}, Lq3/a/j;->a(Ls1/w/f;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 18
    :cond_9
    :goto_2
    check-cast p1, Le/a/f4/g/t;

    if-eqz p1, :cond_b

    iget-object p1, p1, Le/a/f4/g/t;->c:Ljava/util/List;

    if-eqz p1, :cond_b

    .line 19
    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    .line 20
    invoke-static {p1}, Ls1/e0/x;->h(Ls1/e0/k;)Ls1/e0/k;

    move-result-object p1

    .line 21
    new-instance v0, Le/a/d/m$g$a;

    invoke-direct {v0, p0}, Le/a/d/m$g$a;-><init>(Le/a/d/m$g;)V

    invoke-static {p1, v0}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 22
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->W0(Ls1/e0/k;)Ls1/e0/k;

    move-result-object p1

    const-string v0, "$this$toMap"

    .line 23
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 25
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$putAll"

    .line 26
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pairs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    check-cast p1, Ls1/e0/i;

    .line 28
    new-instance v0, Ls1/e0/i$a;

    invoke-direct {v0, p1}, Ls1/e0/i$a;-><init>(Ls1/e0/i;)V

    .line 29
    :goto_3
    invoke-virtual {v0}, Ls1/e0/i$a;->a()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 30
    invoke-virtual {v0}, Ls1/e0/i$a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/k;

    .line 31
    iget-object v2, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 32
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 33
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 34
    :cond_a
    invoke-static {v1}, Ls1/u/i;->h0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :cond_b
    :goto_4
    return-object v0
.end method
