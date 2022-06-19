.class public final Lcom/hiya/client/callerid/dao/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/client/callerid/prefs/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/client/callerid/prefs/e;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/a;->a:Lcom/hiya/client/callerid/prefs/e;

    return-void
.end method


# virtual methods
.method public final a(Lm/x;)V
    .locals 11

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "X-Hiya-Image-Cache-Count-Limit"

    .line 1
    invoke-virtual {p1, v0}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "X-Hiya-Image-Cache-Last-Access-Limit"

    .line 2
    invoke-virtual {p1, v2}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "X-Hiya-Background-Cache-Count-Limit"

    .line 3
    invoke-virtual {p1, v3}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const-string v4, "X-Hiya-Background-Cache-Last-Access-Limit"

    .line 4
    invoke-virtual {p1, v4}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    move-object v1, p1

    .line 5
    :cond_3
    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_7

    .line 6
    invoke-static {v0}, Lkotlin/c0/m;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v6

    .line 7
    :goto_4
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/prefs/Cache;->o(I)V

    goto :goto_5

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v6

    .line 8
    :cond_7
    :goto_5
    invoke-static {v2}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v7, 0x3e8

    if-nez p1, :cond_b

    .line 9
    invoke-static {v2}, Lkotlin/c0/m;->k(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    move-object p1, v6

    .line 10
    :goto_7
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v0

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    mul-long v9, v9, v7

    invoke-virtual {v0, v9, v10}, Lcom/hiya/client/callerid/prefs/Cache;->p(J)V

    goto :goto_8

    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v6

    .line 11
    :cond_b
    :goto_8
    invoke-static {v3}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 12
    invoke-static {v3}, Lkotlin/c0/m;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    move-object p1, v6

    .line 13
    :goto_a
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v0

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/prefs/Cache;->m(I)V

    goto :goto_b

    :cond_e
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v6

    .line 14
    :cond_f
    :goto_b
    invoke-static {v1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 15
    invoke-static {v1}, Lkotlin/c0/m;->k(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_10

    goto :goto_c

    :cond_10
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_11

    goto :goto_d

    :cond_11
    move-object p1, v6

    .line 16
    :goto_d
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/a;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v0

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    mul-long v1, v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/hiya/client/callerid/prefs/Cache;->n(J)V

    goto :goto_e

    :cond_12
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v6

    :cond_13
    :goto_e
    return-void
.end method
