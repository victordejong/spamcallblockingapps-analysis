.class public Lw3/b/a/i0/c$k;
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
    name = "k"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw3/b/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I


# direct methods
.method public constructor <init>(ILjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lw3/b/a/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lw3/b/a/i0/c$k;->b:I

    .line 3
    iput-object p2, p0, Lw3/b/a/i0/c$k;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget v0, p0, Lw3/b/a/i0/c$k;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method public c(Lw3/b/a/i0/e;Ljava/lang/CharSequence;I)I
    .locals 7

    .line 1
    iget-object v0, p0, Lw3/b/a/i0/c$k;->a:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lw3/b/a/e;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    .line 3
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    sget-object v3, Lw3/b/a/g;->b:Lw3/b/a/g;

    const-string v4, "UT"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "UTC"

    .line 5
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "GMT"

    .line 6
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "America/New_York"

    const-string v4, "EST"

    .line 7
    invoke-static {v2, v4, v3}, Lw3/b/a/e;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "EDT"

    .line 8
    invoke-static {v2, v4, v3}, Lw3/b/a/e;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "America/Chicago"

    const-string v4, "CST"

    .line 9
    invoke-static {v2, v4, v3}, Lw3/b/a/e;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CDT"

    .line 10
    invoke-static {v2, v4, v3}, Lw3/b/a/e;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "America/Denver"

    const-string v4, "MST"

    .line 11
    invoke-static {v2, v4, v3}, Lw3/b/a/e;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MDT"

    .line 12
    invoke-static {v2, v4, v3}, Lw3/b/a/e;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "America/Los_Angeles"

    const-string v4, "PST"

    .line 13
    invoke-static {v2, v4, v3}, Lw3/b/a/e;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "PDT"

    .line 14
    invoke-static {v2, v4, v3}, Lw3/b/a/e;->e(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 19
    invoke-static {p2, p3, v4}, Lw3/b/a/i0/c;->t(Ljava/lang/CharSequence;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_2

    :cond_3
    move-object v3, v4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    .line 21
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lw3/b/a/g;

    .line 22
    iput-object v1, p1, Lw3/b/a/i0/e;->m:Ljava/lang/Object;

    .line 23
    iput-object p2, p1, Lw3/b/a/i0/e;->g:Lw3/b/a/g;

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p3

    return p1

    :cond_5
    not-int p1, p3

    return p1
.end method

.method public d(Ljava/lang/Appendable;Lw3/b/a/b0;Ljava/util/Locale;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public e()I
    .locals 2

    .line 1
    iget v0, p0, Lw3/b/a/i0/c$k;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method public f(Ljava/lang/Appendable;JLw3/b/a/a;ILw3/b/a/g;Ljava/util/Locale;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long p4, p5

    sub-long/2addr p2, p4

    const-string p4, ""

    if-nez p6, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    iget p5, p0, Lw3/b/a/i0/c$k;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p5, :cond_8

    if-eq p5, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    if-nez p7, :cond_2

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p7

    .line 3
    :cond_2
    invoke-virtual {p6, p2, p3}, Lw3/b/a/g;->k(J)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    .line 4
    iget-object p2, p6, Lw3/b/a/g;->a:Ljava/lang/String;

    :goto_0
    move-object p4, p2

    goto/16 :goto_5

    .line 5
    :cond_3
    invoke-static {}, Lw3/b/a/g;->l()Lw3/b/a/j0/h;

    move-result-object p5

    .line 6
    instance-of v3, p5, Lw3/b/a/j0/f;

    if-eqz v3, :cond_6

    .line 7
    check-cast p5, Lw3/b/a/j0/f;

    iget-object v3, p6, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p6, p2, p3}, Lw3/b/a/g;->m(J)I

    move-result v4

    invoke-virtual {p6, p2, p3}, Lw3/b/a/g;->p(J)I

    move-result v5

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    .line 9
    :goto_1
    invoke-virtual {p5, p7, v3, p4, v2}, Lw3/b/a/j0/f;->e(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    aget-object v0, p4, v1

    goto :goto_2

    .line 11
    :cond_6
    iget-object v0, p6, Lw3/b/a/g;->a:Ljava/lang/String;

    invoke-interface {p5, p7, v0, p4}, Lw3/b/a/j0/h;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_7

    :goto_3
    move-object p4, v0

    goto :goto_5

    .line 12
    :cond_7
    invoke-virtual {p6, p2, p3}, Lw3/b/a/g;->m(J)I

    move-result p2

    invoke-static {p2}, Lw3/b/a/g;->t(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_8
    if-nez p7, :cond_9

    .line 13
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p7

    .line 14
    :cond_9
    invoke-virtual {p6, p2, p3}, Lw3/b/a/g;->k(J)Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_a

    .line 15
    iget-object p2, p6, Lw3/b/a/g;->a:Ljava/lang/String;

    goto :goto_0

    .line 16
    :cond_a
    invoke-static {}, Lw3/b/a/g;->l()Lw3/b/a/j0/h;

    move-result-object p5

    .line 17
    instance-of v3, p5, Lw3/b/a/j0/f;

    if-eqz v3, :cond_d

    .line 18
    check-cast p5, Lw3/b/a/j0/f;

    iget-object v3, p6, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 19
    invoke-virtual {p6, p2, p3}, Lw3/b/a/g;->m(J)I

    move-result v4

    invoke-virtual {p6, p2, p3}, Lw3/b/a/g;->p(J)I

    move-result v5

    if-ne v4, v5, :cond_b

    move v1, v2

    .line 20
    :cond_b
    invoke-virtual {p5, p7, v3, p4, v1}, Lw3/b/a/j0/f;->e(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_c

    goto :goto_4

    .line 21
    :cond_c
    aget-object v0, p4, v2

    goto :goto_4

    .line 22
    :cond_d
    iget-object v0, p6, Lw3/b/a/g;->a:Ljava/lang/String;

    invoke-interface {p5, p7, v0, p4}, Lw3/b/a/j0/h;->b(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_e

    goto :goto_3

    .line 23
    :cond_e
    invoke-virtual {p6, p2, p3}, Lw3/b/a/g;->m(J)I

    move-result p2

    invoke-static {p2}, Lw3/b/a/g;->t(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 24
    :goto_5
    invoke-interface {p1, p4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method
