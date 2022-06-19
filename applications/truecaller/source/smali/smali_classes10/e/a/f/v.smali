.class public final Le/a/f/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/c0;


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/d/c0/s1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/a/u3/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/d/c0/s1;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/v;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/f/v;->b:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a(Le/a/f/w/f;Lcom/truecaller/incallui/service/CallState;ZLs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/f/w/f;",
            "Lcom/truecaller/incallui/service/CallState;",
            "Z",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p4, Le/a/f/v$a;

    if-eqz v1, :cond_0

    move-object v1, p4

    check-cast v1, Le/a/f/v$a;

    iget v2, v1, Le/a/f/v$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/f/v$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/f/v$a;

    invoke-direct {v1, p0, p4}, Le/a/f/v$a;-><init>(Le/a/f/v;Ls1/w/d;)V

    :goto_0
    iget-object p4, v1, Le/a/f/v$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/f/v$a;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p4, p0, Le/a/f/v;->a:Ljavax/inject/Provider;

    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/a/u3/g;

    .line 5
    iget-object v3, p4, Le/a/u3/g;->x1:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v7, 0x7f

    aget-object v6, v6, v7

    invoke-virtual {v3, p4, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p4

    .line 6
    invoke-interface {p4}, Le/a/u3/b;->isEnabled()Z

    move-result p4

    if-nez p4, :cond_3

    return-object v0

    .line 7
    :cond_3
    sget-object p4, Lcom/truecaller/incallui/service/CallState;->STATE_DISCONNECTED:Lcom/truecaller/incallui/service/CallState;

    if-ne p2, p4, :cond_4

    return-object v0

    :cond_4
    if-eqz p3, :cond_5

    return-object v0

    .line 8
    :cond_5
    sget-boolean p2, Lcom/truecaller/voip/legacy/incall/LegacyVoipService;->l:Z

    if-nez p2, :cond_7

    .line 9
    sget-boolean p2, Lcom/truecaller/voip/legacy/incoming/LegacyIncomingVoipService;->l:Z

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move p2, v4

    goto :goto_2

    :cond_7
    :goto_1
    move p2, v5

    :goto_2
    if-eqz p2, :cond_8

    return-object v0

    .line 10
    :cond_8
    instance-of p2, p1, Le/a/f/w/f$b;

    if-nez p2, :cond_9

    return-object v0

    .line 11
    :cond_9
    check-cast p1, Le/a/f/w/f$b;

    .line 12
    iget-object p1, p1, Le/a/f/w/f$b;->a:Le/a/f/a/g;

    .line 13
    iget-object p1, p1, Le/a/f/a/g;->w:Lcom/truecaller/data/entity/Contact;

    if-eqz p1, :cond_c

    .line 14
    iput v5, v1, Le/a/f/v$a;->e:I

    .line 15
    new-instance p2, Ls1/w/i;

    invoke-static {v1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object p3

    invoke-direct {p2, p3}, Ls1/w/i;-><init>(Ls1/w/d;)V

    .line 16
    iget-object p3, p0, Le/a/f/v;->b:Ljavax/inject/Provider;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/d/c0/s1;

    new-instance p4, Le/a/f/u;

    invoke-direct {p4, p2}, Le/a/f/u;-><init>(Ls1/w/d;)V

    invoke-interface {p3, p1, p4}, Le/a/d/c0/s1;->g(Lcom/truecaller/data/entity/Contact;Le/a/d/c0/l0;)V

    .line 17
    invoke-virtual {p2}, Ls1/w/i;->a()Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v2, :cond_a

    const-string p1, "frame"

    .line 18
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    if-ne p4, v2, :cond_b

    return-object v2

    .line 19
    :cond_b
    :goto_3
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 22
    :cond_c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
