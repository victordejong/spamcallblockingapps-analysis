.class public final Le/a/y/i/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/y/b/w;


# direct methods
.method public constructor <init>(Le/a/y/b/w;)V
    .locals 1

    const-string v0, "preferenceUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/i/a;->a:Le/a/y/b/w;

    return-void
.end method


# virtual methods
.method public final a(JI)I
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v5, 0x8

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    and-int/lit8 v2, p3, 0x8

    if-ne v2, v5, :cond_1

    const-wide/16 v6, 0xa

    cmp-long v2, p1, v6

    if-nez v2, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    and-int/lit8 v2, p3, 0x2

    const/4 v5, 0x6

    if-ne v2, v4, :cond_2

    const/4 v2, 0x3

    int-to-long v6, v2

    sub-long v6, p1, v6

    int-to-long v8, v5

    .line 1
    rem-long/2addr v6, v8

    cmp-long v2, v6, v0

    if-nez v2, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    and-int/2addr p3, v3

    if-ne p3, v3, :cond_3

    int-to-long v4, v5

    sub-long/2addr p1, v4

    .line 2
    rem-long/2addr p1, v4

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/i/a;->a:Le/a/y/b/w;

    const-string v1, "receive_tooltips"

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Le/a/y/b/w;->getInt(Ljava/lang/String;I)I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Le/a/y/i/a;->a:Le/a/y/b/w;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Le/a/y/b/w;->l(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/i/a;->a:Le/a/y/b/w;

    const-string v1, "send_tooltips"

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2}, Le/a/y/b/w;->getInt(Ljava/lang/String;I)I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    .line 2
    iget-object v0, p0, Le/a/y/i/a;->a:Le/a/y/b/w;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Le/a/y/b/w;->l(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
