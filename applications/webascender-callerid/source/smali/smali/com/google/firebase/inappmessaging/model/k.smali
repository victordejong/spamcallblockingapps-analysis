.class public Lcom/google/firebase/inappmessaging/model/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/firebase/inappmessaging/z;)Lcom/google/firebase/inappmessaging/model/a$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/a;->a()Lcom/google/firebase/inappmessaging/model/a$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/z;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/z;->X()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/a$b;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/a$b;

    :cond_0
    return-object v0
.end method

.method private static b(Lcom/google/firebase/inappmessaging/z;Lcom/google/firebase/inappmessaging/b0;)Lcom/google/firebase/inappmessaging/model/a;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/k;->a(Lcom/google/firebase/inappmessaging/z;)Lcom/google/firebase/inappmessaging/model/a$b;

    move-result-object p0

    .line 2
    invoke-static {}, Lcom/google/firebase/inappmessaging/b0;->Y()Lcom/google/firebase/inappmessaging/b0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/d;->a()Lcom/google/firebase/inappmessaging/model/d$b;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/b0;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/b0;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/d$b;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/d$b;

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/b0;->a0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/n;->a()Lcom/google/firebase/inappmessaging/model/n$b;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/b0;->Z()Lcom/google/firebase/inappmessaging/g0;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/g0;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/g0;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/n$b;->c(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/n$b;

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/g0;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/g0;->Y()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/inappmessaging/model/n$b;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/n$b;

    .line 13
    :cond_2
    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/n$b;->a()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/model/d$b;->c(Lcom/google/firebase/inappmessaging/model/n;)Lcom/google/firebase/inappmessaging/model/d$b;

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/d$b;->a()Lcom/google/firebase/inappmessaging/model/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/inappmessaging/model/a$b;->c(Lcom/google/firebase/inappmessaging/model/d;)Lcom/google/firebase/inappmessaging/model/a$b;

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/a$b;->a()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/firebase/inappmessaging/d0;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Lcom/google/firebase/inappmessaging/model/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/d0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/inappmessaging/model/i;"
        }
    .end annotation

    const-string v0, "FirebaseInAppMessaging content cannot be null."

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebaseInAppMessaging campaign id cannot be null."

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "FirebaseInAppMessaging campaign name cannot be null."

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Decoding message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/protobuf/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/google/firebase/inappmessaging/model/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 6
    sget-object v1, Lcom/google/firebase/inappmessaging/model/k$b;->a:[I

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/d0;->b0()Lcom/google/firebase/inappmessaging/d0$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 7
    new-instance p0, Lcom/google/firebase/inappmessaging/model/k$a;

    new-instance v0, Lcom/google/firebase/inappmessaging/model/e;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/inappmessaging/model/e;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p1, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {p0, v0, p1, p4}, Lcom/google/firebase/inappmessaging/model/k$a;-><init>(Lcom/google/firebase/inappmessaging/model/e;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/d0;->Y()Lcom/google/firebase/inappmessaging/c0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/k;->f(Lcom/google/firebase/inappmessaging/c0;)Lcom/google/firebase/inappmessaging/model/f$b;

    move-result-object p0

    invoke-virtual {p0, v0, p4}, Lcom/google/firebase/inappmessaging/model/f$b;->a(Lcom/google/firebase/inappmessaging/model/e;Ljava/util/Map;)Lcom/google/firebase/inappmessaging/model/f;

    move-result-object p0

    return-object p0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/d0;->c0()Lcom/google/firebase/inappmessaging/f0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/k;->h(Lcom/google/firebase/inappmessaging/f0;)Lcom/google/firebase/inappmessaging/model/j$b;

    move-result-object p0

    invoke-virtual {p0, v0, p4}, Lcom/google/firebase/inappmessaging/model/j$b;->a(Lcom/google/firebase/inappmessaging/model/e;Ljava/util/Map;)Lcom/google/firebase/inappmessaging/model/j;

    move-result-object p0

    return-object p0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/d0;->a0()Lcom/google/firebase/inappmessaging/e0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/k;->g(Lcom/google/firebase/inappmessaging/e0;)Lcom/google/firebase/inappmessaging/model/h$b;

    move-result-object p0

    invoke-virtual {p0, v0, p4}, Lcom/google/firebase/inappmessaging/model/h$b;->a(Lcom/google/firebase/inappmessaging/model/e;Ljava/util/Map;)Lcom/google/firebase/inappmessaging/model/h;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/d0;->X()Lcom/google/firebase/inappmessaging/a0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/k;->e(Lcom/google/firebase/inappmessaging/a0;)Lcom/google/firebase/inappmessaging/model/c$b;

    move-result-object p0

    invoke-virtual {p0, v0, p4}, Lcom/google/firebase/inappmessaging/model/c$b;->a(Lcom/google/firebase/inappmessaging/model/e;Ljava/util/Map;)Lcom/google/firebase/inappmessaging/model/c;

    move-result-object p0

    return-object p0
.end method

.method private static d(Lcom/google/firebase/inappmessaging/g0;)Lcom/google/firebase/inappmessaging/model/n;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/n;->a()Lcom/google/firebase/inappmessaging/model/n$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/g0;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/g0;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/n$b;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/n$b;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/g0;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/g0;->Z()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/n$b;->c(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/n$b;

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/n$b;->a()Lcom/google/firebase/inappmessaging/model/n;

    move-result-object p0

    return-object p0
.end method

.method private static e(Lcom/google/firebase/inappmessaging/a0;)Lcom/google/firebase/inappmessaging/model/c$b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/c;->d()Lcom/google/firebase/inappmessaging/model/c$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/c$b;->c(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/c$b;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->b0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/g;->a()Lcom/google/firebase/inappmessaging/model/g$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->b0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/g$a;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/g$a;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/g$a;->a()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/c$b;->e(Lcom/google/firebase/inappmessaging/model/g;)Lcom/google/firebase/inappmessaging/model/c$b;

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->d0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->X()Lcom/google/firebase/inappmessaging/z;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/k;->a(Lcom/google/firebase/inappmessaging/z;)Lcom/google/firebase/inappmessaging/model/a$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/a$b;->a()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/c$b;->b(Lcom/google/firebase/inappmessaging/model/a;)Lcom/google/firebase/inappmessaging/model/c$b;

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->e0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->Z()Lcom/google/firebase/inappmessaging/g0;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/k;->d(Lcom/google/firebase/inappmessaging/g0;)Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/c$b;->d(Lcom/google/firebase/inappmessaging/model/n;)Lcom/google/firebase/inappmessaging/model/c$b;

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->f0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/a0;->c0()Lcom/google/firebase/inappmessaging/g0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/k;->d(Lcom/google/firebase/inappmessaging/g0;)Lcom/google/firebase/inappmessaging/model/n;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/c$b;->f(Lcom/google/firebase/inappmessaging/model/n;)Lcom/google/firebase/inappmessaging/model/c$b;

    :cond_4
    return-object v0
.end method

.method private static f(Lcom/google/firebase/inappmessaging/c0;)Lcom/google/firebase/inappmessaging/model/f$b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/f;->d()Lcom/google/firebase/inappmessaging/model/f$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->m0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->g0()Lcom/google/firebase/inappmessaging/g0;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/k;->d(Lcom/google/firebase/inappmessaging/g0;)Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/f$b;->h(Lcom/google/firebase/inappmessaging/model/n;)Lcom/google/firebase/inappmessaging/model/f$b;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->h0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->Y()Lcom/google/firebase/inappmessaging/g0;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/k;->d(Lcom/google/firebase/inappmessaging/g0;)Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/f$b;->c(Lcom/google/firebase/inappmessaging/model/n;)Lcom/google/firebase/inappmessaging/model/f$b;

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->X()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/f$b;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/f$b;

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->i0()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->j0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->c0()Lcom/google/firebase/inappmessaging/z;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->d0()Lcom/google/firebase/inappmessaging/b0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/inappmessaging/model/k;->b(Lcom/google/firebase/inappmessaging/z;Lcom/google/firebase/inappmessaging/b0;)Lcom/google/firebase/inappmessaging/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/f$b;->f(Lcom/google/firebase/inappmessaging/model/a;)Lcom/google/firebase/inappmessaging/model/f$b;

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->k0()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->l0()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    :cond_5
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->e0()Lcom/google/firebase/inappmessaging/z;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->f0()Lcom/google/firebase/inappmessaging/b0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/inappmessaging/model/k;->b(Lcom/google/firebase/inappmessaging/z;Lcom/google/firebase/inappmessaging/b0;)Lcom/google/firebase/inappmessaging/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/f$b;->g(Lcom/google/firebase/inappmessaging/model/a;)Lcom/google/firebase/inappmessaging/model/f$b;

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->b0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 13
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/g;->a()Lcom/google/firebase/inappmessaging/model/g$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->b0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/g$a;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/g$a;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/g$a;->a()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/f$b;->e(Lcom/google/firebase/inappmessaging/model/g;)Lcom/google/firebase/inappmessaging/model/f$b;

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->a0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 16
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/g;->a()Lcom/google/firebase/inappmessaging/model/g$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/c0;->a0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/firebase/inappmessaging/model/g$a;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/g$a;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/g$a;->a()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object p0

    .line 17
    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/f$b;->d(Lcom/google/firebase/inappmessaging/model/g;)Lcom/google/firebase/inappmessaging/model/f$b;

    :cond_8
    return-object v0
.end method

.method private static g(Lcom/google/firebase/inappmessaging/e0;)Lcom/google/firebase/inappmessaging/model/h$b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/h;->d()Lcom/google/firebase/inappmessaging/model/h$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/e0;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/g;->a()Lcom/google/firebase/inappmessaging/model/g$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/e0;->Z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/g$a;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/g$a;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/g$a;->a()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/h$b;->c(Lcom/google/firebase/inappmessaging/model/g;)Lcom/google/firebase/inappmessaging/model/h$b;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/e0;->a0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/e0;->X()Lcom/google/firebase/inappmessaging/z;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/k;->a(Lcom/google/firebase/inappmessaging/z;)Lcom/google/firebase/inappmessaging/model/a$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/a$b;->a()Lcom/google/firebase/inappmessaging/model/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/h$b;->b(Lcom/google/firebase/inappmessaging/model/a;)Lcom/google/firebase/inappmessaging/model/h$b;

    :cond_1
    return-object v0
.end method

.method private static h(Lcom/google/firebase/inappmessaging/f0;)Lcom/google/firebase/inappmessaging/model/j$b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/j;->d()Lcom/google/firebase/inappmessaging/model/j$b;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/j$b;->c(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/j$b;

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/g;->a()Lcom/google/firebase/inappmessaging/model/g$a;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/model/g$a;->b(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/g$a;

    invoke-virtual {v1}, Lcom/google/firebase/inappmessaging/model/g$a;->a()Lcom/google/firebase/inappmessaging/model/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/j$b;->e(Lcom/google/firebase/inappmessaging/model/g;)Lcom/google/firebase/inappmessaging/model/j$b;

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->e0()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->X()Lcom/google/firebase/inappmessaging/z;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->Y()Lcom/google/firebase/inappmessaging/b0;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/inappmessaging/model/k;->b(Lcom/google/firebase/inappmessaging/z;Lcom/google/firebase/inappmessaging/b0;)Lcom/google/firebase/inappmessaging/model/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/j$b;->b(Lcom/google/firebase/inappmessaging/model/a;)Lcom/google/firebase/inappmessaging/model/j$b;

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->f0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->a0()Lcom/google/firebase/inappmessaging/g0;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/inappmessaging/model/k;->d(Lcom/google/firebase/inappmessaging/g0;)Lcom/google/firebase/inappmessaging/model/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/model/j$b;->d(Lcom/google/firebase/inappmessaging/model/n;)Lcom/google/firebase/inappmessaging/model/j$b;

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->g0()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/f0;->d0()Lcom/google/firebase/inappmessaging/g0;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/model/k;->d(Lcom/google/firebase/inappmessaging/g0;)Lcom/google/firebase/inappmessaging/model/n;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/firebase/inappmessaging/model/j$b;->f(Lcom/google/firebase/inappmessaging/model/n;)Lcom/google/firebase/inappmessaging/model/j$b;

    :cond_4
    return-object v0
.end method
