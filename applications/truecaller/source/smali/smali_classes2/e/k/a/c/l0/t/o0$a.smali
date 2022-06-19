.class public Le/k/a/c/l0/t/o0$a;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/t/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;Z)V

    .line 2
    iput p1, p0, Le/k/a/c/l0/t/o0$a;->c:I

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/k/a/c/l0/t/o0$a;->c:I

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3
    :pswitch_0
    iget-object p3, p3, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 4
    iget-object p3, p3, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 5
    iget-object p3, p3, Le/k/a/c/c0/a;->k:Le/k/a/b/a;

    .line 6
    check-cast p1, [B

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p3, p1, v0}, Le/k/a/b/a;->g([BZ)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9
    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 10
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :pswitch_2
    sget-object v0, Le/k/a/c/z;->q:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 14
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .line 15
    sget-object v0, Le/k/a/c/z;->s:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_0
    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :pswitch_3
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :pswitch_4
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 21
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object p1, Le/k/a/c/z;->m:Le/k/a/c/z;

    invoke-virtual {p3, p1}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 23
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_2
    invoke-virtual {p3}, Le/k/a/c/a0;->r()Ljava/text/DateFormat;

    move-result-object p1

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :pswitch_5
    check-cast p1, Ljava/util/Date;

    .line 26
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Le/k/a/c/z;->m:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    goto :goto_1

    .line 29
    :cond_3
    invoke-virtual {p3}, Le/k/a/c/a0;->r()Ljava/text/DateFormat;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->B0(Ljava/lang/String;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
