.class final Lu/i/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lu/i/l;

.field static final b:Lu/i/l;

.field static final c:Lu/i/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lu/i/l;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/p$a;->a:Lu/i/l;

    .line 2
    new-instance v0, Lu/i/l;

    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/p$a;->b:Lu/i/l;

    .line 3
    new-instance v0, Lu/i/l;

    const/16 v1, 0xc

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lu/i/l;-><init>(BI)V

    sput-object v0, Lu/i/p$a;->c:Lu/i/l;

    return-void
.end method

.method static a(Lu/i/h;Lu/j/c$a;)V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-object v3, v0

    move-wide v4, v1

    .line 1
    :goto_0
    invoke-static {p0}, Lu/i/l;->b(Lu/i/h;)Lu/i/l;

    move-result-object v6

    .line 2
    iget-byte v7, v6, Lu/i/l;->a:B

    if-nez v7, :cond_2

    cmp-long p0, v4, v1

    if-eqz p0, :cond_1

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1, v4, v5, v0, v3}, Lu/j/c$a;->a(JLjava/lang/String;Lu/f;)Lu/j/c$a;

    :cond_1
    :goto_1
    return-void

    .line 4
    :cond_2
    sget-object v7, Lu/i/p$a;->a:Lu/i/l;

    invoke-virtual {v6, v7}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 5
    invoke-virtual {p0}, Lu/i/h;->i()J

    move-result-wide v4

    goto :goto_0

    .line 6
    :cond_3
    sget-object v7, Lu/i/p$a;->b:Lu/i/l;

    invoke-virtual {v6, v7}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7
    invoke-virtual {p0}, Lu/i/h;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lu/i/h;->l(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_4
    sget-object v7, Lu/i/p$a;->c:Lu/i/l;

    invoke-virtual {v6, v7}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 9
    invoke-static {p0}, Lu/i/k;->a(Lu/i/h;)Lu/f;

    move-result-object v3

    goto :goto_0

    .line 10
    :cond_5
    iget-byte v6, v6, Lu/i/l;->a:B

    invoke-static {p0, v6}, Lu/i/j;->g(Lu/i/h;B)V

    goto :goto_0
.end method
