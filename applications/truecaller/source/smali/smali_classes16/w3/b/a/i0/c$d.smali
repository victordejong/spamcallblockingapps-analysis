.class public Lw3/b/a/i0/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/i0/l;
.implements Lw3/b/a/i0/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/i0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Lw3/b/a/d;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lw3/b/a/d;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/i0/c$d;->a:Lw3/b/a/d;

    const/16 p1, 0x12

    if-le p3, p1, :cond_0

    move p3, p1

    .line 3
    :cond_0
    iput p2, p0, Lw3/b/a/i0/c$d;->b:I

    .line 4
    iput p3, p0, Lw3/b/a/i0/c$d;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/i0/c$d;->c:I

    return v0
.end method

.method public b(Ljava/lang/Appendable;JLw3/b/a/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/c$d;->a:Lw3/b/a/d;

    invoke-virtual {v0, p4}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p4

    .line 2
    iget v0, p0, Lw3/b/a/i0/c$d;->b:I

    .line 3
    :try_start_0
    invoke-virtual {p4, p2, p3}, Lw3/b/a/c;->z(J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    const/16 v2, 0x30

    if-nez v1, :cond_1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 4
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p4}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object p4

    invoke-virtual {p4}, Lw3/b/a/j;->g()J

    move-result-wide v3

    .line 6
    iget p4, p0, Lw3/b/a/i0/c$d;->c:I

    :goto_1
    packed-switch p4, :pswitch_data_0

    const-wide/16 v5, 0x1

    goto :goto_2

    :pswitch_0
    const-wide v5, 0xde0b6b3a7640000L

    goto :goto_2

    :pswitch_1
    const-wide v5, 0x16345785d8a0000L

    goto :goto_2

    :pswitch_2
    const-wide v5, 0x2386f26fc10000L

    goto :goto_2

    :pswitch_3
    const-wide v5, 0x38d7ea4c68000L

    goto :goto_2

    :pswitch_4
    const-wide v5, 0x5af3107a4000L

    goto :goto_2

    :pswitch_5
    const-wide v5, 0x9184e72a000L

    goto :goto_2

    :pswitch_6
    const-wide v5, 0xe8d4a51000L

    goto :goto_2

    :pswitch_7
    const-wide v5, 0x174876e800L

    goto :goto_2

    :pswitch_8
    const-wide v5, 0x2540be400L

    goto :goto_2

    :pswitch_9
    const-wide/32 v5, 0x3b9aca00

    goto :goto_2

    :pswitch_a
    const-wide/32 v5, 0x5f5e100

    goto :goto_2

    :pswitch_b
    const-wide/32 v5, 0x989680

    goto :goto_2

    :pswitch_c
    const-wide/32 v5, 0xf4240

    goto :goto_2

    :pswitch_d
    const-wide/32 v5, 0x186a0

    goto :goto_2

    :pswitch_e
    const-wide/16 v5, 0x2710

    goto :goto_2

    :pswitch_f
    const-wide/16 v5, 0x3e8

    goto :goto_2

    :pswitch_10
    const-wide/16 v5, 0x64

    goto :goto_2

    :pswitch_11
    const-wide/16 v5, 0xa

    :goto_2
    mul-long v7, v3, v5

    .line 7
    div-long/2addr v7, v5

    cmp-long v1, v7, v3

    if-nez v1, :cond_8

    const/4 v1, 0x2

    new-array v1, v1, [J

    mul-long/2addr p2, v5

    .line 8
    div-long/2addr p2, v3

    const/4 v3, 0x0

    aput-wide p2, v1, v3

    int-to-long p2, p4

    const/4 p4, 0x1

    aput-wide p2, v1, p4

    .line 9
    aget-wide p2, v1, v3

    .line 10
    aget-wide v4, v1, p4

    long-to-int v1, v4

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p2

    cmp-long v4, v4, p2

    if-nez v4, :cond_2

    long-to-int p2, p2

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 12
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    :goto_4
    if-ge p3, v1, :cond_3

    .line 14
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_3
    if-ge v0, v1, :cond_7

    :goto_5
    if-ge v0, v1, :cond_5

    if-le p3, p4, :cond_5

    add-int/lit8 v4, p3, -0x1

    .line 15
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    .line 16
    :cond_5
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p3, p4, :cond_7

    :goto_7
    if-ge v3, p3, :cond_6

    .line 17
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-interface {p1, p4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_6
    return-void

    .line 18
    :cond_7
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    :cond_8
    add-int/lit8 p4, p4, -0x1

    goto/16 :goto_1

    .line 19
    :catch_0
    invoke-static {p1, v0}, Lw3/b/a/i0/c;->q(Ljava/lang/Appendable;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
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

.method public c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I
    .locals 11

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/c$d;->a:Lw3/b/a/d;

    .line 2
    iget-object v1, p1, Lw3/b/a/i0/e;->a:Lw3/b/a/a;

    .line 3
    invoke-virtual {v0, v1}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object v0

    .line 4
    iget v1, p0, Lw3/b/a/i0/c$d;->c:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-wide/16 v2, 0x0

    .line 5
    invoke-virtual {v0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v4

    invoke-virtual {v4}, Lw3/b/a/j;->g()J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_1

    add-int v9, p3, v8

    .line 6
    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-lt v9, v10, :cond_1

    const/16 v10, 0x39

    if-le v9, v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 7
    div-long/2addr v4, v6

    add-int/lit8 v9, v9, -0x30

    int-to-long v9, v9

    mul-long/2addr v9, v4

    add-long/2addr v2, v9

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    div-long/2addr v2, v6

    if-nez v8, :cond_2

    not-int p1, p3

    return p1

    :cond_2
    const-wide/32 v4, 0x7fffffff

    cmp-long p2, v2, v4

    if-lez p2, :cond_3

    not-int p1, p3

    return p1

    .line 9
    :cond_3
    new-instance p2, Lw3/b/a/h0/k;

    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->x:Lw3/b/a/d;

    sget-object v4, Lw3/b/a/h0/i;->a:Lw3/b/a/j;

    invoke-virtual {v0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    invoke-direct {p2, v1, v4, v0}, Lw3/b/a/h0/k;-><init>(Lw3/b/a/d;Lw3/b/a/j;Lw3/b/a/j;)V

    long-to-int v0, v2

    .line 10
    invoke-virtual {p1}, Lw3/b/a/i0/e;->c()Lw3/b/a/i0/e$a;

    move-result-object p1

    .line 11
    iput-object p2, p1, Lw3/b/a/i0/e$a;->a:Lw3/b/a/c;

    .line 12
    iput v0, p1, Lw3/b/a/i0/e$a;->b:I

    const/4 p2, 0x0

    .line 13
    iput-object p2, p1, Lw3/b/a/i0/e$a;->c:Ljava/lang/String;

    .line 14
    iput-object p2, p1, Lw3/b/a/i0/e$a;->d:Ljava/util/Locale;

    add-int/2addr p3, v8

    return p3
.end method

.method public d(Ljava/lang/Appendable;Lw3/b/a/b0;Ljava/util/Locale;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lw3/b/a/b0;->l()Lw3/b/a/a;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p2, v0, v1}, Lw3/b/a/a;->J(Lw3/b/a/b0;J)J

    move-result-wide v0

    .line 2
    invoke-interface {p2}, Lw3/b/a/b0;->l()Lw3/b/a/a;

    move-result-object p2

    invoke-virtual {p0, p1, v0, v1, p2}, Lw3/b/a/i0/c$d;->b(Ljava/lang/Appendable;JLw3/b/a/a;)V

    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/i0/c$d;->c:I

    return v0
.end method

.method public f(Ljava/lang/Appendable;JLw3/b/a/a;ILw3/b/a/g;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lw3/b/a/i0/c$d;->b(Ljava/lang/Appendable;JLw3/b/a/a;)V

    return-void
.end method
