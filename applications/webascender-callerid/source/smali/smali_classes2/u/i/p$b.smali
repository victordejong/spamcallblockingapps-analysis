.class final Lu/i/p$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field static final a:Lu/i/l;

.field static final b:Lu/i/l;

.field static final c:Lu/i/l;

.field static final d:Lu/i/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu/i/l;

    const/16 v1, 0xb

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/p$b;->a:Lu/i/l;

    .line 2
    new-instance v0, Lu/i/l;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/p$b;->b:Lu/i/l;

    .line 3
    new-instance v0, Lu/i/l;

    const/16 v1, 0x8

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/p$b;->c:Lu/i/l;

    .line 4
    new-instance v0, Lu/i/l;

    const/16 v1, 0xc

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/p$b;->d:Lu/i/l;

    return-void
.end method

.method static a(Lu/i/h;Lu/j/c$a;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-static {p0}, Lu/i/l;->b(Lu/i/h;)Lu/i/l;

    move-result-object v5

    .line 2
    iget-byte v6, v5, Lu/i/l;->a:B

    if-nez v6, :cond_4

    if-eqz v2, :cond_3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1, v2, v3, v4}, Lu/j/c$a;->b(Ljava/lang/String;Ljava/lang/String;Lu/f;)Lu/j/c$a;

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_3

    .line 4
    sget-object p0, Lu/i/p;->b:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v4, :cond_3

    const-string p0, "sa"

    .line 5
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "ca"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "ma"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 6
    :cond_2
    invoke-virtual {p1, v2, v4}, Lu/j/c$a;->c(Ljava/lang/String;Lu/f;)Lu/j/c$a;

    :cond_3
    :goto_1
    return-void

    .line 7
    :cond_4
    sget-object v6, Lu/i/p$b;->a:Lu/i/l;

    invoke-virtual {v5, v6}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 8
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lu/i/h;->l(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_5
    sget-object v6, Lu/i/p$b;->b:Lu/i/l;

    invoke-virtual {v5, v6}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 10
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result v3

    invoke-virtual {p0, v3}, Lu/i/h;->l(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 11
    :cond_6
    sget-object v6, Lu/i/p$b;->c:Lu/i/l;

    invoke-virtual {v5, v6}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 12
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    const/4 v7, 0x6

    if-eq v5, v7, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    .line 13
    :cond_9
    sget-object v6, Lu/i/p$b;->d:Lu/i/l;

    invoke-virtual {v5, v6}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 14
    invoke-static {p0}, Lu/i/k;->a(Lu/i/h;)Lu/f;

    move-result-object v4

    goto/16 :goto_0

    .line 15
    :cond_a
    iget-byte v5, v5, Lu/i/l;->a:B

    invoke-static {p0, v5}, Lu/i/j;->g(Lu/i/h;B)V

    goto/16 :goto_0
.end method
