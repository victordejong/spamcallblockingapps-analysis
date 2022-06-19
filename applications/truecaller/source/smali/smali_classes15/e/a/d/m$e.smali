.class public final Le/a/d/m$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/m;->E(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/d/c0/f1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.VoipSupportImpl$searchCaller$2"
    f = "VoipSupportImpl.kt"
    l = {
        0xbf,
        0xc2,
        0xc8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/m;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lcom/truecaller/voip/util/VoipSearchDirection;


# direct methods
.method public constructor <init>(Le/a/d/m;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/m$e;->h:Le/a/d/m;

    iput-object p2, p0, Le/a/d/m$e;->i:Ljava/lang/String;

    iput-object p3, p0, Le/a/d/m$e;->j:Lcom/truecaller/voip/util/VoipSearchDirection;

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

    new-instance p1, Le/a/d/m$e;

    iget-object v0, p0, Le/a/d/m$e;->h:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$e;->i:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/m$e;->j:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/m$e;-><init>(Le/a/d/m;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/m$e;

    iget-object v0, p0, Le/a/d/m$e;->h:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$e;->i:Ljava/lang/String;

    iget-object v2, p0, Le/a/d/m$e;->j:Lcom/truecaller/voip/util/VoipSearchDirection;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/m$e;-><init>(Le/a/d/m;Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/m$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/m$e;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Le/a/d/m$e;->e:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Le/a/d/m$e;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v4, p0, Le/a/d/m$e;->e:Ljava/lang/Object;

    check-cast v4, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object v1

    .line 4
    iget-object p1, p0, Le/a/d/m$e;->h:Le/a/d/m;

    iget-object v6, p0, Le/a/d/m$e;->i:Ljava/lang/String;

    iget-object v7, p0, Le/a/d/m$e;->j:Lcom/truecaller/voip/util/VoipSearchDirection;

    iput-object v1, p0, Le/a/d/m$e;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/d/m$e;->f:Ljava/lang/Object;

    iput v4, p0, Le/a/d/m$e;->g:I

    invoke-virtual {p1, v6, v7, v4, p0}, Le/a/d/m;->I(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object v4, v1

    .line 5
    :goto_0
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Le/a/d/m$e;->h:Le/a/d/m;

    iget-object v1, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    invoke-static {p1, v1}, Le/a/d/m;->G(Le/a/d/m;Lcom/truecaller/data/entity/Contact;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Search result for number is invalid. Trying search without using cache. Contact: "

    .line 7
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/data/entity/Contact;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 8
    iget-object p1, p0, Le/a/d/m$e;->h:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$e;->i:Ljava/lang/String;

    iget-object v6, p0, Le/a/d/m$e;->j:Lcom/truecaller/voip/util/VoipSearchDirection;

    const/4 v7, 0x0

    iput-object v4, p0, Le/a/d/m$e;->e:Ljava/lang/Object;

    iput-object v5, p0, Le/a/d/m$e;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/m$e;->g:I

    invoke-virtual {p1, v1, v6, v7, p0}, Le/a/d/m;->I(Ljava/lang/String;Lcom/truecaller/voip/util/VoipSearchDirection;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v1, v4

    .line 9
    :goto_1
    move-object v3, p1

    check-cast v3, Lcom/truecaller/data/entity/Contact;

    iget-object v4, p0, Le/a/d/m$e;->h:Le/a/d/m;

    invoke-static {v4, v3}, Le/a/d/m;->G(Le/a/d/m;Lcom/truecaller/data/entity/Contact;)Z

    move-result v3

    .line 10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v5

    :goto_2
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_7

    .line 12
    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    :cond_7
    move-object v4, v1

    .line 13
    :cond_8
    iget-object p1, v4, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_a

    iget-object v1, p0, Le/a/d/m$e;->h:Le/a/d/m;

    iget-object v3, p0, Le/a/d/m$e;->i:Ljava/lang/String;

    iput-object v5, p0, Le/a/d/m$e;->e:Ljava/lang/Object;

    iput-object v5, p0, Le/a/d/m$e;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/d/m$e;->g:I

    invoke-virtual {v1, p1, v3, p0}, Le/a/d/m;->J(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    :goto_3
    move-object v5, p1

    check-cast v5, Le/a/d/c0/f1;

    :cond_a
    return-object v5
.end method
