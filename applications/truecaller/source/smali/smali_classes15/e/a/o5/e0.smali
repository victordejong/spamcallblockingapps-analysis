.class public final Le/a/o5/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/q1;


# instance fields
.field public final a:Le/a/p5/g;

.field public final b:Le/a/e4/p;


# direct methods
.method public constructor <init>(Le/a/p5/g;Le/a/e4/p;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceInfoUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o5/e0;->a:Le/a/p5/g;

    iput-object p2, p0, Le/a/o5/e0;->b:Le/a/e4/p;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/a/o5/r1;
    .locals 7

    const-string v0, "rawInput"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    move v0, v2

    .line 2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2a

    if-eq v4, v5, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v4, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_3
    if-eqz v0, :cond_5

    goto/16 :goto_8

    :cond_5
    const-string v0, "*#*#"

    const/4 v4, 0x2

    .line 3
    invoke-static {p1, v0, v2, v4}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    const-string v5, "#*#*"

    invoke-static {p1, v5, v2, v4}, Ls1/f0/r;->m(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v5

    and-int/2addr v0, v5

    if-eqz v0, :cond_6

    .line 4
    new-instance v3, Le/a/o5/r1$c;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0, p1}, Le/a/o5/r1$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    const-string v0, "*"

    .line 5
    invoke-static {p1, v0, v2, v4}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    const-string v5, "#"

    invoke-static {p1, v5, v2, v4}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    or-int/2addr v0, v6

    invoke-static {p1, v5, v2, v4}, Ls1/f0/r;->m(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v4

    and-int/2addr v0, v4

    if-eqz v0, :cond_f

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v4, 0x2607f04

    if-eq v0, v4, :cond_8

    const v1, 0x2607f23

    if-eq v0, v1, :cond_7

    goto/16 :goto_8

    :cond_7
    const-string v0, "*#07#"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    sget-object v3, Le/a/o5/r1$b;->a:Le/a/o5/r1$b;

    goto/16 :goto_8

    :cond_8
    const-string v0, "*#06#"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 9
    iget-object p1, p0, Le/a/o5/e0;->a:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->n()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "MEID"

    goto :goto_4

    :cond_9
    const-string p1, "IMEI"

    .line 10
    :goto_4
    iget-object v0, p0, Le/a/o5/e0;->b:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->d()Ljava/util/List;

    move-result-object v0

    const-string v3, "multiSimManager.allSimInfos"

    invoke-static {v0, v3}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 12
    check-cast v4, Lcom/truecaller/multisim/SimInfo;

    .line 13
    iget-object v4, v4, Lcom/truecaller/multisim/SimInfo;->g:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 14
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 15
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    move v5, v1

    goto :goto_7

    :cond_d
    move v5, v2

    :goto_7
    if-eqz v5, :cond_c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    new-array v1, v2, [Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 19
    new-instance v3, Le/a/o5/r1$a;

    invoke-direct {v3, p1, v0}, Le/a/o5/r1$a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_f
    :goto_8
    return-object v3
.end method
