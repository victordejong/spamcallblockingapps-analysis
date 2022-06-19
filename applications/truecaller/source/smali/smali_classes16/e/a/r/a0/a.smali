.class public final Le/a/r/a0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/a0/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r/a0/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r/a0/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/r/a0/j;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Le/a/u3/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Le/a/r/a0/c;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/r/a0/j;",
            ">;",
            "Le/a/u3/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "googlePhoneNumberProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simCardPhoneNumberProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/a0/a;->a:Ljavax/inject/Provider;

    iput-object p2, p0, Le/a/r/a0/a;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/r/a0/a;->c:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/r/a0/i$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/r/a0/a$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/r/a0/a$b;

    iget v1, v0, Le/a/r/a0/a$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/r/a0/a$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/r/a0/a$b;

    invoke-direct {v0, p0, p1}, Le/a/r/a0/a$b;-><init>(Le/a/r/a0/a;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/r/a0/a$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/r/a0/a$b;->e:I

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_1
    iget-object v2, v0, Le/a/r/a0/a$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/r/a0/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_3
    iget-object v2, v0, Le/a/r/a0/a$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/r/a0/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_5
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_6
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/r/a0/a;->c:Le/a/u3/g;

    .line 5
    iget-object v2, p1, Le/a/u3/g;->K4:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x12e

    aget-object v5, v5, v6

    invoke-virtual {v2, p1, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    const/4 v2, 0x0

    .line 6
    invoke-interface {p1, v2}, Le/a/u3/i;->getInt(I)I

    move-result p1

    .line 7
    invoke-static {}, Le/a/r/a0/a$a;->values()[Le/a/r/a0/a$a;

    move-result-object v5

    move v6, v2

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v3, :cond_3

    .line 8
    aget-object v8, v5, v6

    .line 9
    iget v9, v8, Le/a/r/a0/a$a;->a:I

    if-ne v9, p1, :cond_1

    move v9, v7

    goto :goto_2

    :cond_1
    move v9, v2

    :goto_2
    if-eqz v9, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v8, v4

    :goto_3
    if-eqz v8, :cond_4

    goto :goto_4

    .line 10
    :cond_4
    sget-object v8, Le/a/r/a0/a$a;->b:Le/a/r/a0/a$a;

    .line 11
    :goto_4
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_11

    const/4 v2, 0x2

    if-eq p1, v7, :cond_f

    const/4 v5, 0x3

    if-eq p1, v2, :cond_a

    if-ne p1, v5, :cond_9

    .line 12
    iget-object p1, p0, Le/a/r/a0/a;->a:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r/a0/c;

    iput-object p0, v0, Le/a/r/a0/a$b;->g:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v0, Le/a/r/a0/a$b;->e:I

    invoke-virtual {p1, v0}, Le/a/r/a0/c;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 13
    :goto_5
    move-object v3, p1

    check-cast v3, Le/a/r/a0/i$a;

    .line 14
    invoke-virtual {v2, v3}, Le/a/r/a0/a;->b(Le/a/r/a0/i$a;)Z

    move-result v3

    .line 15
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_6

    :cond_6
    move-object p1, v4

    :goto_6
    check-cast p1, Le/a/r/a0/i$a;

    if-eqz p1, :cond_7

    goto/16 :goto_d

    .line 17
    :cond_7
    iget-object p1, v2, Le/a/r/a0/a;->b:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r/a0/j;

    iput-object v4, v0, Le/a/r/a0/a$b;->g:Ljava/lang/Object;

    const/4 v2, 0x6

    iput v2, v0, Le/a/r/a0/a$b;->e:I

    invoke-virtual {p1, v0}, Le/a/r/a0/j;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    :cond_8
    :goto_7
    check-cast p1, Le/a/r/a0/i$a;

    goto/16 :goto_d

    :cond_9
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 18
    :cond_a
    iget-object p1, p0, Le/a/r/a0/a;->b:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r/a0/j;

    iput-object p0, v0, Le/a/r/a0/a$b;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/r/a0/a$b;->e:I

    invoke-virtual {p1, v0}, Le/a/r/a0/j;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    :cond_b
    move-object v2, p0

    .line 19
    :goto_8
    move-object v5, p1

    check-cast v5, Le/a/r/a0/i$a;

    .line 20
    invoke-virtual {v2, v5}, Le/a/r/a0/a;->b(Le/a/r/a0/i$a;)Z

    move-result v5

    .line 21
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 22
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_9

    :cond_c
    move-object p1, v4

    :goto_9
    check-cast p1, Le/a/r/a0/i$a;

    if-eqz p1, :cond_d

    goto :goto_d

    .line 23
    :cond_d
    iget-object p1, v2, Le/a/r/a0/a;->a:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r/a0/c;

    iput-object v4, v0, Le/a/r/a0/a$b;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/r/a0/a$b;->e:I

    invoke-virtual {p1, v0}, Le/a/r/a0/c;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_e

    return-object v1

    :cond_e
    :goto_a
    check-cast p1, Le/a/r/a0/i$a;

    goto :goto_d

    .line 24
    :cond_f
    iget-object p1, p0, Le/a/r/a0/a;->a:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r/a0/c;

    iput v2, v0, Le/a/r/a0/a$b;->e:I

    invoke-virtual {p1, v0}, Le/a/r/a0/c;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_10

    return-object v1

    :cond_10
    :goto_b
    check-cast p1, Le/a/r/a0/i$a;

    goto :goto_d

    .line 25
    :cond_11
    iget-object p1, p0, Le/a/r/a0/a;->b:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r/a0/j;

    iput v7, v0, Le/a/r/a0/a$b;->e:I

    invoke-virtual {p1, v0}, Le/a/r/a0/j;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_12

    return-object v1

    :cond_12
    :goto_c
    check-cast p1, Le/a/r/a0/i$a;

    :goto_d
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Le/a/r/a0/i$a;)Z
    .locals 1

    .line 1
    sget-object v0, Le/a/r/a0/i$a$e;->a:Le/a/r/a0/i$a$e;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Le/a/r/a0/i$a$c;->a:Le/a/r/a0/i$a$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
