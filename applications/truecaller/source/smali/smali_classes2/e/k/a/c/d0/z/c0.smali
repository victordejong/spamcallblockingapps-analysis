.class public Le/k/a/c/d0/z/c0;
.super Le/k/a/c/o;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/z/c0$d;,
        Le/k/a/c/d0/z/c0$c;,
        Le/k/a/c/d0/z/c0$b;,
        Le/k/a/c/d0/z/c0$a;,
        Le/k/a/c/d0/z/c0$e;
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Le/k/a/c/d0/z/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/d0/z/o<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/o;-><init>()V

    .line 2
    iput p1, p0, Le/k/a/c/d0/z/c0;->a:I

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/k/a/c/d0/z/c0;->c:Le/k/a/c/d0/z/o;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;Le/k/a/c/d0/z/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/d0/z/o<",
            "*>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Le/k/a/c/o;-><init>()V

    .line 6
    iput p1, p0, Le/k/a/c/d0/z/c0;->a:I

    .line 7
    iput-object p2, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    .line 8
    iput-object p3, p0, Le/k/a/c/d0/z/c0;->c:Le/k/a/c/d0/z/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/c0;->b(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    return-object v2

    .line 2
    :cond_1
    iget-object v2, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    invoke-static {v2}, Le/k/a/c/n0/g;->w(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 4
    sget-object v3, Le/k/a/c/h;->z:Le/k/a/c/h;

    invoke-virtual {v2, v3}, Le/k/a/c/f;->y(Le/k/a/c/h;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    .line 5
    :cond_2
    iget-object v2, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "not a valid representation"

    invoke-virtual {p2, v2, p1, v3, v1}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    :catch_0
    move-exception v2

    .line 6
    iget-object v3, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    .line 8
    invoke-static {v2}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "not a valid representation, problem: (%s) %s"

    .line 9
    invoke-virtual {p2, v3, p1, v1, v4}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public b(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/c/d0/z/c0;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error: unknown key type "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    :try_start_0
    iget-object v0, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 4
    iget-object v0, v0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 5
    iget-object v0, v0, Le/k/a/c/c0/a;->k:Le/k/a/b/a;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v2, Le/k/a/b/a0/c;

    const/16 v3, 0x1f4

    .line 8
    invoke-direct {v2, v1, v3}, Le/k/a/b/a0/c;-><init>(Le/k/a/b/a0/a;I)V

    .line 9
    invoke-virtual {v0, p1, v2}, Le/k/a/b/a;->d(Ljava/lang/String;Le/k/a/b/a0/c;)V

    .line 10
    invoke-virtual {v2}, Le/k/a/b/a0/c;->q()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {p0, p2, p1, v0}, Le/k/a/c/d0/z/c0;->c(Le/k/a/c/g;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    throw v1

    .line 12
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Le/k/a/c/d0/z/c0;->c:Le/k/a/c/d0/z/o;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/z/o;->m0(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception v0

    .line 13
    invoke-virtual {p0, p2, p1, v0}, Le/k/a/c/d0/z/c0;->c(Le/k/a/c/g;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    throw v1

    .line 14
    :pswitch_2
    :try_start_2
    invoke-virtual {p2}, Le/k/a/c/g;->i()Le/k/a/c/m0/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/k/a/c/m0/o;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 15
    :catch_2
    iget-object v0, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "unable to parse key as Class"

    invoke-virtual {p2, v0, p1, v3, v2}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 16
    :pswitch_3
    :try_start_3
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    .line 17
    invoke-virtual {p0, p2, p1, v0}, Le/k/a/c/d0/z/c0;->c(Le/k/a/c/g;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    throw v1

    .line 18
    :pswitch_4
    :try_start_4
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    return-object p1

    :catch_4
    move-exception v0

    .line 19
    invoke-virtual {p0, p2, p1, v0}, Le/k/a/c/d0/z/c0;->c(Le/k/a/c/g;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    throw v1

    .line 20
    :pswitch_5
    :try_start_5
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    return-object p1

    :catch_5
    move-exception v0

    .line 21
    invoke-virtual {p0, p2, p1, v0}, Le/k/a/c/d0/z/c0;->c(Le/k/a/c/g;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    throw v1

    .line 22
    :pswitch_6
    invoke-virtual {p2, p1}, Le/k/a/c/g;->V(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 23
    invoke-virtual {p2}, Le/k/a/c/g;->B()Ljava/util/TimeZone;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p2

    .line 25
    :pswitch_7
    invoke-virtual {p2, p1}, Le/k/a/c/g;->V(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_8
    :try_start_6
    iget-object v0, p0, Le/k/a/c/d0/z/c0;->c:Le/k/a/c/d0/z/o;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/d0/z/o;->m0(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6

    return-object p1

    :catch_6
    move-exception v0

    .line 27
    invoke-virtual {p0, p2, p1, v0}, Le/k/a/c/d0/z/c0;->c(Le/k/a/c/g;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;

    throw v1

    .line 28
    :pswitch_9
    invoke-static {p1}, Le/k/a/b/w/f;->e(Ljava/lang/String;)D

    move-result-wide p1

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 30
    :pswitch_a
    invoke-static {p1}, Le/k/a/b/w/f;->e(Ljava/lang/String;)D

    move-result-wide p1

    double-to-float p1, p1

    .line 31
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 32
    :pswitch_b
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    .line 33
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 34
    :pswitch_c
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 36
    :pswitch_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "can only convert 1-character Strings"

    invoke-virtual {p2, v0, p1, v3, v2}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 39
    :pswitch_e
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, -0x8000

    if-lt v0, v3, :cond_1

    const/16 v3, 0x7fff

    if-gt v0, v3, :cond_1

    int-to-short p1, v0

    .line 40
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 41
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "overflow, value cannot be represented as 16-bit value"

    invoke-virtual {p2, v0, p1, v3, v2}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 42
    :pswitch_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, -0x80

    if-lt v0, v3, :cond_2

    const/16 v3, 0xff

    if-gt v0, v3, :cond_2

    int-to-byte p1, v0

    .line 43
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 44
    :cond_2
    iget-object v0, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "overflow, value cannot be represented as 8-bit value"

    invoke-virtual {p2, v0, p1, v3, v2}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    :pswitch_10
    const-string v0, "true"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    const-string v0, "false"

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 49
    :cond_4
    iget-object v0, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "value not \'true\' or \'false\'"

    invoke-virtual {p2, v0, p1, v3, v2}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Le/k/a/c/g;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/c0;->b:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string p3, "problem: %s"

    .line 3
    invoke-virtual {p1, v0, p2, p3, v1}, Le/k/a/c/g;->L(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
