.class public abstract Le/q/e/a/c;
.super Le/q/e/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/q/e/b/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Le/q/e/b/a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/util/List;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/HashMap<",
            "TT;",
            "Le/q/e/b/a$c<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Le/q/e/a/c;->f(Ljava/util/HashMap;)V

    return-void
.end method

.method public e(Ljava/lang/String;JLjava/lang/String;)I
    .locals 8

    .line 1
    invoke-virtual {p0, p4}, Le/q/e/b/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/p5/s0/g;->u(Ljava/lang/String;)F

    move-result v0

    const-string v1, "GRM_UPI"

    .line 2
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v2, 0x36ee80

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    const-string p4, "acc_num"

    .line 3
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 5
    div-long/2addr p1, v2

    long-to-float p1, p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    return v4

    :cond_0
    return v5

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    sparse-switch v6, :sswitch_data_0

    :goto_0
    move v4, v1

    goto :goto_1

    :sswitch_0
    const-string v4, "due_amt"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_1
    const-string v4, "alert_id"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_2
    const-string v4, "vendor"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_3
    const-string v6, "to_loc"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :sswitch_4
    const-string v4, "ref_id"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v4, v7

    goto :goto_1

    :sswitch_5
    const-string v4, "pnr_id"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x1

    goto :goto_1

    :sswitch_6
    const-string v4, "booking_id"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v4, v5

    :cond_8
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string p1, "GRM_BILL"

    .line 7
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    .line 8
    :cond_9
    :pswitch_1
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 9
    div-long/2addr p1, v2

    long-to-float p1, p1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_a

    return v7

    :cond_a
    :goto_2
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x51ee213f -> :sswitch_6
        -0x3a9ddcfa -> :sswitch_5
        -0x37b873b9 -> :sswitch_4
        -0x33c4d484 -> :sswitch_3
        -0x30e15ab8 -> :sswitch_2
        0x60491ade -> :sswitch_1
        0x775214fd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public abstract f(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "TT;",
            "Le/q/e/b/a$c<",
            "TT;>;>;)V"
        }
    .end annotation
.end method
