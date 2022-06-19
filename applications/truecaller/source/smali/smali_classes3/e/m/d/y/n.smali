.class public Le/m/d/y/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static A(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lx3/b0$b;

    invoke-direct {v0}, Lx3/b0$b;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lx3/b0$b;->a(Ljava/lang/String;)Lx3/b0$b;

    .line 3
    invoke-static {}, Lx3/g0/a/a;->c()Lx3/g0/a/a;

    move-result-object p0

    .line 4
    iget-object v1, v0, Lx3/b0$b;->d:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance p0, Lu3/e0$a;

    invoke-direct {p0}, Lu3/e0$a;-><init>()V

    .line 6
    new-instance v1, Le/a/t/b/d/a;

    invoke-direct {v1, p2, p3}, Le/a/t/b/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lu3/e0$a;->a(Lu3/b0;)Lu3/e0$a;

    .line 7
    new-instance p2, Lu3/e0;

    invoke-direct {p2, p0}, Lu3/e0;-><init>(Lu3/e0$a;)V

    .line 8
    invoke-virtual {v0, p2}, Lx3/b0$b;->d(Lu3/e0;)Lx3/b0$b;

    .line 9
    invoke-virtual {v0}, Lx3/b0$b;->c()Lx3/b0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lx3/b0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static A0(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    .line 2
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "google.c.a.c_id"

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "_nmid"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "google.c.a.c_l"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "_nmn"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "google.c.a.m_l"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "label"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "google.c.a.m_c"

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "message_channel"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-static {p1}, Le/m/d/y/n;->b0(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "_nt"

    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "google.c.a.ts"

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_1
    const-string v2, "_nmt"

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_6
    const-string v1, "google.c.a.udt"

    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    :try_start_2
    const-string v2, "_ndt"

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .line 22
    :catch_1
    :cond_8
    invoke-static {p1}, Le/m/d/y/h0;->f(Landroid/os/Bundle;)Z

    move-result p1

    const/4 v1, 0x1

    if-eq v1, p1, :cond_9

    const-string p1, "data"

    goto :goto_1

    :cond_9
    const-string p1, "display"

    :goto_1
    const-string v1, "_nr"

    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "_nf"

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    const-string v1, "_nmc"

    .line 25
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/4 p1, 0x3

    const-string v1, "FirebaseMessaging"

    .line 26
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 28
    :cond_c
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object p1

    const-class v1, Le/m/d/k/a/a;

    .line 29
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 30
    iget-object p1, p1, Le/m/d/g;->d:Le/m/d/m/t;

    invoke-virtual {p1, v1}, Le/m/d/m/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast p1, Le/m/d/k/a/a;

    if-eqz p1, :cond_d

    const-string v1, "fcm"

    .line 32
    invoke-interface {p1, v1, p0, v0}, Le/m/d/k/a/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :catch_2
    :cond_d
    return-void
.end method

.method public static synthetic A1(Le/a/g/j/b;Landroid/content/Context;ZLandroid/view/View;Le/a/g/j/p0;Le/a/g/j/o0;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p4, p6, 0x8

    const/4 p7, 0x0

    const/4 v4, 0x0

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_0

    move-object v5, p7

    goto :goto_0

    :cond_0
    move-object v5, p5

    .line 1
    :goto_0
    move-object v0, p0

    check-cast v0, Le/a/g/j/c;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Le/a/g/j/c;->b(Landroid/content/Context;ZLandroid/view/View;Le/a/g/j/p0;Le/a/g/j/o0;)V

    return-void
.end method

.method public static B(ZLjava/lang/String;)Le/a/l5/a/z1;
    .locals 2

    .line 1
    invoke-static {}, Le/a/l5/a/z1;->a()Le/a/l5/a/z1$b;

    move-result-object v0

    const-string v1, "backup"

    .line 2
    invoke-virtual {v0, v1}, Le/a/l5/a/z1$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/a/l5/a/z1$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 4
    invoke-virtual {v0, p1}, Le/a/l5/a/z1$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/z1$b;

    .line 5
    invoke-virtual {v0}, Le/a/l5/a/z1$b;->a()Le/a/l5/a/z1;

    move-result-object p0

    return-object p0
.end method

.method public static final B0(Le/a/q2/v;Le/a/q2/a;)V
    .locals 1

    const-string v0, "$this$logWith"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public static B1(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 3
    :cond_1
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 4
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 5
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 6
    :cond_4
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_5

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 7
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 8
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 9
    :cond_7
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_8

    const-class p0, Ljava/lang/Void;

    :cond_8
    return-object p0
.end method

.method public static final C(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/android/sdk/R$id;->textDisclaimerContainer:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Le/m/d/y/n;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static final C0(Lorg/apache/avro/generic/GenericRecord;Le/a/q2/a;)V
    .locals 1

    const-string v0, "$this$logWith"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public static final C1(Le/a/q2/s0;Lcom/truecaller/analytics/TimingEvent;Ljava/lang/String;Ljava/lang/String;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/q2/s0;",
            "Lcom/truecaller/analytics/TimingEvent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/z/b/p<",
            "-",
            "Le/a/q2/w;",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Le/a/q2/t0;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Le/a/q2/t0;

    iget v1, v0, Le/a/q2/t0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q2/t0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q2/t0;

    invoke-direct {v0, p5}, Le/a/q2/t0;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p5, v0, Le/a/q2/t0;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q2/t0;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/a/q2/t0;->h:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, v0, Le/a/q2/t0;->g:Ljava/lang/Object;

    check-cast p1, Le/a/q2/w;

    iget-object p2, v0, Le/a/q2/t0;->f:Ljava/lang/Object;

    check-cast p2, Le/a/q2/s0;

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v4, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, p5

    move-object p5, v4

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p5, Le/a/q2/w;

    invoke-direct {p5}, Le/a/q2/w;-><init>()V

    .line 5
    invoke-interface {p0, p1, p2, p3}, Le/a/q2/s0;->b(Lcom/truecaller/analytics/TimingEvent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iput-object p0, v0, Le/a/q2/t0;->f:Ljava/lang/Object;

    iput-object p5, v0, Le/a/q2/t0;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/q2/t0;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/q2/t0;->e:I

    invoke-interface {p4, p5, v0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_1
    iget-boolean p3, p5, Le/a/q2/w;->a:Z

    if-eqz p3, :cond_4

    .line 8
    invoke-interface {p0, p1}, Le/a/q2/s0;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_4
    iget-object p3, p5, Le/a/q2/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    .line 10
    invoke-interface {p0, p1, p3}, Le/a/q2/s0;->d(Ljava/lang/String;I)V

    :goto_2
    return-object p2
.end method

.method public static final D(Le/a/t/a/u/d;Landroid/content/Context;)I
    .locals 10

    const-string v0, "$this$drawableRes"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "emoji"

    .line 1
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Le/a/t/a/u/d;->a:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3
    sget-object v8, Le/a/t/a/y/a;->b:Le/a/t/a/y/a;

    const/16 v9, 0x1e

    const-string v3, "_"

    invoke-static/range {v2 .. v9}, Le/q/f/a/d/a;->L1([ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "joypixels_"

    invoke-static {v1, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "drawable"

    invoke-virtual {v0, p0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static D0(Ljava/lang/CharSequence;II)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return p2

    :cond_0
    const/4 v2, 0x6

    if-nez p2, :cond_1

    new-array v3, v2, [F

    .line 2
    fill-array-data v3, :array_0

    goto :goto_0

    :cond_1
    new-array v3, v2, [F

    .line 3
    fill-array-data v3, :array_1

    const/4 v4, 0x0

    .line 4
    aput v4, v3, p2

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :cond_2
    add-int v6, v1, v5

    .line 5
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x3

    const v11, 0x7fffffff

    const/4 v12, 0x1

    const/4 v13, 0x5

    if-ne v6, v7, :cond_9

    new-array v0, v2, [B

    new-array v1, v2, [I

    .line 6
    invoke-static {v3, v1, v11, v0}, Le/m/d/y/n;->G([F[II[B)I

    move-result v3

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v5, v2, :cond_3

    .line 7
    aget-byte v7, v0, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 8
    :cond_3
    aget v1, v1, v4

    if-ne v1, v3, :cond_4

    return v4

    :cond_4
    if-ne v6, v12, :cond_5

    .line 9
    aget-byte v1, v0, v13

    if-lez v1, :cond_5

    return v13

    :cond_5
    if-ne v6, v12, :cond_6

    .line 10
    aget-byte v1, v0, v9

    if-lez v1, :cond_6

    return v9

    :cond_6
    if-ne v6, v12, :cond_7

    .line 11
    aget-byte v1, v0, v8

    if-lez v1, :cond_7

    return v8

    :cond_7
    if-ne v6, v12, :cond_8

    .line 12
    aget-byte v0, v0, v10

    if-lez v0, :cond_8

    return v10

    :cond_8
    return v12

    .line 13
    :cond_9
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v5, 0x1

    .line 14
    invoke-static {v6}, Le/m/d/y/n;->q0(C)Z

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v7, :cond_a

    .line 15
    aget v7, v3, v4

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v7, v15

    aput v7, v3, v4

    goto :goto_2

    .line 16
    :cond_a
    invoke-static {v6}, Le/m/d/y/n;->r0(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 17
    aget v7, v3, v4

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v7, v9

    aput v7, v3, v4

    .line 18
    aget v7, v3, v4

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v7, v9

    aput v7, v3, v4

    goto :goto_2

    .line 19
    :cond_b
    aget v7, v3, v4

    float-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-float v7, v9

    aput v7, v3, v4

    .line 20
    aget v7, v3, v4

    add-float/2addr v7, v14

    aput v7, v3, v4

    :goto_2
    const/16 v7, 0x39

    const/16 v9, 0x30

    const/16 v10, 0x20

    if-eq v6, v10, :cond_e

    if-lt v6, v9, :cond_c

    if-le v6, v7, :cond_e

    :cond_c
    const/16 v15, 0x41

    if-lt v6, v15, :cond_d

    const/16 v15, 0x5a

    if-gt v6, v15, :cond_d

    goto :goto_3

    :cond_d
    move v15, v4

    goto :goto_4

    :cond_e
    :goto_3
    move v15, v12

    :goto_4
    const v16, 0x402aaaab

    const v17, 0x3faaaaab

    const v18, 0x3f2aaaab

    if-eqz v15, :cond_f

    .line 21
    aget v15, v3, v12

    add-float v15, v15, v18

    aput v15, v3, v12

    goto :goto_5

    .line 22
    :cond_f
    invoke-static {v6}, Le/m/d/y/n;->r0(C)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 23
    aget v15, v3, v12

    add-float v15, v15, v16

    aput v15, v3, v12

    goto :goto_5

    .line 24
    :cond_10
    aget v15, v3, v12

    add-float v15, v15, v17

    aput v15, v3, v12

    :goto_5
    if-eq v6, v10, :cond_13

    if-lt v6, v9, :cond_11

    if-le v6, v7, :cond_13

    :cond_11
    const/16 v7, 0x61

    if-lt v6, v7, :cond_12

    const/16 v7, 0x7a

    if-gt v6, v7, :cond_12

    goto :goto_6

    :cond_12
    move v7, v4

    goto :goto_7

    :cond_13
    :goto_6
    move v7, v12

    :goto_7
    if-eqz v7, :cond_14

    .line 25
    aget v7, v3, v8

    add-float v7, v7, v18

    aput v7, v3, v8

    goto :goto_8

    .line 26
    :cond_14
    invoke-static {v6}, Le/m/d/y/n;->r0(C)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 27
    aget v7, v3, v8

    add-float v7, v7, v16

    aput v7, v3, v8

    goto :goto_8

    .line 28
    :cond_15
    aget v7, v3, v8

    add-float v7, v7, v17

    aput v7, v3, v8

    .line 29
    :goto_8
    invoke-static {v6}, Le/m/d/y/n;->t0(C)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x3

    .line 30
    aget v9, v3, v7

    add-float v9, v9, v18

    aput v9, v3, v7

    goto :goto_9

    :cond_16
    const/4 v7, 0x3

    .line 31
    invoke-static {v6}, Le/m/d/y/n;->r0(C)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 32
    aget v9, v3, v7

    const v15, 0x408aaaab

    add-float/2addr v9, v15

    aput v9, v3, v7

    goto :goto_9

    .line 33
    :cond_17
    aget v9, v3, v7

    const v15, 0x40555555

    add-float/2addr v9, v15

    aput v9, v3, v7

    :goto_9
    if-lt v6, v10, :cond_18

    const/16 v7, 0x5e

    if-gt v6, v7, :cond_18

    move v7, v12

    goto :goto_a

    :cond_18
    move v7, v4

    :goto_a
    if-eqz v7, :cond_19

    const/4 v7, 0x4

    .line 34
    aget v6, v3, v7

    const/high16 v9, 0x3f400000    # 0.75f

    add-float/2addr v6, v9

    aput v6, v3, v7

    goto :goto_b

    :cond_19
    const/4 v7, 0x4

    .line 35
    invoke-static {v6}, Le/m/d/y/n;->r0(C)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 36
    aget v6, v3, v7

    const/high16 v9, 0x40880000    # 4.25f

    add-float/2addr v6, v9

    aput v6, v3, v7

    goto :goto_b

    .line 37
    :cond_1a
    aget v6, v3, v7

    const/high16 v9, 0x40500000    # 3.25f

    add-float/2addr v6, v9

    aput v6, v3, v7

    .line 38
    :goto_b
    aget v6, v3, v13

    add-float/2addr v6, v14

    aput v6, v3, v13

    if-lt v5, v7, :cond_2

    new-array v6, v2, [I

    new-array v7, v2, [B

    .line 39
    invoke-static {v3, v6, v11, v7}, Le/m/d/y/n;->G([F[II[B)I

    move v9, v4

    move v10, v9

    :goto_c
    if-ge v9, v2, :cond_1b

    .line 40
    aget-byte v11, v7, v9

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 41
    :cond_1b
    aget v9, v6, v4

    aget v11, v6, v13

    if-ge v9, v11, :cond_1c

    aget v9, v6, v4

    aget v11, v6, v12

    if-ge v9, v11, :cond_1c

    aget v9, v6, v4

    aget v11, v6, v8

    if-ge v9, v11, :cond_1c

    aget v9, v6, v4

    const/4 v11, 0x3

    aget v14, v6, v11

    if-ge v9, v14, :cond_1c

    aget v9, v6, v4

    const/4 v11, 0x4

    aget v14, v6, v11

    if-ge v9, v14, :cond_1c

    return v4

    .line 42
    :cond_1c
    aget v9, v6, v13

    aget v11, v6, v4

    if-lt v9, v11, :cond_24

    aget-byte v9, v7, v12

    aget-byte v11, v7, v8

    add-int/2addr v9, v11

    const/4 v11, 0x3

    aget-byte v14, v7, v11

    add-int/2addr v9, v14

    const/4 v11, 0x4

    aget-byte v14, v7, v11

    add-int/2addr v9, v14

    if-nez v9, :cond_1d

    goto :goto_e

    :cond_1d
    if-ne v10, v12, :cond_1e

    .line 43
    aget-byte v9, v7, v11

    if-lez v9, :cond_1e

    return v11

    :cond_1e
    if-ne v10, v12, :cond_1f

    .line 44
    aget-byte v9, v7, v8

    if-lez v9, :cond_1f

    return v8

    :cond_1f
    if-ne v10, v12, :cond_20

    const/4 v9, 0x3

    .line 45
    aget-byte v7, v7, v9

    if-lez v7, :cond_20

    return v9

    .line 46
    :cond_20
    aget v7, v6, v12

    add-int/2addr v7, v12

    aget v9, v6, v4

    if-ge v7, v9, :cond_2

    aget v7, v6, v12

    add-int/2addr v7, v12

    aget v9, v6, v13

    if-ge v7, v9, :cond_2

    aget v7, v6, v12

    add-int/2addr v7, v12

    const/4 v9, 0x4

    aget v9, v6, v9

    if-ge v7, v9, :cond_2

    aget v7, v6, v12

    add-int/2addr v7, v12

    aget v8, v6, v8

    if-ge v7, v8, :cond_2

    .line 47
    aget v7, v6, v12

    const/4 v8, 0x3

    aget v9, v6, v8

    if-ge v7, v9, :cond_21

    return v12

    .line 48
    :cond_21
    aget v7, v6, v12

    aget v6, v6, v8

    if-ne v7, v6, :cond_2

    add-int/2addr v1, v5

    add-int/2addr v1, v12

    .line 49
    :goto_d
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 50
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 51
    invoke-static {v2}, Le/m/d/y/n;->y0(C)Z

    move-result v3

    if-eqz v3, :cond_22

    return v8

    .line 52
    :cond_22
    invoke-static {v2}, Le/m/d/y/n;->t0(C)Z

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_23
    return v12

    :cond_24
    :goto_e
    return v13

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method public static D1(Le/a/o2/a;Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;
    .locals 7

    const-string v0, "outerDelegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/o2/u;

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/o2/u;-><init>(Le/a/o2/a;Le/a/o2/a;Le/a/o2/t;ZI)V

    return-object v0
.end method

.method public static final E(Lx3/a0;Le/m/e/k;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lx3/a0<",
            "TT;>;",
            "Le/m/e/k;",
            "Ljava/lang/Class<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "$this$errorParsed"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classOfE"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lx3/a0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lx3/a0;->c:Lu3/l0;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {p1, v0, p2}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p2}, Le/m/d/y/n;->B1(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    :goto_1
    new-instance p2, Ls1/l;

    invoke-direct {p2, p1}, Ls1/l;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object p2, v1

    :goto_2
    if-eqz p2, :cond_3

    .line 8
    iget-object p1, p2, Ls1/l;->a:Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    new-instance v2, Lcom/truecaller/account/network/util/IllegalResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object p0, p0, Lx3/a0;->a:Lu3/k0;

    .line 12
    iget p0, p0, Lu3/k0;->e:I

    .line 13
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, p1}, Lcom/truecaller/account/network/util/IllegalResponseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_5

    .line 14
    iget-object p0, p2, Ls1/l;->a:Ljava/lang/Object;

    .line 15
    instance-of p1, p0, Ls1/l$a;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, p0

    :cond_5
    :goto_3
    return-object v1
.end method

.method public static final E0(Lcom/truecaller/ads/offline/dto/OfflineAdsDto;)Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;
    .locals 5

    const-string v0, "$this$mapToViewDto"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getComponents()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/ads/offline/dto/Component;

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getTheme()Lcom/truecaller/ads/offline/dto/Theme;

    move-result-object v3

    invoke-static {v2, v0, v3, p0}, Le/m/d/y/n;->V0(Lcom/truecaller/ads/offline/dto/Component;Ljava/util/List;Lcom/truecaller/ads/offline/dto/Theme;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;)V

    .line 5
    invoke-static {v2, v0}, Le/m/d/y/n;->W0(Lcom/truecaller/ads/offline/dto/Component;Ljava/util/List;)V

    const-string v3, "ArticleBody"

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getTheme()Lcom/truecaller/ads/offline/dto/Theme;

    move-result-object v4

    invoke-static {v3, v0, v2, v4, p0}, Le/m/d/y/n;->X0(Ljava/lang/String;Ljava/util/List;Lcom/truecaller/ads/offline/dto/Component;Lcom/truecaller/ads/offline/dto/Theme;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;)V

    const-string v3, "CtaContainer"

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getTheme()Lcom/truecaller/ads/offline/dto/Theme;

    move-result-object v4

    invoke-static {v3, v0, v2, v4, p0}, Le/m/d/y/n;->X0(Ljava/lang/String;Ljava/util/List;Lcom/truecaller/ads/offline/dto/Component;Lcom/truecaller/ads/offline/dto/Theme;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p0, Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;

    invoke-direct {p0, v0}, Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static declared-synchronized E1(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Le/m/d/y/n;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exists, but is not a directory"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    .line 6
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Can not create directory "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static F(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "AppUserInteraction.Context"

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "AppUserInteraction.Action"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public static final F0(Le/a/y2/k;)Landroidx/work/ListenableWorker$a;
    .locals 1

    const-string v0, "$this$maybeExecute"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/a/y2/k;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance p0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/y2/k;->a()Landroidx/work/ListenableWorker$a;

    move-result-object p0

    :goto_0
    const-string v0, "if (!this.shouldExecute(\u2026 this.execute()\n        }"

    .line 4
    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    new-instance p0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {p0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string v0, "Result.failure()"

    .line 6
    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static G([F[II[B)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 2
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    .line 3
    aget v2, p1, v1

    if-le p2, v2, :cond_0

    .line 4
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move p2, v2

    :cond_0
    if-ne p2, v2, :cond_1

    .line 5
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method public static final G0(J)Ls1/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ls1/k<",
            "Ln3/m0/a;",
            "Lw3/b/a/i;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lw3/b/a/i;->d(J)Lw3/b/a/i;

    move-result-object p0

    const-string p1, "Duration.standardMinutes(minutes)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$this$exponential"

    .line 2
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ln3/m0/a;->a:Ln3/m0/a;

    .line 4
    new-instance v0, Ls1/k;

    invoke-direct {v0, p1, p0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static H(Ljava/lang/String;Le/m/d/a0/g;)Le/m/d/m/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/m/d/a0/g<",
            "Landroid/content/Context;",
            ">;)",
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Le/m/d/a0/f;

    invoke-static {v0}, Le/m/d/m/o;->b(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    .line 2
    new-instance v2, Le/m/d/m/x;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Le/m/d/m/x;-><init>(Ljava/lang/Class;II)V

    .line 3
    invoke-virtual {v0, v2}, Le/m/d/m/o$b;->a(Le/m/d/m/x;)Le/m/d/m/o$b;

    new-instance v1, Le/m/d/a0/b;

    invoke-direct {v1, p0, p1}, Le/m/d/a0/b;-><init>(Ljava/lang/String;Le/m/d/a0/g;)V

    .line 4
    invoke-virtual {v0, v1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    .line 5
    invoke-virtual {v0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object p0

    return-object p0
.end method

.method public static final H0(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    const-string v0, "$this$numberToLong"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$clearNonNumberCharacters"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/f0/h;

    const-string v1, "[^\\d]+"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final I(Landroid/content/Intent;Ljava/lang/String;)Lcom/truecaller/acs/data/AfterCallHistoryEvent;
    .locals 2

    const-string v0, "intent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "intent.getByteArrayExtra(name) ?: return null"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    const-string v0, "Parcel.obtain()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5
    sget-object p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->CREATOR:Lcom/truecaller/acs/data/AfterCallHistoryEvent$a;

    .line 6
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "parcel"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p0, Lcom/truecaller/acs/data/AfterCallHistoryEvent;

    invoke-direct {p0, p1}, Lcom/truecaller/acs/data/AfterCallHistoryEvent;-><init>(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic I0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p5, 0x8

    const/4 p4, 0x0

    .line 1
    check-cast p0, Le/a/v2/v/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/v2/v/b;->a(Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic J(Le/a/i/f0/d;Le/a/i/s;IZLjava/lang/String;ILjava/lang/Object;)Le/a/i/f0/m/d;
    .locals 0

    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    :cond_0
    and-int/lit8 p4, p5, 0x8

    const/4 p4, 0x0

    .line 1
    invoke-interface {p0, p1, p2, p3, p4}, Le/a/i/f0/d;->g(Le/a/i/s;IZLjava/lang/String;)Le/a/i/f0/m/d;

    move-result-object p0

    return-object p0
.end method

.method public static J0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;ZILjava/lang/Object;)V
    .locals 12

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p4

    :goto_0
    and-int/lit8 v0, p6, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v9, v0

    goto :goto_1

    :cond_1
    move/from16 v9, p5

    .line 1
    :goto_1
    move-object v0, p0

    check-cast v0, Le/a/v2/v/b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "engine"

    move-object v3, p1

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v10, v0, Le/a/v2/v/b;->c:Le/a/q2/a;

    .line 4
    new-instance v11, Le/a/v2/v/g;

    .line 5
    iget-object v2, v0, Le/a/v2/v/b;->b:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Le/a/v2/v/b;->c(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 6
    :goto_2
    iget-object v2, v0, Le/a/v2/v/b;->a:Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Le/a/v2/v/b;->c(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    move-object v2, v11

    move-object v3, p1

    move v4, p2

    move v7, p3

    .line 7
    invoke-direct/range {v2 .. v9}, Le/a/v2/v/g;-><init>(Lcom/truecaller/attestation/AttestationEngine;ZLjava/lang/Long;Ljava/lang/Long;ZLjava/lang/Integer;Z)V

    .line 8
    invoke-interface {v10, v11}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 9
    iput-object v1, v0, Le/a/v2/v/b;->a:Ljava/lang/Long;

    .line 10
    iput-object v1, v0, Le/a/v2/v/b;->b:Ljava/lang/Long;

    return-void
.end method

.method public static final K()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    const-string v2, "ApplicationBase.getAppBase()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    const-string v2, "AdvertisingIdClient.getA\u2026rtisingIdInfo(appContext)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    .line 4
    instance-of v2, v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, v1, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    instance-of v2, v1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_4

    .line 8
    :goto_0
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_4
    return-object v0
.end method

.method public static K0(Le/a/v2/v/a;Lcom/truecaller/attestation/AttestationEngine;ZLjava/lang/Integer;ZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 p3, p5, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move v6, p4

    .line 1
    check-cast p0, Le/a/v2/v/b;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "engine"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p3, p0, Le/a/v2/v/b;->c:Le/a/q2/a;

    .line 4
    new-instance p4, Le/a/v2/v/c;

    .line 5
    iget-object p5, p0, Le/a/v2/v/b;->a:Ljava/lang/Long;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    invoke-virtual {p0, p5, p6}, Le/a/v2/v/b;->c(J)J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_2
    move-object v4, v0

    move-object v1, p4

    move-object v2, p1

    move v3, p2

    .line 6
    invoke-direct/range {v1 .. v6}, Le/a/v2/v/c;-><init>(Lcom/truecaller/attestation/AttestationEngine;ZLjava/lang/Long;Ljava/lang/Integer;Z)V

    .line 7
    invoke-interface {p3, p4}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 8
    iget-object p1, p0, Le/a/v2/v/b;->d:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Le/a/v2/v/b;->b:Ljava/lang/Long;

    return-void
.end method

.method public static final L(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v0}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 3
    iget-object p0, p0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v0, "participants"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p0, :cond_1

    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->r:I

    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->u:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    invoke-static {v0, p0}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final L0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v3, "android.support.customtabs.extra.TITLE_VISIBILITY"

    .line 3
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget p1, Lcom/truecaller/ads/R$attr;->tcx_backgroundSecondary:I

    :goto_0
    const/high16 v3, -0x1000000

    or-int/2addr p1, v3

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v4, "android.support.customtabs.extra.TOOLBAR_COLOR"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const-string p1, "android.support.customtabs.extra.SESSION"

    .line 8
    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    .line 9
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {v4, p1, v5}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 11
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const-string p1, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 12
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    new-instance p1, Ln3/d/a/a;

    invoke-direct {p1, v5, v5, v5, v5}, Ln3/d/a/a;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 14
    invoke-virtual {p1}, Ln3/d/a/a;->a()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 16
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.extra.REFERRER"

    .line 18
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 21
    sget-object p1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 22
    invoke-static {p0, v1, v5}, Ln3/k/b/a$a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 23
    invoke-static {p0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static final M(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "+"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_4

    .line 2
    invoke-static {p0}, Ls1/f0/w;->p0(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 9
    :goto_2
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "Locale.getDefault()"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-object v1
.end method

.method public static M0(Le/m/e/g0/a;)Le/m/e/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/e/u;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Le/m/e/g0/d; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    .line 2
    :try_start_1
    sget-object v1, Le/m/e/e0/a0/o;->X:Le/m/e/b0;

    invoke-virtual {v1, p0}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/m/e/q;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Le/m/e/g0/d; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p0}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 4
    new-instance v0, Le/m/e/r;

    invoke-direct {v0, p0}, Le/m/e/r;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    .line 5
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p0}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 6
    sget-object p0, Le/m/e/s;->a:Le/m/e/s;

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Le/m/e/z;

    invoke-direct {v0, p0}, Le/m/e/z;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final N([Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;
    .locals 2

    const-string v0, "participants"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 2
    invoke-static {p0}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p0}, Le/m/d/y/n;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static N0(Lu3/l0;)Ljava/lang/String;
    .locals 5

    const-string v0, "errors"

    const-string v1, "message"

    const-string v2, "Unknown error"

    .line 1
    :try_start_0
    new-instance v3, Le/m/e/k;

    invoke-direct {v3}, Le/m/e/k;-><init>()V

    invoke-virtual {p0}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p0

    const-class v4, Ljava/util/Map;

    invoke-virtual {v3, p0, v4}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Ljava/lang/String;

    :goto_0
    move-object v2, p0

    goto :goto_1

    .line 6
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 10
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 11
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Le/m/e/z; {:try_start_0 .. :try_end_0} :catch_0
    .catch Le/m/e/r; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v2
.end method

.method public static final O(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$banner"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BANNER_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Locale.ENGLISH"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static O0(Ljava/lang/String;I)I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    long-to-int p0, p0

    return p0

    :catch_0
    return p1
.end method

.method public static P()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/util/HashMap;

    const/16 v0, 0x11e

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0x19

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "US"

    .line 3
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "AG"

    .line 4
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "AI"

    .line 5
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "AS"

    .line 6
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "BB"

    .line 7
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "BM"

    .line 8
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "BS"

    .line 9
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "CA"

    .line 10
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "DM"

    .line 11
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "DO"

    .line 12
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "GD"

    .line 13
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "GU"

    .line 14
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "JM"

    .line 15
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "KN"

    .line 16
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "KY"

    .line 17
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "LC"

    .line 18
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "MP"

    .line 19
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "MS"

    .line 20
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "PR"

    .line 21
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "SX"

    .line 22
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "TC"

    .line 23
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "TT"

    .line 24
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "VC"

    .line 25
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "VG"

    .line 26
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "VI"

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v0, v4

    move v2, v7

    move-object v3, v6

    move v5, v8

    .line 27
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "RU"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "KZ"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "EG"

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x14

    const-string v2, "ZA"

    .line 33
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1b

    const-string v2, "GR"

    .line 34
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1e

    const-string v2, "NL"

    .line 35
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1f

    const-string v2, "BE"

    .line 36
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x20

    const-string v2, "FR"

    .line 37
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x21

    const-string v2, "ES"

    .line 38
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x22

    const-string v2, "HU"

    .line 39
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x24

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "IT"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "VA"

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x27

    const-string v2, "RO"

    .line 44
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x28

    const-string v2, "CH"

    .line 45
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x29

    const-string v2, "AT"

    .line 46
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2b

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "GB"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "GG"

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "IM"

    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "JE"

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2c

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "DK"

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2d

    const-string v2, "SE"

    .line 56
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2e

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "NO"

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SJ"

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x2f

    const-string v2, "PL"

    .line 61
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x30

    const-string v2, "DE"

    .line 62
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x31

    const-string v2, "PE"

    .line 63
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x33

    const-string v2, "MX"

    .line 64
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x34

    const-string v2, "CU"

    .line 65
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x35

    const-string v2, "AR"

    .line 66
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x36

    const-string v2, "BR"

    .line 67
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x37

    const-string v2, "CL"

    .line 68
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x38

    const-string v2, "CO"

    .line 69
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x39

    const-string v2, "VE"

    .line 70
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3a

    const-string v2, "MY"

    .line 71
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v4, Ljava/util/ArrayList;

    const/4 v9, 0x3

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "AU"

    .line 74
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "CC"

    .line 75
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "CX"

    const/16 v2, 0x3d

    move-object v0, v4

    move v5, v7

    .line 76
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "ID"

    const/16 v2, 0x3e

    move-object v0, v4

    .line 77
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "PH"

    const/16 v2, 0x3f

    move-object v0, v4

    .line 78
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "NZ"

    const/16 v2, 0x40

    move-object v0, v4

    .line 79
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "SG"

    const/16 v2, 0x41

    move-object v0, v4

    .line 80
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "TH"

    const/16 v2, 0x42

    move-object v0, v4

    .line 81
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "JP"

    const/16 v2, 0x51

    move-object v0, v4

    .line 82
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "KR"

    const/16 v2, 0x52

    move-object v0, v4

    .line 83
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "VN"

    const/16 v2, 0x54

    move-object v0, v4

    .line 84
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "CN"

    const/16 v2, 0x56

    move-object v0, v4

    .line 85
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "TR"

    const/16 v2, 0x5a

    move-object v0, v4

    .line 86
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "IN"

    const/16 v2, 0x5b

    move-object v0, v4

    .line 87
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "PK"

    const/16 v2, 0x5c

    move-object v0, v4

    .line 88
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "AF"

    const/16 v2, 0x5d

    move-object v0, v4

    .line 89
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "LK"

    const/16 v2, 0x5e

    move-object v0, v4

    .line 90
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "MM"

    const/16 v2, 0x5f

    move-object v0, v4

    .line 91
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "IR"

    const/16 v2, 0x62

    move-object v0, v4

    .line 92
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "SS"

    const/16 v2, 0xd3

    move-object v0, v4

    move v5, v8

    .line 93
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "MA"

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "EH"

    .line 95
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xd4

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "DZ"

    .line 98
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xd5

    const-string v2, "TN"

    .line 99
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xd8

    const-string v2, "LY"

    .line 100
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xda

    const-string v2, "GM"

    .line 101
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xdc

    const-string v2, "SN"

    .line 102
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xdd

    const-string v2, "MR"

    .line 103
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xde

    const-string v2, "ML"

    .line 104
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xdf

    const-string v2, "GN"

    .line 105
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe0

    const-string v2, "CI"

    .line 106
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe1

    const-string v2, "BF"

    .line 107
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe2

    const-string v2, "NE"

    .line 108
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe3

    const-string v2, "TG"

    .line 109
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe4

    const-string v2, "BJ"

    .line 110
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe5

    const-string v2, "MU"

    .line 111
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe6

    const-string v2, "LR"

    .line 112
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe7

    const-string v2, "SL"

    .line 113
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe8

    const-string v2, "GH"

    .line 114
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xe9

    const-string v2, "NG"

    .line 115
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xea

    const-string v2, "TD"

    .line 116
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xeb

    const-string v2, "CF"

    .line 117
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xec

    const-string v2, "CM"

    .line 118
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xed

    const-string v2, "CV"

    .line 119
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xee

    const-string v2, "ST"

    .line 120
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xef

    const-string v2, "GQ"

    .line 121
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf0

    const-string v2, "GA"

    .line 122
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf1

    const-string v2, "CG"

    .line 123
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf2

    const-string v2, "CD"

    .line 124
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf3

    const-string v2, "AO"

    .line 125
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf4

    const-string v2, "GW"

    .line 126
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf5

    const-string v2, "IO"

    .line 127
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf6

    const-string v2, "AC"

    .line 128
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf7

    const-string v2, "SC"

    .line 129
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf8

    const-string v2, "SD"

    .line 130
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xf9

    const-string v2, "RW"

    .line 131
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xfa

    const-string v2, "ET"

    .line 132
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xfb

    const-string v2, "SO"

    .line 133
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xfc

    const-string v2, "DJ"

    .line 134
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xfd

    const-string v2, "KE"

    .line 135
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xfe

    const-string v2, "TZ"

    .line 136
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xff

    const-string v2, "UG"

    .line 137
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x100

    const-string v2, "BI"

    .line 138
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x101

    const-string v2, "MZ"

    .line 139
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x102

    const-string v2, "ZM"

    .line 140
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x104

    const-string v2, "MG"

    .line 141
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x105

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "RE"

    .line 144
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "YT"

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x106

    const-string v2, "ZW"

    .line 146
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x107

    const-string v2, "NA"

    .line 147
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x108

    const-string v2, "MW"

    .line 148
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x109

    const-string v2, "LS"

    .line 149
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x10a

    const-string v2, "BW"

    .line 150
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x10b

    const-string v2, "SZ"

    .line 151
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x10c

    const-string v2, "KM"

    .line 152
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x10d

    .line 153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "SH"

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "TA"

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x122

    const-string v2, "ER"

    .line 157
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x123

    const-string v2, "AW"

    .line 158
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x129

    const-string v2, "FO"

    .line 159
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x12a

    const-string v2, "GL"

    .line 160
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x12b

    const-string v2, "GI"

    .line 161
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x15e

    const-string v2, "PT"

    .line 162
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x15f

    const-string v2, "LU"

    .line 163
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x160

    const-string v2, "IE"

    .line 164
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x161

    const-string v2, "IS"

    .line 165
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x162

    const-string v2, "AL"

    .line 166
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x163

    const-string v2, "MT"

    .line 167
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x164

    const-string v2, "CY"

    .line 168
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x165

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "FI"

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "AX"

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x166

    const-string v2, "BG"

    .line 173
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x167

    const-string v2, "LT"

    .line 174
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x172

    const-string v2, "LV"

    .line 175
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x173

    const-string v2, "EE"

    .line 176
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x174

    const-string v2, "MD"

    .line 177
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x175

    const-string v2, "AM"

    .line 178
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x176

    const-string v2, "BY"

    .line 179
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x177

    const-string v2, "AD"

    .line 180
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x178

    const-string v2, "MC"

    .line 181
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x179

    const-string v2, "SM"

    .line 182
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x17a

    const-string v2, "UA"

    .line 183
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x17c

    const-string v2, "RS"

    .line 184
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x17d

    const-string v2, "ME"

    .line 185
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x17e

    const-string v2, "XK"

    .line 186
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x17f

    const-string v2, "HR"

    .line 187
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x181

    const-string v2, "SI"

    .line 188
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x182

    const-string v2, "BA"

    .line 189
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x183

    const-string v2, "MK"

    .line 190
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x185

    const-string v2, "CZ"

    .line 191
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1a4

    const-string v2, "SK"

    .line 192
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1a5

    const-string v2, "LI"

    .line 193
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1a7

    const-string v2, "FK"

    .line 194
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1f4

    const-string v2, "BZ"

    .line 195
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1f5

    const-string v2, "GT"

    .line 196
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1f6

    const-string v2, "SV"

    .line 197
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1f7

    const-string v2, "HN"

    .line 198
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1f8

    const-string v2, "NI"

    .line 199
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1f9

    const-string v2, "CR"

    .line 200
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1fa

    const-string v2, "PA"

    .line 201
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1fb

    const-string v2, "PM"

    .line 202
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1fc

    const-string v2, "HT"

    .line 203
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x1fd

    .line 204
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    const-string v0, "GP"

    .line 206
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "BL"

    .line 207
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "MF"

    const/16 v2, 0x24e

    move-object v0, v4

    move v5, v7

    .line 208
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "BO"

    const/16 v2, 0x24f

    move-object v0, v4

    .line 209
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "GY"

    const/16 v2, 0x250

    move-object v0, v4

    .line 210
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "EC"

    const/16 v2, 0x251

    move-object v0, v4

    .line 211
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "GF"

    const/16 v2, 0x252

    move-object v0, v4

    .line 212
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "PY"

    const/16 v2, 0x253

    move-object v0, v4

    .line 213
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "MQ"

    const/16 v2, 0x254

    move-object v0, v4

    .line 214
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "SR"

    const/16 v2, 0x255

    move-object v0, v4

    .line 215
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v4

    const-string v1, "UY"

    const/16 v2, 0x256

    move-object v0, v4

    move v5, v8

    .line 216
    invoke-static/range {v0 .. v5}, Le/d/c/a/a;->Q(Ljava/util/ArrayList;Ljava/lang/String;ILjava/util/HashMap;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "CW"

    .line 217
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "BQ"

    .line 218
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x257

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "TL"

    .line 221
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x29e

    const-string v2, "NF"

    .line 222
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a0

    const-string v2, "BN"

    .line 223
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a1

    const-string v2, "NR"

    .line 224
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a2

    const-string v2, "PG"

    .line 225
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a3

    const-string v2, "TO"

    .line 226
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a4

    const-string v2, "SB"

    .line 227
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a5

    const-string v2, "VU"

    .line 228
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a6

    const-string v2, "FJ"

    .line 229
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a7

    const-string v2, "PW"

    .line 230
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a8

    const-string v2, "WF"

    .line 231
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2a9

    const-string v2, "CK"

    .line 232
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2aa

    const-string v2, "NU"

    .line 233
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2ab

    const-string v2, "WS"

    .line 234
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2ad

    const-string v2, "KI"

    .line 235
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2ae

    const-string v2, "NC"

    .line 236
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2af

    const-string v2, "TV"

    .line 237
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2b0

    const-string v2, "PF"

    .line 238
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2b1

    const-string v2, "TK"

    .line 239
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2b2

    const-string v2, "FM"

    .line 240
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2b3

    const-string v2, "MH"

    .line 241
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x2b4

    const-string v2, "001"

    .line 242
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x320

    .line 243
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x328

    const-string v3, "KP"

    .line 244
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x352

    const-string v3, "HK"

    .line 245
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x354

    const-string v3, "MO"

    .line 246
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x355

    const-string v3, "KH"

    .line 247
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x357

    const-string v3, "LA"

    .line 248
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x358

    .line 249
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x366

    .line 250
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x36e

    const-string v3, "BD"

    .line 251
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x370

    .line 252
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x371

    .line 253
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x372

    .line 254
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x373

    const-string v3, "TW"

    .line 255
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x376

    .line 256
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x378

    const-string v3, "MV"

    .line 257
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c0

    const-string v3, "LB"

    .line 258
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c1

    const-string v3, "JO"

    .line 259
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c2

    const-string v3, "SY"

    .line 260
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c3

    const-string v3, "IQ"

    .line 261
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c4

    const-string v3, "KW"

    .line 262
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c5

    const-string v3, "SA"

    .line 263
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c6

    const-string v3, "YE"

    .line 264
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c7

    const-string v3, "OM"

    .line 265
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3c8

    const-string v3, "PS"

    .line 266
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3ca

    const-string v3, "AE"

    .line 267
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3cb

    const-string v3, "IL"

    .line 268
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3cc

    const-string v3, "BH"

    .line 269
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3cd

    const-string v3, "QA"

    .line 270
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3ce

    const-string v3, "BT"

    .line 271
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3cf

    const-string v3, "MN"

    .line 272
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3d0

    const-string v3, "NP"

    .line 273
    invoke-static {v1, v6, v0, v7, v3}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3d1

    .line 274
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3d3

    const-string v2, "TJ"

    .line 275
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3e0

    const-string v2, "TM"

    .line 276
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3e1

    const-string v2, "AZ"

    .line 277
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3e2

    const-string v2, "GE"

    .line 278
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3e3

    const-string v2, "KG"

    .line 279
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3e4

    const-string v2, "UZ"

    .line 280
    invoke-static {v1, v6, v0, v7, v2}, Le/d/c/a/a;->P(ILjava/util/HashMap;Ljava/util/ArrayList;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x3e6

    .line 281
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6
.end method

.method public static P0(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Le/m/d/y/n;->a1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DELETE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PROPFIND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MKCOL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LOCK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final Q(Le/a/i/e/b;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getErrorMessage"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/i/e/b$a;->c:Le/a/i/e/b$a;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/truecaller/ads/R$string;->LeadgenErrorSendingDuplicate:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.stri\u2026genErrorSendingDuplicate)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/a/i/e/b$c;->c:Le/a/i/e/b$c;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/truecaller/ads/R$string;->LeadgenErrorSendingOld:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.string.LeadgenErrorSendingOld)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Le/a/i/e/b$d;->c:Le/a/i/e/b$d;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/truecaller/ads/R$string;->OfflineLeadGenSubmitFailed:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.stri\u2026flineLeadGenSubmitFailed)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_2
    sget p0, Lcom/truecaller/ads/R$string;->LeadgenErrorSendingGeneric:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.stri\u2026adgenErrorSendingGeneric)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static Q0(Le/a/i/d0/c0/d;Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Key:",
            "Ljava/lang/Object;",
            "Value:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/i/d0/c0/d<",
            "TKey;TValue;>;",
            "Le/a/i/d0/c0/d<",
            "TKey;TValue;>;)",
            "Le/a/i/d0/c0/d<",
            "TKey;TValue;>;"
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Le/a/i/d0/c0/d;->a(Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;

    move-result-object p0

    return-object p0
.end method

.method public static final R(Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;)J
    .locals 6

    const-string v0, "$this$getExpiresAt"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getMaxAge()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0}, Lcom/truecaller/ads/keywords/model/AdKeywordPlacementDto;->getMaxAge()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long/2addr v4, v0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    return-wide v4
.end method

.method public static R0()Le/a/r2/l;
    .locals 2

    .line 1
    sget v0, Le/a/x1;->a:I

    .line 2
    invoke-static {}, Lcom/truecaller/TrueApp;->b0()Lcom/truecaller/TrueApp;

    move-result-object v0

    const-string v1, "TrueApp.getApp()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/TrueApp;->s()Le/a/j2;

    move-result-object v0

    invoke-interface {v0}, Le/a/j2;->z1()Le/a/r2/l;

    move-result-object v0

    const-string v1, "TrueApp.getApp().objectsGraph.actorsThreads()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic S(Le/a/n/m;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p1, p3, 0x1

    const/4 p1, 0x0

    .line 1
    invoke-interface {p0, p1, p2}, Le/a/n/m;->j(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static S0()Lu3/e0;
    .locals 4

    .line 1
    sget v0, Le/a/q2/h;->a:I

    .line 2
    new-instance v0, Le/a/b0/b/g/b;

    invoke-direct {v0}, Le/a/b0/b/g/b;-><init>()V

    invoke-static {v0}, Le/a/b0/b/a/a;->b(Le/a/b0/b/g/b;)Lu3/e0$a;

    move-result-object v0

    const-wide/16 v1, 0x1e

    .line 3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lu3/e0$a;->b(JLjava/util/concurrent/TimeUnit;)Lu3/e0$a;

    .line 4
    new-instance v1, Lu3/e0;

    invoke-direct {v1, v0}, Lu3/e0;-><init>(Lu3/e0$a;)V

    return-object v1
.end method

.method public static final T(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$native"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NATIVE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Locale.ENGLISH"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final T0(Landroid/content/Intent;Ljava/lang/String;Lcom/truecaller/acs/data/AfterCallHistoryEvent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "Parcel.obtain()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2, v0, v1}, Lcom/truecaller/acs/data/AfterCallHistoryEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public static U(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.truecaller.android.sdk.PartnerKey"

    .line 2
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static synthetic U0(Le/a/i/c/d/j;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p5, p6, 0x10

    if-eqz p5, :cond_0

    const-string p5, ""

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-interface/range {v0 .. v5}, Le/a/i/c/d/j;->b(Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static V()Ljava/lang/String;
    .locals 1

    const-string v0, "UUID.randomUUID().toString()"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final V0(Lcom/truecaller/ads/offline/dto/Component;Ljava/util/List;Lcom/truecaller/ads/offline/dto/Theme;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ads/offline/dto/Component;",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/UiComponent;",
            ">;",
            "Lcom/truecaller/ads/offline/dto/Theme;",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string p3, "Button"

    .line 2
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getText()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getOnClick()Lcom/truecaller/ads/offline/dto/Component$OnClick;

    move-result-object p3

    if-nez p3, :cond_2

    goto/16 :goto_3

    .line 4
    :cond_2
    new-instance p3, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getText()Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent$OnClick;

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getOnClick()Lcom/truecaller/ads/offline/dto/Component$OnClick;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/ads/offline/dto/Component$OnClick;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getOnClick()Lcom/truecaller/ads/offline/dto/Component$OnClick;

    move-result-object p0

    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component$OnClick;->getUrl()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {v2, v3, p0}, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent$OnClick;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/truecaller/ads/offline/dto/Theme;->getBgColor()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-direct {p3, v0, v1, v2, p0}, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent$OnClick;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_1
    const-string p3, "LabelWithLink"

    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_0

    :sswitch_2
    const-string p3, "SubHeading"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_0

    :sswitch_3
    const-string p2, "ImageView"

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_1

    :sswitch_4
    const-string p2, "SponsoredImageView"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_1

    :sswitch_5
    const-string p3, "HtmlBody"

    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_0

    :sswitch_6
    const-string p3, "Heading"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getText()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    if-eqz v2, :cond_5

    goto/16 :goto_3

    .line 18
    :cond_5
    new-instance p3, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;

    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Lcom/truecaller/ads/offline/dto/Theme;->getFgColor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/truecaller/ads/offline/dto/Theme;->getBgColor()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v0, p0, v1, p2}, Lcom/truecaller/ads/offline/dto/TextItemUiComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :sswitch_7
    const-string p2, "ArticleBodyImageview"

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 20
    :goto_1
    invoke-virtual {p3}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->isOffline()Z

    move-result p2

    .line 21
    invoke-virtual {p3}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getAssetsList()Ljava/util/List;

    move-result-object p3

    .line 22
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getSrc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    if-eqz p2, :cond_c

    if-eqz p3, :cond_b

    .line 23
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;

    .line 24
    invoke-virtual {p3}, Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 25
    invoke-virtual {p3}, Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;->getFileUri()Landroid/net/Uri;

    move-result-object p2

    goto :goto_2

    :cond_a
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Collection contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const/4 p2, 0x0

    goto :goto_2

    .line 26
    :cond_c
    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getSrc()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_2
    if-eqz p2, :cond_d

    .line 27
    new-instance p3, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/truecaller/ads/offline/dto/Component;->getAltText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, v0, p2, p0}, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ac3ce38 -> :sswitch_7
        -0x6d5fea1e -> :sswitch_6
        -0x1046b3f3 -> :sswitch_5
        0x2cb75d87 -> :sswitch_4
        0x431b5280 -> :sswitch_3
        0x4de9abc2 -> :sswitch_2
        0x725ee0d4 -> :sswitch_1
        0x77471352 -> :sswitch_0
    .end sparse-switch
.end method

.method public static W(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "https://console.firebase.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const-string p0, "%s/project/%s/performance/app/android:%s"

    .line 1
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final W0(Lcom/truecaller/ads/offline/dto/Component;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ads/offline/dto/Component;",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/UiComponent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x3861767d

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_11

    const v3, 0x6f08980e

    if-eq v2, v3, :cond_8

    const v3, 0x757a74af

    if-eq v2, v3, :cond_0

    goto/16 :goto_11

    :cond_0
    const-string v2, "RadioInput"

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    if-nez v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v4

    :goto_3
    if-nez v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getOptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    goto/16 :goto_11

    .line 4
    :cond_7
    new-instance v1, Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getLabel()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v11

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValue()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValidationRegex()Ljava/lang/String;

    move-result-object v10

    move-object v5, v1

    .line 11
    invoke-direct/range {v5 .. v11}, Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_8
    const-string v2, "SelectInput"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    :cond_9
    move v1, v5

    goto :goto_6

    :cond_a
    :goto_5
    move v1, v4

    :goto_6
    if-nez v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    move v1, v5

    goto :goto_8

    :cond_c
    :goto_7
    move v1, v4

    :goto_8
    if-nez v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getOptions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_9

    :cond_d
    move v4, v5

    :cond_e
    :goto_9
    if-eqz v4, :cond_f

    goto/16 :goto_11

    .line 15
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getShowAutoComplete()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getShowAutoComplete()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValidationRegex()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    .line 22
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_a

    .line 23
    :cond_10
    new-instance v1, Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v10

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getLabel()Ljava/lang/String;

    move-result-object v11

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getOptions()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v15

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getHint()Ljava/lang/String;

    move-result-object v16

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValidationRegex()Ljava/lang/String;

    move-result-object v14

    move-object v9, v1

    .line 31
    invoke-direct/range {v9 .. v16}, Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 32
    :goto_a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_11

    :cond_11
    const-string v2, "TextInput"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_b

    :cond_12
    move v1, v5

    goto :goto_c

    :cond_13
    :goto_b
    move v1, v4

    :goto_c
    if-nez v1, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_d

    :cond_14
    move v4, v5

    :cond_15
    :goto_d
    if-eqz v4, :cond_16

    goto :goto_11

    .line 35
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_f

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x5c24b9c

    if-eq v2, v3, :cond_18

    goto :goto_f

    :cond_18
    const-string v2, "email"

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getLabel()Ljava/lang/String;

    move-result-object v4

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getOptions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-static {v2}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    goto :goto_e

    :cond_19
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    :goto_e
    move-object v8, v2

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValidationRegex()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    .line 43
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_10

    .line 44
    :cond_1a
    :goto_f
    new-instance v1, Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v10

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getLabel()Ljava/lang/String;

    move-result-object v11

    .line 47
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/offline/dto/Component;->getValidationRegex()Ljava/lang/String;

    move-result-object v14

    move-object v9, v1

    .line 50
    invoke-direct/range {v9 .. v14}, Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    :goto_11
    return-void
.end method

.method public static final X(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$sdk"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "Locale.ENGLISH"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_SDK"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final X0(Ljava/lang/String;Ljava/util/List;Lcom/truecaller/ads/offline/dto/Component;Lcom/truecaller/ads/offline/dto/Theme;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/UiComponent;",
            ">;",
            "Lcom/truecaller/ads/offline/dto/Component;",
            "Lcom/truecaller/ads/offline/dto/Theme;",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/truecaller/ads/offline/dto/Component;->getComponents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    goto :goto_4

    .line 2
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/ads/offline/dto/Component;->getComponents()Ljava/util/List;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/ads/offline/dto/Component;

    .line 5
    invoke-static {v1, v0, p3, p4}, Le/m/d/y/n;->V0(Lcom/truecaller/ads/offline/dto/Component;Ljava/util/List;Lcom/truecaller/ads/offline/dto/Theme;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;)V

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, -0x6bd94868

    if-eq p2, p3, :cond_4

    goto :goto_2

    :cond_4
    const-string p2, "ArticleBody"

    .line 7
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Lcom/truecaller/ads/offline/dto/BodyUiComponent;

    invoke-direct {p0, p2, v0}, Lcom/truecaller/ads/offline/dto/BodyUiComponent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    .line 8
    :cond_5
    :goto_2
    new-instance p0, Lcom/truecaller/ads/offline/dto/CTAUiComponent;

    const-string p2, "CtaContainer"

    invoke-direct {p0, p2, v0}, Lcom/truecaller/ads/offline/dto/CTAUiComponent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 9
    :goto_3
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    return-void
.end method

.method public static Y([B)Ljava/lang/String;
    .locals 5

    const-string v0, "SHA-1"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static final Y0(Landroid/text/Spannable;Landroid/content/Context;Landroid/graphics/Paint$FontMetrics;F)V
    .locals 5

    const-string v0, "$this$replaceEmojis"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "fontMetrics"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, p2

    mul-float/2addr v1, p3

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "text"

    invoke-static {p0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p2

    const-class p3, Le/a/t/a/w/a;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p2, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "text.getSpans(0, text.le\u2026h, EmojiSpan::class.java)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    array-length v2, p2

    invoke-direct {p3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 6
    check-cast v4, Le/a/t/a/w/a;

    .line 7
    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p3}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p2

    .line 9
    sget-object p3, Le/a/t/a/y/b;->a:Le/a/t/a/y/b;

    .line 10
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 11
    sget-object v2, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/t/a/u/f;

    if-eqz v2, :cond_3

    .line 12
    iget-object v2, v2, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    .line 13
    invoke-virtual {p3, p0, v0, v0, v2}, Le/a/t/a/y/b;->b(Ljava/lang/CharSequence;IILe/a/t/a/u/c;)Ls1/k;

    move-result-object v2

    .line 14
    iget-object v3, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 15
    check-cast v3, Le/a/t/a/u/d;

    .line 16
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 17
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eqz v3, :cond_2

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 19
    invoke-static {v3, p1}, Le/m/d/y/n;->D(Le/a/t/a/u/d;Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 20
    :cond_1
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 21
    invoke-static {p1, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "ContextCompat.getDrawabl\u2026res) ?: return@findEmojis"

    .line 22
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v4, Le/a/t/a/w/a;

    invoke-direct {v4, v3, v1}, Le/a/t/a/w/a;-><init>(Landroid/graphics/drawable/Drawable;F)V

    const/16 v3, 0x21

    invoke-interface {p0, v4, v0, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_2
    move v0, v2

    goto :goto_1

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Emoji data loader has not been set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static Z([B)Ljava/lang/String;
    .locals 5

    const-string v0, "SHA-1"

    .line 1
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, v3, 0xf

    .line 7
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static Z0(Le/p/a/n;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/p/a/n;->i:Ljava/lang/String;

    iget-object v1, p0, Le/p/a/n;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 2
    iget-object v1, p0, Le/p/a/n;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Le/p/a/n;->e(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 3
    iget-object v2, p0, Le/p/a/n;->i:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Le/p/a/n;->h()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v1, 0x3f

    .line 5
    invoke-static {v0, v1, p0}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static final a(Lq3/a/n;Le/a/i/f0/l/d;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lq3/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static final a0(Le/a/v2/l$a;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "$this$status"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/v2/l$a$d;

    if-eqz v0, :cond_0

    check-cast p0, Le/a/v2/l$a$d;

    .line 2
    iget-object p0, p0, Le/a/v2/l$a$d;->b:Ljava/lang/Integer;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Le/a/v2/l$a$e;

    if-eqz v0, :cond_1

    check-cast p0, Le/a/v2/l$a$e;

    .line 4
    iget p0, p0, Le/a/v2/l$a$e;->b:I

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a1(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "POST"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PATCH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PROPPATCH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "REPORT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final b(Lcom/tenor/android/core/response/impl/GifsResponse;I)Ljava/util/List;
    .locals 30

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/tenor/android/core/response/impl/GifsResponse;->getResults()Ljava/util/List;

    move-result-object v0

    const-string v1, "results"

    invoke-static {v0, v1}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "it"

    const-string v4, "it.medias"

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/tenor/android/core/model/impl/Result;

    .line 3
    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tenor/android/core/model/impl/Result;->getMedias()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/tenor/android/core/model/impl/Result;

    .line 7
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tenor/android/core/model/impl/Result;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v5, "it.id"

    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/tenor/android/core/model/impl/Result;->getMedias()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tenor/android/core/model/impl/MediaCollection;

    const-string v7, "GIF_NANO"

    invoke-virtual {v5, v7}, Lcom/tenor/android/core/model/impl/MediaCollection;->get(Ljava/lang/String;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object v5

    new-instance v14, Le/a/t/a/a/c;

    invoke-virtual {v5}, Lcom/tenor/android/core/model/impl/Image;->getUrl()Ljava/lang/String;

    move-result-object v8

    const-string v15, "url"

    invoke-static {v8, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tenor/android/core/model/impl/Image;->getAspectRatio()F

    move-result v9

    invoke-virtual {v5}, Lcom/tenor/android/core/model/impl/Image;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Lcom/tenor/android/core/model/impl/Image;->getHeight()I

    move-result v11

    const-wide/16 v21, -0x1

    const-wide/16 v28, -0x1

    const-wide/16 v12, -0x1

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Le/a/t/a/a/c;-><init>(Ljava/lang/String;FIIJ)V

    .line 9
    invoke-virtual {v2}, Lcom/tenor/android/core/model/impl/Result;->getMedias()Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tenor/android/core/model/impl/MediaCollection;

    const-string v7, "GIF_TINY"

    invoke-virtual {v5, v7}, Lcom/tenor/android/core/model/impl/MediaCollection;->get(Ljava/lang/String;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object v5

    new-instance v8, Le/a/t/a/a/c;

    invoke-virtual {v5}, Lcom/tenor/android/core/model/impl/Image;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/tenor/android/core/model/impl/Image;->getAspectRatio()F

    move-result v25

    invoke-virtual {v5}, Lcom/tenor/android/core/model/impl/Image;->getWidth()I

    move-result v26

    invoke-virtual {v5}, Lcom/tenor/android/core/model/impl/Image;->getHeight()I

    move-result v27

    move-object/from16 v23, v8

    move-object/from16 v24, v7

    invoke-direct/range {v23 .. v29}, Le/a/t/a/a/c;-><init>(Ljava/lang/String;FIIJ)V

    .line 10
    invoke-virtual {v2}, Lcom/tenor/android/core/model/impl/Result;->getMedias()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tenor/android/core/model/impl/MediaCollection;

    const-string v5, "GIF_MEDIUM"

    invoke-virtual {v2, v5}, Lcom/tenor/android/core/model/impl/MediaCollection;->get(Ljava/lang/String;)Lcom/tenor/android/core/model/impl/Media;

    move-result-object v2

    new-instance v9, Le/a/t/a/a/c;

    invoke-virtual {v2}, Lcom/tenor/android/core/model/impl/Image;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tenor/android/core/model/impl/Image;->getAspectRatio()F

    move-result v18

    invoke-virtual {v2}, Lcom/tenor/android/core/model/impl/Image;->getWidth()I

    move-result v19

    invoke-virtual {v2}, Lcom/tenor/android/core/model/impl/Image;->getHeight()I

    move-result v20

    move-object/from16 v16, v9

    move-object/from16 v17, v5

    invoke-direct/range {v16 .. v22}, Le/a/t/a/a/c;-><init>(Ljava/lang/String;FIIJ)V

    .line 11
    new-instance v2, Le/a/t/a/a/f;

    move-object v5, v2

    move-object v7, v14

    move/from16 v10, p1

    invoke-direct/range {v5 .. v10}, Le/a/t/a/a/f;-><init>(Ljava/lang/String;Le/a/t/a/a/c;Le/a/t/a/a/c;Le/a/t/a/a/c;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    return-object v0
.end method

.method public static b0(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const-string v0, "from"

    .line 1
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "/topics/"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b1(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    invoke-static {p3}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_2
    if-eqz p3, :cond_3

    .line 2
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    if-nez v0, :cond_6

    if-eqz p2, :cond_5

    goto :goto_2

    .line 3
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string p1, " \u2022 "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 4
    :cond_6
    :goto_2
    invoke-static {p1}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 5
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final c(Lq3/a/n;Le/a/i/f0/l/e;Ls1/z/b/l;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lq3/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p2, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static final c0(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const-string p0, "Unknown"

    goto :goto_0

    :cond_0
    const-string p0, "im"

    goto :goto_0

    :cond_1
    const-string p0, "mms"

    goto :goto_0

    :cond_2
    const-string p0, "sms"

    :goto_0
    return-object p0
.end method

.method public static c1(Landroid/widget/ImageView;Lcom/google/android/gms/ads/nativead/NativeAd$Image;ZLs1/z/b/l;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 1
    sget-object p3, Le/a/i/j;->b:Le/a/i/j;

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object p4

    const-string v0, "GlideApp.with(context)"

    invoke-static {p4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p4, p0}, Le/f/a/i;->m(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p4, p1}, Le/a/z3/e;->z(Landroid/net/Uri;)Le/a/z3/d;

    move-result-object p1

    .line 8
    invoke-interface {p3, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p1, p0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    move-result-object p0

    const-string p1, "glideRequests\n          \u2026}\n            .into(this)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static final d(Landroid/widget/TextView;Le/a/t/a/a/r;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 3
    sget p1, Lcom/truecaller/android/truemoji/R$string;->StrNoResults:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    sget p1, Lcom/truecaller/android/truemoji/R$drawable;->ic_no_results_empty_state:I

    invoke-virtual {p0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 6
    sget p1, Lcom/truecaller/android/truemoji/R$string;->StrNoConnection:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 7
    sget p1, Lcom/truecaller/android/truemoji/R$drawable;->ic_no_internet:I

    invoke-virtual {p0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "compoundDrawables"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/q/f/a/d/a;->k0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/truecaller/android/truemoji/R$attr;->tcx_textQuarternary:I

    invoke-static {v1, v2}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static d0(II)Ljava/text/DateFormat;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown DateFormat style: "

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    if-ne p0, v2, :cond_0

    const-string p0, "M/d/yy"

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, p0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "MMM d, yyyy"

    goto :goto_0

    :cond_2
    const-string p0, "MMMM d, yyyy"

    goto :goto_0

    :cond_3
    const-string p0, "EEEE, MMMM d, yyyy"

    .line 3
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-ne p1, v2, :cond_4

    const-string p0, "h:mm a"

    goto :goto_1

    .line 4
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const-string p0, "h:mm:ss a"

    goto :goto_1

    :cond_6
    const-string p0, "h:mm:ss a z"

    .line 5
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object p1
.end method

.method public static d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 6

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const-string p3, "ItemEvent.CLICKED"

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p5, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v5, p4

    const-string p3, "$this$setClickEventEmitter"

    .line 1
    invoke-static {p0, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "receiver"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "holder"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "action"

    invoke-static {v3, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Le/a/o2/i;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Le/a/o2/i;-><init>(Landroid/view/View;Le/a/o2/m;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final e(Lcom/truecaller/ads/mediation/model/AdSize;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$adSize"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "html_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/truecaller/ads/mediation/model/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/truecaller/ads/mediation/model/AdSize;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e0(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Le/a/y2/a;",
            "+TT;>;)",
            "Ljava/util/Map<",
            "Le/a/y2/g;",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "$this$groupInBuckets"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/y2/a;

    .line 6
    new-instance v3, Le/a/y2/g;

    .line 7
    iget-object v4, v2, Le/a/y2/a;->d:Lcom/truecaller/background_work/WorkActionPeriod;

    .line 8
    iget-boolean v2, v2, Le/a/y2/a;->e:Z

    .line 9
    invoke-direct {v3, v4, v2}, Le/a/y2/g;-><init>(Lcom/truecaller/background_work/WorkActionPeriod;Z)V

    .line 10
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 11
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    :cond_0
    check-cast v1, Ljava/util/Map$Entry;

    check-cast v2, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/y2/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static e1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ls1/z/b/a;I)V
    .locals 6

    and-int/lit8 p3, p5, 0x4

    if-eqz p3, :cond_0

    const-string p3, "ItemEvent.CLICKED"

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    const-string p3, "$this$setClickEventEmitter"

    .line 1
    invoke-static {p0, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "receiver"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "holder"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "action"

    invoke-static {v3, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "dataHolder"

    invoke-static {p4, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Le/a/o2/j;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Le/a/o2/j;-><init>(Landroid/view/View;Le/a/o2/m;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Ls1/z/b/a;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static f(Le/a/i/v/f;Le/a/i/v/i;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/v/f;",
            "Le/a/i/v/i;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/i/v/e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/v/e;

    iget v1, v0, Le/a/i/v/e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/v/e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/v/e;

    invoke-direct {v0, p0, p3}, Le/a/i/v/e;-><init>(Le/a/i/v/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/v/e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/v/e;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/i/v/e;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Le/a/i/v/i;

    iget-object p0, v0, Le/a/i/v/e;->g:Ljava/lang/Object;

    check-cast p0, Le/a/i/v/f;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/i/v/e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/v/e;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/v/e;->e:I

    move-object p3, p0

    check-cast p3, Le/a/i/v/g;

    .line 5
    iget-object v2, p3, Le/a/i/v/g;->a:Ln3/c0/q;

    new-instance v5, Le/a/i/v/g$b;

    invoke-direct {v5, p3, p2}, Le/a/i/v/g$b;-><init>(Le/a/i/v/g;Ljava/lang/String;)V

    invoke-static {v2, v4, v5, v0}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/i/v/e;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/v/e;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/v/e;->e:I

    invoke-interface {p0, p1, v0}, Le/a/i/y/d;->j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static final f0(Lcom/google/android/gms/ads/nativead/MediaView;Lcom/google/android/gms/ads/MediaContent;Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V
    .locals 7

    const-string v0, "$this$handleAspectRatio"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_2

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/ads/MediaContent;->getAspectRatio()F

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v6, p1

    .line 3
    new-instance p1, Le/a/i/i;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Le/a/i/i;-><init>(Landroid/view/View;Lcom/google/android/gms/ads/nativead/MediaView;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Landroidx/constraintlayout/widget/ConstraintLayout;F)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method public static f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 6

    and-int/lit8 p3, p5, 0x4

    if-eqz p3, :cond_0

    const-string p3, "ItemEvent.LONG_CLICKED"

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    move-object v3, p3

    and-int/lit8 p3, p5, 0x8

    const/4 v5, 0x0

    const-string p3, "$this$setLongClickEventEmitter"

    .line 1
    invoke-static {p0, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "receiver"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "holder"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "action"

    invoke-static {v3, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Le/a/o2/k;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Le/a/o2/k;-><init>(Landroid/view/View;Le/a/o2/m;Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public static g(Le/a/i/d0/c0/m;Le/a/i/d0/c0/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/d0/c0/m;",
            "Le/a/i/d0/c0/p;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/d0/c0/l;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/d0/c0/l;

    iget v1, v0, Le/a/i/d0/c0/l;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/c0/l;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/c0/l;

    invoke-direct {v0, p0, p2}, Le/a/i/d0/c0/l;-><init>(Le/a/i/d0/c0/m;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/d0/c0/l;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/c0/l;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/i/d0/c0/l;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Le/a/i/d0/c0/p;

    iget-object p0, v0, Le/a/i/d0/c0/l;->g:Ljava/lang/Object;

    check-cast p0, Le/a/i/d0/c0/m;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Le/a/i/d0/c0/p;->b:Ljava/lang/String;

    .line 5
    iput-object p0, v0, Le/a/i/d0/c0/l;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/d0/c0/l;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/d0/c0/l;->e:I

    check-cast p0, Le/a/i/d0/c0/n;

    invoke-virtual {p0, p2, v0}, Le/a/i/d0/c0/n;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/i/d0/c0/l;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/d0/c0/l;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/d0/c0/l;->e:I

    invoke-interface {p0, p1, v0}, Le/a/i/y/d;->j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static final g0()Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/k<",
            "Ln3/m0/a;",
            "Lw3/b/a/i;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 1
    invoke-static {v0, v1}, Lw3/b/a/i;->c(J)Lw3/b/a/i;

    move-result-object v0

    const-string v1, "Duration.standardHours(hours)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$exponential"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Ln3/m0/a;->a:Ln3/m0/a;

    .line 4
    new-instance v2, Ls1/k;

    invoke-direct {v2, v1, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static g1(Landroid/content/Intent;)Z
    .locals 2

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.messaging.RECEIVE_DIRECT_BOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "google.c.a.e"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static h(Le/a/i/d0/g0/c/b;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/d0/g0/c/b;",
            "Ljava/util/List<",
            "Le/a/i/d0/g0/c/e;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/d0/g0/c/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/d0/g0/c/a;

    iget v1, v0, Le/a/i/d0/g0/c/a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/g0/c/a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/g0/c/a;

    invoke-direct {v0, p0, p2}, Le/a/i/d0/g0/c/a;-><init>(Le/a/i/d0/g0/c/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/d0/g0/c/a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/g0/c/a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/i/d0/g0/c/a;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Le/a/i/d0/g0/c/a;->g:Ljava/lang/Object;

    check-cast p0, Le/a/i/d0/g0/c/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/i/d0/g0/c/a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/d0/g0/c/a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/d0/g0/c/a;->e:I

    move-object p2, p0

    check-cast p2, Le/a/i/d0/g0/c/c;

    .line 5
    iget-object v2, p2, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    new-instance v5, Le/a/i/d0/g0/c/d;

    invoke-direct {v5, p2}, Le/a/i/d0/g0/c/d;-><init>(Le/a/i/d0/g0/c/c;)V

    invoke-static {v2, v4, v5, v0}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/i/d0/g0/c/a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/d0/g0/c/a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/d0/g0/c/a;->e:I

    invoke-interface {p0, p1, v0}, Le/a/i/y/d;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static h0(C)V
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " (0x"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final h1(Landroid/app/Activity;)V
    .locals 11

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Le/m/d/y/n;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    sget v2, Lcom/truecaller/android/sdk/R$id;->textDisclaimerContainer:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "activity.layoutInflater"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget v2, Lcom/truecaller/android/sdk/R$layout;->truesdk_privacy_policy_dialog:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6
    sget v1, Lcom/truecaller/android/sdk/R$id;->textDisclaimer:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7
    sget v2, Lcom/truecaller/android/sdk/R$id;->buttonDismiss:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 8
    sget v3, Lcom/truecaller/android/sdk/R$string;->sdk_disclaimer_text:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity.getString(R.string.sdk_disclaimer_text)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "*"

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 9
    invoke-static {v3, v4, v6, v6, v5}, Ls1/f0/v;->H(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v7

    .line 10
    invoke-static {v3, v4, v6, v6, v5}, Ls1/f0/v;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v5

    .line 11
    new-instance v8, Landroid/text/SpannableString;

    const/4 v9, 0x4

    const-string v10, ""

    invoke-static {v3, v4, v10, v6, v9}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 12
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    sub-int/2addr v5, v4

    invoke-virtual {v8, v3, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string v3, "text"

    .line 13
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v3, Lj0;

    invoke-direct {v3, v6, p0}, Lj0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    new-instance v2, Lj0;

    invoke-direct {v2, v4, p0}, Lj0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    .line 17
    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const-string v1, "view"

    .line 18
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    sget-object p0, Le/m/d/y/n;->b:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static i(Le/a/i/e/h/a/b;Le/a/i/e/h/b/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/e/h/a/b;",
            "Le/a/i/e/h/b/a;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/e/h/a/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/e/h/a/a;

    iget v1, v0, Le/a/i/e/h/a/a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/h/a/a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/h/a/a;

    invoke-direct {v0, p0, p2}, Le/a/i/e/h/a/a;-><init>(Le/a/i/e/h/a/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/e/h/a/a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/h/a/a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/i/e/h/a/a;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Le/a/i/e/h/b/a;

    iget-object p0, v0, Le/a/i/e/h/a/a;->g:Ljava/lang/Object;

    check-cast p0, Le/a/i/e/h/a/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/i/e/h/a/a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/e/h/a/a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/e/h/a/a;->e:I

    move-object p2, p0

    check-cast p2, Le/a/i/e/h/a/c;

    .line 5
    iget-object v2, p2, Le/a/i/e/h/a/c;->a:Ln3/c0/q;

    new-instance v5, Le/a/i/e/h/a/c$a;

    invoke-direct {v5, p2}, Le/a/i/e/h/a/c$a;-><init>(Le/a/i/e/h/a/c;)V

    invoke-static {v2, v4, v5, v0}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/i/e/h/a/a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/e/h/a/a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/e/h/a/a;->e:I

    invoke-interface {p0, p1, v0}, Le/a/i/y/d;->j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2
.end method

.method public static final i0(Le/a/i/c/a/j;Landroid/content/Context;Le/a/i/g;)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$inflateAndBind"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "context"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "layout"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p0 .. p0}, Le/a/i/c/a/c;->getType()Lcom/truecaller/ads/adsrouter/ui/AdType;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "ad"

    const-string v9, "$this$bind"

    const-string v10, "null cannot be cast to non-null type com.truecaller.ads.adsrouter.ui.AdRouterNativeAd"

    const/4 v11, 0x6

    if-eqz v4, :cond_1

    if-ne v4, v7, :cond_0

    .line 2
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v2, Le/a/i/c/a/l;

    invoke-direct {v2, v1, v5, v6, v11}, Le/a/i/c/a/l;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    iget-object v0, v0, Le/a/i/c/a/i;->e:Le/a/i/c/a/b;

    .line 5
    invoke-static {v0, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    .line 6
    invoke-static {v2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Le/a/i/c/a/l;->setNativeAd(Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    goto/16 :goto_8

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p0 .. p0}, Le/a/i/c/a/c;->getType()Lcom/truecaller/ads/adsrouter/ui/AdType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type is not supported for native ad"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v4, "$this$inflateAdRouterNativeAdView"

    .line 9
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v4, Le/a/i/c/a/a;

    invoke-direct {v4, v1, v5, v6, v11}, Le/a/i/c/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v6, "LayoutInflater.from(context)"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v7}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-interface/range {p2 .. p2}, Le/a/i/g;->getNativeLayout()I

    move-result v6

    invoke-virtual {v1, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    sget v1, Lcom/truecaller/ads/R$id;->adTitle:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/i/c/a/a;->setHeadlineView(Landroid/view/View;)V

    .line 13
    sget v1, Lcom/truecaller/ads/R$id;->adText:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/i/c/a/a;->setBodyView(Landroid/view/View;)V

    .line 14
    sget v1, Lcom/truecaller/ads/R$id;->adCtaText:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/i/c/a/a;->setCallToActionView(Landroid/view/View;)V

    .line 15
    sget v1, Lcom/truecaller/ads/R$id;->adIcon:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/i/c/a/a;->setLogoView(Landroid/view/View;)V

    .line 16
    sget v1, Lcom/truecaller/ads/R$id;->adRouterIconMedia:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/i/c/a/a;->setLogoMediaView(Landroid/view/View;)V

    .line 17
    sget v1, Lcom/truecaller/ads/R$id;->adRouterMainMediaImage:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/i/c/a/a;->setMainImageView(Landroid/view/View;)V

    .line 18
    sget v1, Lcom/truecaller/ads/R$id;->adRouterPartnerLogo:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/i/c/a/a;->setPartnerLogoView(Landroid/view/View;)V

    .line 19
    sget v1, Lcom/truecaller/ads/R$id;->adMainMedia:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v4, v1}, Le/a/i/c/a/a;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    .line 20
    sget v1, Lcom/truecaller/ads/R$id;->adPrivacy:I

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Le/a/i/c/a/a;->setAdPrivacyView(Landroid/view/View;)V

    .line 21
    iget-object v0, v0, Le/a/i/c/a/i;->e:Le/a/i/c/a/b;

    .line 22
    invoke-static {v0, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;

    invoke-static/range {p2 .. p2}, Le/m/d/y/n;->u0(Le/a/i/g;)Z

    move-result v1

    .line 23
    invoke-static {v4, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v4}, Le/a/i/c/a/a;->getHeadlineView()Landroid/view/View;

    move-result-object v3

    instance-of v6, v3, Landroid/widget/TextView;

    if-nez v6, :cond_2

    move-object v3, v5

    :cond_2
    check-cast v3, Landroid/widget/TextView;

    .line 26
    invoke-virtual {v4}, Le/a/i/c/a/a;->getBodyView()Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Landroid/widget/TextView;

    if-nez v7, :cond_3

    move-object v6, v5

    :cond_3
    check-cast v6, Landroid/widget/TextView;

    .line 27
    invoke-virtual {v4}, Le/a/i/c/a/a;->getCallToActionView()Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Le/a/i/a/h;

    if-nez v8, :cond_4

    move-object v7, v5

    :cond_4
    check-cast v7, Le/a/i/a/h;

    .line 28
    invoke-virtual {v4}, Le/a/i/c/a/a;->getLogoView()Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Landroid/widget/ImageView;

    if-nez v9, :cond_5

    move-object v8, v5

    :cond_5
    check-cast v8, Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v4}, Le/a/i/c/a/a;->getMainImageView()Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Landroid/widget/ImageView;

    if-nez v10, :cond_6

    move-object v9, v5

    :cond_6
    check-cast v9, Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v4}, Le/a/i/c/a/a;->getPartnerLogoView()Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Landroid/widget/ImageView;

    if-nez v11, :cond_7

    move-object v10, v5

    :cond_7
    check-cast v10, Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v4}, Le/a/i/c/a/a;->getAdPrivacyView()Landroid/view/View;

    move-result-object v11

    instance-of v12, v11, Landroid/widget/TextView;

    if-nez v12, :cond_8

    goto :goto_0

    :cond_8
    move-object v5, v11

    :goto_0
    check-cast v5, Landroid/widget/TextView;

    .line 32
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->l()Ljava/lang/String;

    move-result-object v11

    .line 33
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->i()Ljava/lang/String;

    move-result-object v12

    .line 34
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->h()Ljava/lang/String;

    move-result-object v13

    .line 35
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->j()Ljava/lang/String;

    move-result-object v14

    .line 36
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->m()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v4

    .line 37
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->o()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;

    move-result-object v4

    .line 38
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->r()Ljava/lang/String;

    move-result-object v17

    .line 39
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->s()Ljava/lang/String;

    move-result-object v18

    move-object/from16 p0, v5

    .line 40
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->g()Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;

    move-result-object v5

    if-eqz v3, :cond_9

    .line 41
    invoke-static {v11}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    if-eqz v6, :cond_a

    .line 42
    invoke-static {v6, v13, v1, v12}, Le/m/d/y/n;->b1(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V

    :cond_a
    if-eqz v4, :cond_d

    .line 43
    iget-object v1, v4, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    const/4 v3, 0x1

    goto :goto_1

    :cond_b
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_c

    goto :goto_2

    :cond_c
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_d

    if-eqz v9, :cond_d

    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/z3/d;

    .line 47
    iput-object v1, v4, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, v4, Le/f/a/h;->N:Z

    .line 49
    check-cast v3, Le/a/z3/d;

    .line 50
    invoke-virtual {v3}, Le/a/z3/d;->c0()Le/a/z3/d;

    move-result-object v3

    .line 51
    invoke-virtual {v3, v9}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 52
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    if-eqz v17, :cond_10

    .line 54
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_3

    :cond_e
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_f

    goto :goto_4

    :cond_f
    const/16 v17, 0x0

    :goto_4
    move-object/from16 v1, v17

    if-eqz v1, :cond_10

    if-eqz v10, :cond_10

    const/4 v3, 0x0

    .line 55
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Le/a/z3/d;

    .line 58
    iput-object v1, v4, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 59
    iput-boolean v1, v4, Le/f/a/h;->N:Z

    .line 60
    check-cast v3, Le/a/z3/d;

    .line 61
    invoke-virtual {v3}, Le/a/z3/d;->b0()Le/a/z3/d;

    move-result-object v1

    const/high16 v3, 0x41800000    # 16.0f

    .line 62
    invoke-static {v2, v3}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v3}, Le/a/z3/d;->m0(I)Le/a/z3/d;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v10}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    :cond_10
    if-eqz v8, :cond_11

    .line 64
    invoke-virtual {v8}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/truecaller/ads/R$dimen;->contact_photo_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v2

    invoke-virtual {v2, v15}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 67
    check-cast v2, Le/a/z3/d;

    .line 68
    invoke-virtual {v2}, Le/a/z3/d;->b0()Le/a/z3/d;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v1, v1}, Le/a/z3/d;->n0(II)Le/a/z3/d;

    move-result-object v1

    .line 70
    invoke-static {}, Le/f/a/r/h;->H()Le/f/a/r/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/z3/d;->a0(Le/f/a/r/a;)Le/a/z3/d;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v8}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    :cond_11
    if-eqz v7, :cond_12

    .line 72
    invoke-static {v14}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1}, Le/a/i/a/h;->setText(Ljava/lang/CharSequence;)V

    :cond_12
    if-eqz v18, :cond_14

    if-eqz v5, :cond_13

    if-eqz p0, :cond_13

    .line 73
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    sget-object v2, Lcom/truecaller/ads/adsrouter/ui/AdNetwork;->APPNEXT:Lcom/truecaller/ads/adsrouter/ui/AdNetwork;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;->VIDEO:Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd$AdCreativeType;

    if-ne v5, v1, :cond_13

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x9

    .line 76
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xc

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object/from16 v5, p0

    .line 78
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_13
    move-object/from16 v5, p0

    .line 79
    :goto_5
    sget-object v1, Le/a/i/h0/e;->b:Le/a/i/h0/e;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/i/h0/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15

    if-eqz v5, :cond_16

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_14
    move-object/from16 v5, p0

    :cond_15
    if-eqz v5, :cond_16

    const-string v1, "Ad"

    .line 81
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_16
    :goto_6
    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->n()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 83
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getMainImageView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_17

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :cond_17
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 85
    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 86
    :cond_18
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 87
    :cond_19
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getLogoMediaView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1a

    const-string v2, "LOGO_MEDIA_VIEW"

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getHeadlineView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1b
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getBodyView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1c
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getCallToActionView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_1d
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getLogoView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1e
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getLogoMediaView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v2

    if-eqz v2, :cond_20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_20
    invoke-virtual/range {v16 .. v16}, Le/a/i/c/a/a;->getLogoView()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/ImageView;

    if-nez v3, :cond_21

    const/4 v2, 0x0

    :cond_21
    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v3, v16

    invoke-virtual {v0, v3, v2, v1}, Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;->v(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V

    goto :goto_7

    :cond_22
    move-object/from16 v3, v16

    .line 96
    :goto_7
    invoke-virtual {v3, v0}, Le/a/i/c/a/a;->setNativeAd(Lcom/truecaller/ads/adsrouter/ui/AdRouterNativeAd;)V

    move-object v2, v3

    :goto_8
    return-object v2
.end method

.method public static i1(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public static j(Le/a/i/e/h/a/i;Le/a/i/e/h/b/c;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/e/h/a/i;",
            "Le/a/i/e/h/b/c;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/e/h/a/h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/e/h/a/h;

    iget v1, v0, Le/a/i/e/h/a/h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/h/a/h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/h/a/h;

    invoke-direct {v0, p0, p2}, Le/a/i/e/h/a/h;-><init>(Le/a/i/e/h/a/i;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/e/h/a/h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/h/a/h;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/i/e/h/a/h;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Le/a/i/e/h/b/c;

    iget-object p0, v0, Le/a/i/e/h/a/h;->g:Ljava/lang/Object;

    check-cast p0, Le/a/i/e/h/a/i;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/i/e/h/a/h;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/e/h/a/h;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/e/h/a/h;->e:I

    move-object p2, p0

    check-cast p2, Le/a/i/e/h/a/j;

    .line 5
    iget-object v2, p2, Le/a/i/e/h/a/j;->a:Ln3/c0/q;

    new-instance v5, Le/a/i/e/h/a/j$b;

    invoke-direct {v5, p2}, Le/a/i/e/h/a/j$b;-><init>(Le/a/i/e/h/a/j;)V

    invoke-static {v2, v4, v5, v0}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/i/e/h/a/h;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/e/h/a/h;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/e/h/a/h;->e:I

    invoke-interface {p0, p1, v0}, Le/a/i/y/d;->j(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    return-object p2
.end method

.method public static final j0(Le/a/i/f0/m/c;Landroid/app/Activity;Le/a/i/g;)Landroid/view/View;
    .locals 13

    const-string v0, "$this$inflateAndBind"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "layout"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/truecaller/ads/CustomTemplate;->Companion:Lcom/truecaller/ads/CustomTemplate$a;

    .line 2
    iget-object v2, p0, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 3
    check-cast v2, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getCustomFormatId()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/truecaller/ads/CustomTemplate;->values()[Lcom/truecaller/ads/CustomTemplate;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x6

    const/4 v6, 0x0

    if-ge v4, v5, :cond_1

    .line 6
    aget-object v5, v1, v4

    .line 7
    iget-object v7, v5, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    invoke-static {v7, v2}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v6

    :goto_1
    if-nez v5, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, -0x1

    const-string v4, "view"

    const-string v7, "Image"

    if-eqz v1, :cond_a

    const/4 v8, 0x1

    if-eq v1, v8, :cond_a

    const/4 v9, 0x2

    if-eq v1, v9, :cond_a

    const/4 v9, 0x3

    const/high16 v10, -0x1000000

    const-string v11, "LayoutInflater.from(context)"

    const-string v12, "adHolder"

    if-eq v1, v9, :cond_8

    const/4 v3, 0x4

    if-eq v1, v3, :cond_5

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    .line 9
    :goto_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Custom holder inflation not supported for "

    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    :cond_3
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    invoke-static {p2, p1}, Le/m/d/y/n;->o0(Le/a/i/g;Landroid/content/Context;)Le/a/i/b/a;

    move-result-object p1

    .line 11
    invoke-static {p0}, Le/a/i/b/c;->a(Le/a/i/f0/m/c;)Le/a/i/b/b;

    move-result-object v0

    .line 12
    iget-object p0, p0, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    .line 13
    iget-object p0, p0, Le/a/i/f0/l/c;->d:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    .line 14
    invoke-static {p2}, Le/m/d/y/n;->u0(Le/a/i/g;)Z

    move-result p2

    invoke-static {p1, v0, p0, p2}, Le/m/d/y/n;->o(Le/a/i/b/a;Le/a/i/b/b;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;Z)V

    goto/16 :goto_8

    .line 15
    :cond_5
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 17
    check-cast p0, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 18
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    invoke-static {p2, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v8}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/truecaller/ads/R$layout;->ad_custom_customvideo:I

    invoke-virtual {p2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/view/ViewGroup;

    .line 19
    sget v0, Lcom/truecaller/ads/R$id;->more_url:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.ads.ui.ThemeableCtaButton"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/i/a/h;

    const-string v1, "Calltoaction"

    .line 20
    invoke-interface {p0, v1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/i/a/h;->setText(Ljava/lang/CharSequence;)V

    .line 21
    new-instance v1, Le/a/i/h0/h;

    invoke-direct {v1, p0}, Le/a/i/h0/h;-><init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    invoke-interface {v0, v1}, Le/a/i/a/h;->setOnClickListener(Ls1/z/b/a;)V

    const-string v1, "CTAbuttoncolor"

    .line 22
    invoke-interface {p0, v1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    .line 24
    :cond_6
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 25
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_3
    const-string v1, "CTAbuttontextcolor"

    .line 26
    invoke-interface {p0, v1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    .line 28
    :cond_7
    :try_start_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 29
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 30
    :goto_4
    invoke-interface {v0, v10, v2}, Le/a/i/a/h;->a(II)V

    .line 31
    sget v0, Lcom/truecaller/ads/R$id;->custom_ad_media_frame:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ads/ui/VideoFrame;

    .line 32
    invoke-interface {p0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v2

    new-instance v3, Le/a/i/h0/i;

    invoke-direct {v3, p0, p1}, Le/a/i/h0/i;-><init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/truecaller/ads/ui/VideoFrame;->h1(Lcom/google/android/gms/ads/nativead/MediaView;Lcom/google/android/gms/ads/VideoController;Le/a/i/a/g;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 33
    invoke-interface {p0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->recordImpression()V

    goto/16 :goto_7

    .line 34
    :cond_8
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 36
    check-cast p2, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/truecaller/ads/R$layout;->ad_custom_clicktoplayvideo:I

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "Textcolor"

    .line 38
    invoke-interface {p2, v1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    :try_start_2
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    .line 40
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_5
    const-string v1, "Headline"

    .line 41
    invoke-interface {p2, v1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "Body"

    .line 42
    invoke-interface {p2, v2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 43
    invoke-interface {p2, v7}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v5

    .line 44
    sget v6, Lcom/truecaller/ads/R$id;->custom_ad_headline:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v7, "headlineView"

    .line 45
    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    sget v1, Lcom/truecaller/ads/R$id;->custom_ad_second_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v6, "secondLineView"

    .line 48
    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    sget v1, Lcom/truecaller/ads/R$id;->custom_ad_main_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "image"

    .line 51
    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "mainImageView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5, p2, v1}, Le/m/d/y/n;->z0(Landroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Landroid/widget/ImageView;)V

    .line 52
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v1

    const-string v2, "ApplicationBase.getAppBase()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Le/a/b0/g/a;->N()Le/a/b0/c;

    move-result-object v1

    invoke-interface {v1}, Le/a/b0/c;->d()Le/a/b0/o/a;

    move-result-object v1

    const-string v2, "featureAdCtpRotation"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 53
    new-instance v1, Lk1;

    invoke-direct {v1, v3, p1, p0, p2}, Lk1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 54
    :cond_9
    new-instance v1, Lk1;

    invoke-direct {v1, v8, p1, p0, p2}, Lk1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :goto_6
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_8

    .line 56
    :cond_a
    iget-object p0, p0, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 57
    check-cast p0, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 58
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "ad"

    invoke-static {p0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/truecaller/ads/R$layout;->ad_custom_nativebanner:I

    invoke-virtual {p2, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 60
    sget v0, Lcom/truecaller/ads/R$id;->custom_ad_main_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 61
    new-instance v1, Le/a/i/h0/g;

    invoke-direct {v1, p0}, Le/a/i/h0/g;-><init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-interface {p0, v7}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_b

    const-string v3, "imageView"

    .line 63
    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1, p0, v0}, Le/m/d/y/n;->z0(Landroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Landroid/widget/ImageView;)V

    .line 64
    :cond_b
    invoke-static {p2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, -0x2

    invoke-direct {p0, v2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    :goto_7
    move-object p1, p2

    :goto_8
    return-object p1
.end method

.method public static j1(Ljava/lang/String;I)I
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method public static final k(Landroidx/work/ListenableWorker$a;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$analyticsName"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Landroidx/work/ListenableWorker$a$c;

    if-eqz v0, :cond_0

    const-string p0, "Success"

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Landroidx/work/ListenableWorker$a$b;

    if-eqz v0, :cond_1

    const-string p0, "Retry"

    goto :goto_0

    .line 3
    :cond_1
    instance-of p0, p0, Landroidx/work/ListenableWorker$a$a;

    if-eqz p0, :cond_2

    const-string p0, "Failure"

    goto :goto_0

    :cond_2
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method

.method public static final k0(Le/a/i/f0/m/h;Landroid/content/Context;Le/a/i/g;)Landroid/view/View;
    .locals 1

    const-string v0, "$this$inflateAndBind"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2, p1}, Le/m/d/y/n;->p0(Le/a/i/g;Landroid/content/Context;)Lcom/google/android/gms/ads/nativead/NativeAdView;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Le/a/i/f0/m/h;->e()Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object v0

    .line 3
    iget-object p0, p0, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    .line 4
    invoke-static {p2}, Le/m/d/y/n;->u0(Le/a/i/g;)Z

    move-result p2

    invoke-static {p1, v0, p0, p2}, Le/m/d/y/n;->n(Lcom/google/android/gms/ads/nativead/NativeAdView;Lcom/google/android/gms/ads/nativead/NativeAd;Le/a/i/f0/l/c;Z)V

    return-object p1
.end method

.method public static final k1(Landroid/view/View;)I
    .locals 3

    const-string v0, "$this$softKeyboardHeight"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ln3/k/i/s;->i(Landroid/view/View;)Ln3/k/i/d0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    .line 2
    invoke-virtual {v0, v2}, Ln3/k/i/d0;->b(I)Ln3/k/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "ViewCompat.getRootWindow\u2026rs())\n        ?: return 0"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0}, Ln3/k/i/s;->i(Landroid/view/View;)Ln3/k/i/d0;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v2, 0x8

    .line 5
    invoke-virtual {p0, v2}, Ln3/k/i/d0;->b(I)Ln3/k/c/b;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "ViewCompat.getRootWindow\u2026me())\n        ?: return 0"

    .line 6
    invoke-static {p0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget p0, p0, Ln3/k/c/b;->d:I

    iget v0, v0, Ln3/k/c/b;->d:I

    sub-int/2addr p0, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static l(Le/m/i/n/c/b;Z)I
    .locals 10

    if-eqz p1, :cond_0

    .line 1
    iget v0, p0, Le/m/i/n/c/b;->c:I

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Le/m/i/n/c/b;->b:I

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    iget v1, p0, Le/m/i/n/c/b;->b:I

    goto :goto_1

    .line 4
    :cond_1
    iget v1, p0, Le/m/i/n/c/b;->c:I

    .line 5
    :goto_1
    iget-object p0, p0, Le/m/i/n/c/b;->a:[[B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_2
    if-ge v3, v0, :cond_7

    const/4 v5, -0x1

    move v6, v2

    move v7, v6

    :goto_3
    const/4 v8, 0x5

    if-ge v6, v1, :cond_5

    if-eqz p1, :cond_2

    .line 6
    aget-object v9, p0, v3

    aget-byte v9, v9, v6

    goto :goto_4

    :cond_2
    aget-object v9, p0, v6

    aget-byte v9, v9, v3

    :goto_4
    if-ne v9, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_3
    if-lt v7, v8, :cond_4

    add-int/lit8 v7, v7, -0x5

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v4, v7

    :cond_4
    const/4 v5, 0x1

    move v7, v5

    move v5, v9

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    if-lt v7, v8, :cond_6

    add-int/lit8 v7, v7, -0x5

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v7, v4

    move v4, v7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    return v4
.end method

.method public static l0(Le/a/i/f0/m/a;Le/a/i/g;I)Landroid/view/View;
    .locals 0

    and-int/lit8 p1, p2, 0x1

    const-string p1, "$this$inflateAndBind"

    .line 1
    invoke-static {p0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 3
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public static synthetic l1(Le/a/i/f0/d;Le/a/i/s;Le/a/i/m;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    const/4 p3, 0x0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Le/a/i/f0/d;->l(Le/a/i/s;Le/a/i/m;Ljava/lang/String;)V

    return-void
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ISO-8859-1"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 3
    invoke-static {p0}, Lv3/i;->j([B)Lv3/i;

    move-result-object p0

    invoke-virtual {p0}, Lv3/i;->a()Ljava/lang/String;

    move-result-object p0

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Basic "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 5
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static final m0(Le/a/i/c/a/h;Landroid/content/Context;)Landroid/view/View;
    .locals 8

    const-string v0, "$this$inflateAndBindBannerAd"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    move-object v0, p0

    check-cast v0, Le/a/i/c/a/g;

    .line 2
    iget-object v1, v0, Le/a/i/c/a/g;->g:Lcom/truecaller/ads/adsrouter/ui/AdType;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "ad"

    const-string v4, "$this$bind"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 4
    new-instance v0, Le/a/i/c/a/y;

    invoke-direct {v0, p1, v7, v6, v5}, Le/a/i/c/a/y;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    iget-object p0, p0, Le/a/i/c/a/i;->e:Le/a/i/c/a/b;

    const-string p1, "null cannot be cast to non-null type com.truecaller.ads.mediation.ui.CriteoBannerAd"

    .line 6
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/i/d0/h0/i;

    .line 7
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p0}, Le/a/i/c/a/y;->setBannerAd(Le/a/i/d0/h0/i;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v0, v0, Le/a/i/c/a/g;->g:Lcom/truecaller/ads/adsrouter/ui/AdType;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type is not supported for banner ad"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance v0, Le/a/i/c/a/w;

    invoke-direct {v0, p1, v7, v6, v5}, Le/a/i/c/a/w;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 13
    iget-object p0, p0, Le/a/i/c/a/i;->e:Le/a/i/c/a/b;

    const-string p1, "null cannot be cast to non-null type com.truecaller.ads.mediation.ui.AppNextBannerSuggestedAppsAd"

    .line 14
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/i/d0/h0/f;

    .line 15
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p0}, Le/a/i/c/a/w;->setSuggestedAppsAd(Le/a/i/d0/h0/f;)V

    goto :goto_0

    .line 17
    :cond_2
    new-instance v0, Le/a/i/c/a/v;

    invoke-direct {v0, p1, v7, v6, v5}, Le/a/i/c/a/v;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 18
    iget-object p0, p0, Le/a/i/c/a/i;->e:Le/a/i/c/a/b;

    const-string p1, "null cannot be cast to non-null type com.truecaller.ads.mediation.ui.AmazonBannerAd"

    .line 19
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/i/d0/h0/d;

    .line 20
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p0}, Le/a/i/c/a/v;->setBannerAd(Le/a/i/d0/h0/d;)V

    goto :goto_0

    .line 22
    :cond_3
    new-instance v0, Le/a/i/c/a/f;

    invoke-direct {v0, p1, v7, v6, v5}, Le/a/i/c/a/f;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 23
    iget-object p0, p0, Le/a/i/c/a/i;->e:Le/a/i/c/a/b;

    const-string p1, "null cannot be cast to non-null type com.truecaller.ads.adsrouter.ui.AdRouterBannerAd"

    .line 24
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/i/c/a/e;

    .line 25
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p0}, Le/a/i/c/a/f;->setBannerAd(Le/a/i/c/a/e;)V

    :goto_0
    return-object v0
.end method

.method public static final m1(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/c/c/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/c/c/e;

    iget v1, v0, Le/a/i/c/c/e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/c/e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/c/e;

    invoke-direct {v0, p1}, Le/a/i/c/c/e;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/c/c/e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/c/e;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iput v4, v0, Le/a/i/c/c/e;->e:I

    invoke-interface {p0, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/UndeclaredThrowableException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    move-object v3, p1

    goto :goto_2

    :catch_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_2
    return-object v3
.end method

.method public static final n(Lcom/google/android/gms/ads/nativead/NativeAdView;Lcom/google/android/gms/ads/nativead/NativeAd;Le/a/i/f0/l/c;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "$this$bind"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ad"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v4, v6

    :cond_0
    move-object v7, v4

    check-cast v7, Landroid/widget/TextView;

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getBodyView()Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-nez v5, :cond_1

    move-object v4, v6

    :cond_1
    move-object v8, v4

    check-cast v8, Landroid/widget/TextView;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Le/a/i/a/h;

    if-nez v5, :cond_2

    move-object v4, v6

    :cond_2
    move-object v9, v4

    check-cast v9, Le/a/i/a/h;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getIconView()Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/ImageView;

    if-nez v5, :cond_3

    move-object v4, v6

    :cond_3
    move-object v10, v4

    check-cast v10, Landroid/widget/ImageView;

    .line 5
    sget v4, Lcom/truecaller/ads/R$id;->adPrivacy:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Landroid/widget/TextView;

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v12

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v13

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v14

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v15

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v16

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    goto :goto_0

    :cond_4
    move-object/from16 v17, v6

    :goto_0
    if-eqz v2, :cond_5

    .line 12
    iget-object v4, v2, Le/a/i/f0/l/c;->d:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    move-object/from16 v18, v4

    goto :goto_1

    :cond_5
    move-object/from16 v18, v6

    :goto_1
    move/from16 v19, p3

    .line 13
    invoke-static/range {v7 .. v19}, Le/m/d/y/n;->q(Landroid/widget/TextView;Landroid/widget/TextView;Le/a/i/a/h;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Ljava/lang/CharSequence;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;Z)V

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v7, "context"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 15
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object v3

    const-string v8, "images"

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    new-instance v3, Le/a/i/k;

    invoke-direct {v3, v5, v7}, Le/a/i/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 18
    :cond_7
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getImages()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-static {v5}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    goto :goto_3

    :cond_8
    move-object v5, v6

    :goto_3
    invoke-static {v3, v4, v5}, Le/m/d/y/n;->f0(Lcom/google/android/gms/ads/nativead/MediaView;Lcom/google/android/gms/ads/MediaContent;Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V

    .line 19
    :cond_9
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/google/android/gms/ads/ResponseInfo;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    if-eqz v2, :cond_b

    .line 21
    iget-object v2, v2, Le/a/i/f0/l/c;->a:Le/a/i/s;

    if-eqz v2, :cond_b

    .line 22
    iget-object v2, v2, Le/a/i/s;->j:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 23
    sget-object v3, Le/a/i/h0/c;->d:Le/a/i/h0/c;

    invoke-virtual {v3, v1, v2}, Le/a/i/h0/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 24
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 25
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v3, "Title"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getHeadlineView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :sswitch_1
    const-string v3, "Icon"

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getIconView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :sswitch_2
    const-string v3, "CTA"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getCallToActionView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :sswitch_3
    const-string v3, "MediaView"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    :sswitch_4
    const-string v3, "SubTitle"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getBodyView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 31
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78b93fe8 -> :sswitch_4
        -0x8f85377 -> :sswitch_3
        0x105f0 -> :sswitch_2
        0x22b099 -> :sswitch_1
        0x4d13238 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final n0(Le/a/i/c/a/t;Landroid/content/Context;)Le/a/i/c/a/q;
    .locals 4

    const-string v0, "$this$inflateAndBindVideoAd"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/i/c/a/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, p1, v1, v2, v3}, Le/a/i/c/a/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v1, Lcom/truecaller/ads/R$layout;->ad_video_view_frame:I

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    sget p1, Lcom/truecaller/ads/R$id;->adVideo:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.adVideo)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Le/a/i/c/a/q;->setVideoView(Landroid/widget/VideoView;)V

    .line 4
    sget p1, Lcom/truecaller/ads/R$id;->adVideoPlayPause:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.adVideoPlayPause)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Le/a/i/c/a/q;->setAdVideoPlayPause(Landroid/widget/ImageView;)V

    .line 5
    sget p1, Lcom/truecaller/ads/R$id;->adVideoMuteUnmute:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(R.id.adVideoMuteUnmute)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Le/a/i/c/a/q;->setAdVideoMuteUnmute(Landroid/widget/ImageView;)V

    .line 6
    iget-object p0, p0, Le/a/i/c/a/i;->e:Le/a/i/c/a/b;

    const-string p1, "null cannot be cast to non-null type com.truecaller.ads.adsrouter.ui.AdRouterVideoAd"

    .line 7
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Le/a/i/c/a/n;

    invoke-virtual {v0, p0}, Le/a/i/c/a/q;->setVideoAd(Le/a/i/c/a/n;)V

    return-object v0
.end method

.method public static synthetic n1(Le/a/g/a/b/h;IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 1
    sget p3, Lcom/truecaller/acs/R$drawable;->bg_acs_caller_label:I

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Le/a/g/a/b/h;->kc(III)V

    return-void
.end method

.method public static final o(Le/a/i/b/a;Le/a/i/b/b;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;Z)V
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "$this$bind"

    move-object/from16 v2, p0

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ad"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Le/a/i/b/a;->getHeadlineView()Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/TextView;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v1, v4

    :cond_0
    move-object v5, v1

    check-cast v5, Landroid/widget/TextView;

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/a/i/b/a;->getBodyView()Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/TextView;

    if-nez v3, :cond_1

    move-object v1, v4

    :cond_1
    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/i/b/a;->getCallToActionView()Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Le/a/i/a/h;

    if-nez v3, :cond_2

    move-object v1, v4

    :cond_2
    move-object v7, v1

    check-cast v7, Le/a/i/a/h;

    .line 4
    invoke-virtual/range {p0 .. p0}, Le/a/i/b/a;->getIconView()Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Landroid/widget/ImageView;

    if-nez v3, :cond_3

    move-object v1, v4

    :cond_3
    move-object v8, v1

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x0

    .line 5
    iget-object v1, v0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    const-string v3, "Headline"

    invoke-interface {v1, v3}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 6
    iget-object v1, v0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    const-string v3, "Body"

    invoke-interface {v1, v3}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    .line 7
    iget-object v1, v0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    const-string v3, "Calltoaction"

    invoke-interface {v1, v3}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 8
    iget-object v1, v0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    const-string v3, "Secondaryimage"

    invoke-interface {v1, v3}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v16, p2

    move/from16 v17, p3

    .line 9
    invoke-static/range {v5 .. v17}, Le/m/d/y/n;->q(Landroid/widget/TextView;Landroid/widget/TextView;Le/a/i/a/h;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Ljava/lang/CharSequence;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;Z)V

    .line 10
    iget-object v1, v0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/ads/VideoController;->hasVideoContent()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v4

    :goto_0
    invoke-static {v1}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "Image"

    if-nez v1, :cond_6

    .line 12
    :try_start_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Le/a/i/b/a;->getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v5

    if-eqz v5, :cond_5

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    :cond_5
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 15
    iget-object v5, v0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v5, v3}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v5

    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 16
    invoke-static {v5}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-static {v1, v5, v6, v4, v7}, Le/m/d/y/n;->c1(Landroid/widget/ImageView;Lcom/google/android/gms/ads/nativead/NativeAd$Image;ZLs1/z/b/l;I)V

    .line 17
    :cond_6
    invoke-virtual/range {p0 .. p0}, Le/a/i/b/a;->getMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 18
    iget-object v5, v0, Le/a/i/b/b;->a:Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    invoke-interface {v5, v3}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getImage(Ljava/lang/String;)Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v3

    invoke-static {v3}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 19
    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    invoke-static {v1, v4, v3}, Le/m/d/y/n;->f0(Lcom/google/android/gms/ads/nativead/MediaView;Lcom/google/android/gms/ads/MediaContent;Lcom/google/android/gms/ads/nativead/NativeAd$Image;)V

    .line 20
    :cond_7
    invoke-virtual/range {p0 .. p1}, Le/a/i/b/a;->setNativeAd(Le/a/i/b/b;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static final o0(Le/a/i/g;Landroid/content/Context;)Le/a/i/b/a;
    .locals 4

    const-string v0, "$this$inflateCustomNativeAdView"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/i/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v0, p1, v1, v2, v3}, Le/a/i/b/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-interface {p0}, Le/a/i/g;->getNativeLayout()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    sget p0, Lcom/truecaller/ads/R$id;->adTitle:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/a/i/b/a;->setHeadlineView(Landroid/view/View;)V

    .line 4
    sget p0, Lcom/truecaller/ads/R$id;->adText:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/a/i/b/a;->setBodyView(Landroid/view/View;)V

    .line 5
    sget p0, Lcom/truecaller/ads/R$id;->adCtaText:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/a/i/b/a;->setCallToActionView(Landroid/view/View;)V

    .line 6
    sget p0, Lcom/truecaller/ads/R$id;->adIcon:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Le/a/i/b/a;->setIconView(Landroid/view/View;)V

    .line 7
    sget p0, Lcom/truecaller/ads/R$id;->adMainMedia:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v0, p0}, Le/a/i/b/a;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    return-object v0
.end method

.method public static o1()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final p(Le/a/i/a/f;Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V
    .locals 1

    const-string v0, "adView"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/i/a/f;->a(Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V

    return-void
.end method

.method public static final p0(Le/a/i/g;Landroid/content/Context;)Lcom/google/android/gms/ads/nativead/NativeAdView;
    .locals 2

    const-string v0, "$this$inflateNativeAdView"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-direct {v0, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-interface {p0}, Le/a/i/g;->getNativeLayout()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 3
    sget p0, Lcom/truecaller/ads/R$id;->adTitle:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 4
    sget p0, Lcom/truecaller/ads/R$id;->adText:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 5
    sget p0, Lcom/truecaller/ads/R$id;->adCtaText:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 6
    sget p0, Lcom/truecaller/ads/R$id;->adIcon:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    .line 7
    sget p0, Lcom/truecaller/ads/R$id;->adMainMedia:I

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/ads/nativead/MediaView;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    return-object v0
.end method

.method public static final p1(Le/a/i/c/b/a;)Lcom/google/android/gms/ads/AdError;
    .locals 3

    const-string v0, "$this$toAdError"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 2
    iget v1, p0, Le/a/i/c/b/a;->a:I

    .line 3
    iget-object v2, p0, Le/a/i/c/b/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Truecaller"

    .line 4
    :goto_0
    iget-object p0, p0, Le/a/i/c/b/a;->b:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final q(Landroid/widget/TextView;Landroid/widget/TextView;Le/a/i/a/h;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Ljava/lang/CharSequence;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p5}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1, p7, p12, p6}, Le/m/d/y/n;->b1(Landroid/widget/TextView;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    invoke-static {p8}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Le/a/i/a/h;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p11, :cond_3

    if-eqz p2, :cond_3

    .line 4
    iget p0, p11, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->a:I

    iget p1, p11, Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;->b:I

    invoke-interface {p2, p0, p1}, Le/a/i/a/h;->a(II)V

    :cond_3
    if-eqz p3, :cond_4

    const/4 p0, 0x0

    .line 5
    new-instance p1, Le/a/i/h;

    invoke-direct {p1, p3}, Le/a/i/h;-><init>(Landroid/widget/ImageView;)V

    const/4 p2, 0x2

    invoke-static {p3, p9, p0, p1, p2}, Le/m/d/y/n;->c1(Landroid/widget/ImageView;Lcom/google/android/gms/ads/nativead/NativeAd$Image;ZLs1/z/b/l;I)V

    :cond_4
    if-eqz p10, :cond_5

    .line 6
    sget-object p0, Le/a/i/h0/e;->b:Le/a/i/h0/e;

    invoke-virtual {p10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Le/a/i/h0/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    if-eqz p4, :cond_6

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ad("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    const-string p0, "Ad"

    .line 8
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public static q0(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final q1(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$toAnalyticsTransport"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p0, p0, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-static {p0}, Le/m/d/y/n;->c0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Lcom/truecaller/messaging/data/types/Conversation;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "$this$buildAvatarConfig"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v1

    const-string v2, "participants"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 2
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_10

    .line 5
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v1, :cond_1

    iget-wide v5, v1, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    invoke-static {v5, v6, v1, v4}, Le/a/e/a2;->A(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, v3

    .line 6
    :goto_1
    iget-object v1, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v1}, Le/a/c/p/a;->p1([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v11

    const/4 v1, 0x3

    const/4 v5, 0x0

    move/from16 v7, p1

    if-ne v7, v1, :cond_2

    move v10, v4

    goto :goto_2

    :cond_2
    move v10, v5

    .line 7
    :goto_2
    iget v1, v0, Lcom/truecaller/messaging/data/types/Conversation;->c:I

    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    move v12, v4

    goto :goto_3

    :cond_3
    move v12, v5

    .line 8
    :goto_3
    new-instance v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 9
    iget-object v7, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/m/d/y/n;->N([Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v9

    .line 10
    iget-object v7, v0, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v7, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object v7, v3

    .line 11
    :goto_4
    iget-object v2, v0, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v2, :cond_5

    .line 12
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;->a:Ljava/lang/String;

    :cond_5
    move-object v8, v3

    const/4 v13, 0x0

    .line 13
    invoke-static/range {p0 .. p0}, Le/m/d/y/n;->L(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_7

    move v14, v4

    goto :goto_6

    :cond_7
    :goto_5
    move v14, v5

    .line 14
    :goto_6
    invoke-static/range {p0 .. p0}, Le/m/d/y/n;->L(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x20

    if-nez v2, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_9

    move v15, v4

    goto :goto_8

    :cond_9
    :goto_7
    move v15, v5

    .line 15
    :goto_8
    invoke-static/range {p0 .. p0}, Le/m/d/y/n;->L(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x80

    if-nez v2, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_b

    move/from16 v16, v4

    goto :goto_a

    :cond_b
    :goto_9
    move/from16 v16, v5

    .line 16
    :goto_a
    invoke-static/range {p0 .. p0}, Le/m/d/y/n;->L(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x100

    if-nez v2, :cond_c

    goto :goto_b

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_d

    move/from16 v17, v4

    goto :goto_c

    :cond_d
    :goto_b
    move/from16 v17, v5

    .line 17
    :goto_c
    invoke-static/range {p0 .. p0}, Le/m/d/y/n;->L(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    if-nez v0, :cond_e

    goto :goto_d

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_f

    move/from16 v18, v4

    goto :goto_e

    :cond_f
    :goto_d
    move/from16 v18, v5

    :goto_e
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const v22, 0xe080

    move-object v5, v1

    .line 18
    invoke-direct/range {v5 .. v22}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v1

    .line 19
    :cond_10
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public static r0(C)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final r1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v1, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    invoke-virtual {v1, p0}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "GIF"

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v1, p0}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "Image"

    goto :goto_0

    .line 3
    :cond_2
    invoke-virtual {v1, p0}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Video"

    goto :goto_0

    .line 4
    :cond_3
    invoke-virtual {v1, p0}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "Audio"

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {v1, p0}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "VCard"

    goto :goto_0

    .line 6
    :cond_5
    invoke-virtual {v1, p0}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string v0, "File"

    :cond_6
    :goto_0
    return-object v0
.end method

.method public static s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 26

    move-object/from16 v0, p0

    and-int/lit8 v1, p4, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, p4, 0x2

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    const/4 v5, 0x4

    and-int/lit8 v6, p4, 0x4

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v7

    :goto_2
    move-object v10, v6

    goto :goto_3

    :cond_3
    move-object/from16 v10, p3

    :goto_3
    const-string v6, "$this$buildAvatarConfig"

    .line 2
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v6, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 4
    invoke-static {v0, v4}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v9

    .line 5
    iget v8, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 6
    iget-object v11, v0, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 7
    invoke-static {v8, v11}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v8

    if-ne v8, v5, :cond_4

    move/from16 v17, v4

    goto :goto_4

    :cond_4
    move/from16 v17, v2

    .line 8
    :goto_4
    iget v5, v0, Lcom/truecaller/data/entity/Contact;->r:I

    .line 9
    iget-object v8, v0, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 10
    invoke-static {v5, v8}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v5

    const/16 v8, 0x20

    if-ne v5, v8, :cond_5

    move/from16 v18, v4

    goto :goto_5

    :cond_5
    move/from16 v18, v2

    :goto_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move v13, v2

    goto :goto_7

    :cond_7
    :goto_6
    move v13, v4

    .line 12
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v1}, Le/m/d/y/n;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_8
    move-object v12, v7

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    if-eqz v3, :cond_a

    move/from16 v16, v4

    goto :goto_8

    :cond_a
    move/from16 v16, v2

    .line 14
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v19

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v20

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0xe064

    const/4 v11, 0x0

    move-object v8, v6

    .line 17
    invoke-direct/range {v8 .. v25}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v6
.end method

.method public static final s0(Lcom/truecaller/data/entity/Contact;)Z
    .locals 1

    const-string v0, "$this$isIdentified"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final s1(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Le/m/d/y/n;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static t(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static t0(C)Z
    .locals 1

    .line 1
    invoke-static {p0}, Le/m/d/y/n;->y0(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic t1(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Le/m/d/y/n;->s1(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Le/a/n2/a/a;Lcom/truecaller/account/network/CheckCredentialsRequestDto;Ljava/lang/String;ILjava/lang/Object;)Le/a/n2/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    check-cast p0, Le/a/n2/a/b;

    invoke-virtual {p0, p1, p2}, Le/a/n2/a/b;->a(Lcom/truecaller/account/network/CheckCredentialsRequestDto;Ljava/lang/String;)Le/a/n2/a/e;

    move-result-object p0

    return-object p0
.end method

.method public static final u0(Le/a/i/g;)Z
    .locals 1

    const-string v0, "$this$isSmallAcsLayout"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/ads/AdLayoutTypeX;->ACS:Lcom/truecaller/ads/AdLayoutTypeX;

    invoke-virtual {v0}, Lcom/truecaller/ads/AdLayoutTypeX;->getNativeLayout()I

    move-result v0

    invoke-interface {p0}, Le/a/i/g;->getNativeLayout()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final u1(Lcom/truecaller/data/entity/messaging/Participant;)Le/a/l5/a/m3;
    .locals 6

    const-string v0, "$this$toContactInfo"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    and-int/lit8 v0, v0, 0xd

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-static {}, Le/a/l5/a/m3;->a()Le/a/l5/a/m3$b;

    move-result-object v3

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v4

    invoke-virtual {v3, v4}, Le/a/l5/a/m3$b;->d(Z)Le/a/l5/a/m3$b;

    .line 4
    iget-object v4, p0, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {v3, v4}, Le/a/l5/a/m3$b;->b(Z)Le/a/l5/a/m3$b;

    .line 5
    iget v4, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/l5/a/m3$b;->f(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 6
    iget-boolean v4, p0, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/l5/a/m3$b;->e(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 7
    iget v4, p0, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/l5/a/m3$b;->g(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Le/a/l5/a/m3$b;->i(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 9
    iget v4, p0, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    if-eqz v0, :cond_4

    move-object v5, v4

    :cond_4
    invoke-virtual {v3, v5}, Le/a/l5/a/m3$b;->h(Ljava/lang/Integer;)Le/a/l5/a/m3$b;

    .line 10
    iget p0, p0, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v3, p0}, Le/a/l5/a/m3$b;->c(Ljava/lang/Boolean;)Le/a/l5/a/m3$b;

    .line 11
    invoke-virtual {v3}, Le/a/l5/a/m3$b;->a()Le/a/l5/a/m3;

    move-result-object p0

    const-string v0, "ContactInfo.newBuilder()\u2026D) != 0)\n        .build()"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static v(Le/a/i/d0/c0/d;Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Key:",
            "Ljava/lang/Object;",
            "Value:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/i/d0/c0/d<",
            "TKey;TValue;>;",
            "Le/a/i/d0/c0/d<",
            "TKey;TValue;>;)",
            "Le/a/i/d0/c0/d<",
            "TKey;TValue;>;"
        }
    .end annotation

    const-string v0, "b"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/i/d0/c0/b;

    invoke-direct {v0, p0, p1}, Le/a/i/d0/c0/b;-><init>(Le/a/i/d0/c0/d;Le/a/i/d0/c0/d;)V

    return-object v0
.end method

.method public static final v0(Lcom/truecaller/data/entity/Contact;)Z
    .locals 1

    const-string v0, "$this$isVerifiedBusinessWithSpam"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final v1(Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;",
            ")",
            "Ljava/util/List<",
            "Le/a/i/d0/g0/c/e;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toPredictiveEcpmConfigEntity"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->getPlacementConfigs()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;

    .line 4
    invoke-virtual {v3}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;->getPartnerConfigs()Ljava/util/List;

    move-result-object v4

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 7
    check-cast v6, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPartnerConfig;

    .line 8
    new-instance v14, Le/a/i/d0/g0/c/e;

    .line 9
    invoke-virtual {v3}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;->getPlacementId()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {v6}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPartnerConfig;->getPartnerId()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-virtual {v6}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPartnerConfig;->getPricingConfig()Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;->getModel()Ljava/lang/String;

    move-result-object v10

    .line 12
    invoke-virtual {v6}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPartnerConfig;->getPricingConfig()Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPricingConfig;->getEcpm()Ljava/lang/String;

    move-result-object v11

    .line 13
    invoke-virtual {v6}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPartnerConfig;->getAdTypes()Ljava/util/List;

    move-result-object v12

    .line 14
    invoke-virtual {v3}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmPlacementConfig;->getFloorPrice()Ljava/lang/String;

    move-result-object v13

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->getTtl()J

    move-result-wide v15

    .line 16
    new-instance v6, Lw3/b/a/b;

    invoke-direct {v6}, Lw3/b/a/b;-><init>()V

    move-object/from16 v18, v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/ads/mediation/predictiveecpm/model/PredictiveEcpmConfig;->getTtl()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v6, v1}, Lw3/b/a/b;->J(I)Lw3/b/a/b;

    move-result-object v1

    const-string v2, "DateTime.now().plusSeconds(ttl.toInt())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    move-object v7, v14

    move-object v6, v14

    move-wide v14, v15

    move-wide/from16 v16, v1

    .line 19
    invoke-direct/range {v7 .. v17}, Le/a/i/d0/g0/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JJ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    goto :goto_1

    :cond_0
    move-object/from16 v18, v2

    .line 20
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v1, p0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)Le/m/d/m/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/m/d/m/o<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/m/d/a0/c;

    invoke-direct {v0, p0, p1}, Le/m/d/a0/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const-class p0, Le/m/d/a0/f;

    .line 3
    invoke-static {p0}, Le/m/d/m/o;->b(Ljava/lang/Class;)Le/m/d/m/o$b;

    move-result-object p0

    new-instance p1, Le/m/d/m/a;

    invoke-direct {p1, v0}, Le/m/d/m/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Le/m/d/m/o$b;->c(Le/m/d/m/r;)Le/m/d/m/o$b;

    invoke-virtual {p0}, Le/m/d/m/o$b;->b()Le/m/d/m/o;

    move-result-object p0

    return-object p0
.end method

.method public static w0([BII)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2
    array-length v1, p0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_0
    const/4 v1, 0x1

    if-ge p1, p2, :cond_1

    .line 3
    aget-byte v2, p0, p1

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final w1(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "hidden"

    goto :goto_0

    :cond_1
    const-string p0, "group"

    goto :goto_0

    :cond_2
    const-string p0, "true_user"

    goto :goto_0

    :cond_3
    const-string p0, "email"

    goto :goto_0

    :cond_4
    const-string p0, "alphanum"

    goto :goto_0

    :cond_5
    const-string p0, "phone_number"

    :goto_0
    return-object p0
.end method

.method public static final x(Landroid/app/Activity;Le/a/i/g;Le/a/i/f0/m/d;)Landroid/view/View;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ad"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Le/a/i/f0/m/d;->getType()Lcom/truecaller/ads/provider/holders/AdHolderType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2
    check-cast p2, Le/a/i/f0/m/f;

    .line 3
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Le/m/d/y/n;->y(Landroid/content/Context;Le/a/i/g;)Le/a/i/a/f;

    move-result-object p0

    .line 5
    iget-object p1, p2, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 6
    check-cast p1, Le/a/i/f0/n/d;

    .line 7
    iget-object p2, p2, Le/a/i/f0/m/b;->c:Le/a/i/f0/l/c;

    .line 8
    iget-object p2, p2, Le/a/i/f0/l/c;->d:Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;

    .line 9
    invoke-static {p0, p1, p2}, Le/m/d/y/n;->p(Le/a/i/a/f;Le/a/i/f0/n/d;Lcom/truecaller/ads/campaigns/AdCampaign$CtaStyle;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_1
    check-cast p2, Le/a/i/f0/m/c;

    invoke-static {p2, p0, p1}, Le/m/d/y/n;->j0(Le/a/i/f0/m/c;Landroid/app/Activity;Le/a/i/g;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_2
    check-cast p2, Le/a/i/f0/m/h;

    invoke-static {p2, p0, p1}, Le/m/d/y/n;->k0(Le/a/i/f0/m/h;Landroid/content/Context;Le/a/i/g;)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_3
    check-cast p2, Le/a/i/f0/m/a;

    const/4 p0, 0x0

    invoke-static {p2, p0, v3}, Le/m/d/y/n;->l0(Le/a/i/f0/m/a;Le/a/i/g;I)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static x0([[BIII)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2
    array-length v1, p0

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_0
    const/4 v1, 0x1

    if-ge p2, p3, :cond_1

    .line 3
    aget-object v2, p0, p2

    aget-byte v2, v2, p1

    if-ne v2, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final x1(Le/a/a/g/l0/d;)Ljava/lang/String;
    .locals 4

    const-string v0, "$this$toSenderType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Le/a/a/g/l0/d;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p0, "blockedByUser"

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const-string p0, "whitelisted"

    goto :goto_0

    .line 2
    :cond_1
    iget v3, p0, Le/a/a/g/l0/d;->c:I

    if-ne v3, v1, :cond_2

    const-string p0, "topSpammer"

    goto :goto_0

    :cond_2
    if-eq v0, v2, :cond_4

    if-eq v3, v1, :cond_3

    if-eq v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Le/a/a/g/l0/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    :cond_3
    const-string p0, "spammer"

    goto :goto_0

    .line 4
    :cond_4
    iget v0, p0, Le/a/a/g/l0/d;->f:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    const-string p0, "hidden"

    goto :goto_0

    .line 5
    :cond_5
    iget v0, p0, Le/a/a/g/l0/d;->d:I

    if-ne v0, v1, :cond_6

    const-string p0, "business"

    goto :goto_0

    .line 6
    :cond_6
    iget-object p0, p0, Le/a/a/g/l0/d;->a:Ljava/lang/String;

    if-eqz p0, :cond_7

    const-string p0, "group"

    goto :goto_0

    :cond_7
    const-string p0, "personal"

    :goto_0
    return-object p0
.end method

.method public static final y(Landroid/content/Context;Le/a/i/g;)Le/a/i/a/f;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/i/a/f;

    invoke-direct {v0, p0, p1}, Le/a/i/a/f;-><init>(Landroid/content/Context;Le/a/i/g;)V

    return-object v0
.end method

.method public static y0(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static y1(Le/a/r2/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Le/a/l5/a/l2;->a()Le/a/l5/a/l2$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/a/l5/a/l2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    invoke-virtual {v0, p2}, Le/a/l5/a/l2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/l2$b;

    invoke-virtual {v0}, Le/a/l5/a/l2$b;->a()Le/a/l5/a/l2;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/avro/AvroRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-interface {p0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/q2/a0;

    invoke-interface {p0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final z(Landroid/content/Context;Le/a/i/g;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-interface {p1}, Le/a/i/g;->getPlaceholderLayout()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "LayoutInflater.from(cont\u2026derLayout, parent, false)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final z0(Landroid/content/Context;Lcom/google/android/gms/ads/nativead/NativeAd$Image;Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object p0

    check-cast p0, Le/a/z3/e;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/z3/e;->z(Landroid/net/Uri;)Le/a/z3/d;

    move-result-object p0

    .line 3
    new-instance p1, Le/a/i/h0/j;

    invoke-direct {p1, p2, p3}, Le/a/i/h0/j;-><init>(Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;Landroid/widget/ImageView;)V

    invoke-virtual {p0, p1}, Le/a/z3/d;->Z(Le/f/a/r/g;)Le/a/z3/d;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p3}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public static synthetic z1(Le/a/y2/q/a;Ljava/lang/String;Ls1/k;Ln3/m0/f;ILjava/lang/Object;)Ln3/m0/s;
    .locals 0

    and-int/lit8 p3, p4, 0x2

    if-eqz p3, :cond_0

    .line 1
    invoke-static {}, Le/m/d/y/n;->g0()Ls1/k;

    move-result-object p2

    :cond_0
    and-int/lit8 p3, p4, 0x4

    const/4 p3, 0x0

    .line 2
    invoke-interface {p0, p1, p2, p3}, Le/a/y2/q/a;->a(Ljava/lang/String;Ls1/k;Ln3/m0/f;)Ln3/m0/s;

    move-result-object p0

    return-object p0
.end method
