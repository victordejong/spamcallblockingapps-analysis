.class public final Le/a/d/c0/t1$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/t1;->g(Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;)V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipUtilImpl$isContactVoipCapable$1"
    f = "VoipUtilImpl.kt"
    l = {
        0x109,
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/d/c0/t1;

.field public final synthetic i:Lcom/truecaller/data/entity/Contact;

.field public final synthetic j:Le/a/d/c0/l0;


# direct methods
.method public constructor <init>(Le/a/d/c0/t1;Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/t1$b;->h:Le/a/d/c0/t1;

    iput-object p2, p0, Le/a/d/c0/t1$b;->i:Lcom/truecaller/data/entity/Contact;

    iput-object p3, p0, Le/a/d/c0/t1$b;->j:Le/a/d/c0/l0;

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

    new-instance p1, Le/a/d/c0/t1$b;

    iget-object v0, p0, Le/a/d/c0/t1$b;->h:Le/a/d/c0/t1;

    iget-object v1, p0, Le/a/d/c0/t1$b;->i:Lcom/truecaller/data/entity/Contact;

    iget-object v2, p0, Le/a/d/c0/t1$b;->j:Le/a/d/c0/l0;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/t1$b;-><init>(Le/a/d/c0/t1;Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/t1$b;

    iget-object v0, p0, Le/a/d/c0/t1$b;->h:Le/a/d/c0/t1;

    iget-object v1, p0, Le/a/d/c0/t1$b;->i:Lcom/truecaller/data/entity/Contact;

    iget-object v2, p0, Le/a/d/c0/t1$b;->j:Le/a/d/c0/l0;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/c0/t1$b;-><init>(Le/a/d/c0/t1;Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/t1$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/t1$b;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object v1, p0, Le/a/d/c0/t1$b;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/y;

    iget-object v3, p0, Le/a/d/c0/t1$b;->e:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/y;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Ls1/z/c/y;

    invoke-direct {v1}, Ls1/z/c/y;-><init>()V

    iget-object p1, p0, Le/a/d/c0/t1$b;->h:Le/a/d/c0/t1;

    .line 5
    iget-object v4, p0, Le/a/d/c0/t1$b;->i:Lcom/truecaller/data/entity/Contact;

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    const-string v5, "contact.numbers"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {v4}, Ls1/u/i;->z(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 9
    check-cast v6, Lcom/truecaller/data/entity/Number;

    .line 10
    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 11
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    iput-object v1, p0, Le/a/d/c0/t1$b;->e:Ljava/lang/Object;

    iput-object v1, p0, Le/a/d/c0/t1$b;->f:Ljava/lang/Object;

    iput v3, p0, Le/a/d/c0/t1$b;->g:I

    .line 13
    invoke-virtual {p1, v5, p0}, Le/a/d/c0/t1;->m(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, v1

    .line 14
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v1, Ls1/z/c/y;->a:Z

    .line 15
    iget-object p1, p0, Le/a/d/c0/t1$b;->h:Le/a/d/c0/t1;

    .line 16
    iget-object p1, p1, Le/a/d/c0/t1;->a:Ls1/w/f;

    .line 17
    new-instance v1, Le/a/d/c0/t1$b$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Le/a/d/c0/t1$b$a;-><init>(Le/a/d/c0/t1$b;Ls1/z/c/y;Ls1/w/d;)V

    iput-object v4, p0, Le/a/d/c0/t1$b;->e:Ljava/lang/Object;

    iput-object v4, p0, Le/a/d/c0/t1$b;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/d/c0/t1$b;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 18
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
