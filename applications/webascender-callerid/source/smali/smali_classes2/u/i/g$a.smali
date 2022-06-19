.class Lu/i/g$a;
.super Lu/i/g$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/i/g$c<",
        "Lu/a;",
        ">;"
    }
.end annotation


# static fields
.field static final c:Lu/i/e$d;

.field static final d:Lu/i/e$g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu/i/e$d;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lu/i/e$d;-><init>(I)V

    sput-object v0, Lu/i/g$a;->c:Lu/i/e$d;

    .line 2
    new-instance v0, Lu/i/e$g;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lu/i/e$g;-><init>(I)V

    sput-object v0, Lu/i/g$a;->d:Lu/i/e$g;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu/i/g$c;-><init>(I)V

    return-void
.end method


# virtual methods
.method bridge synthetic g(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/a;

    invoke-virtual {p0, p1}, Lu/i/g$a;->k(Lu/a;)I

    move-result p1

    return p1
.end method

.method bridge synthetic i(Lu/i/t;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lu/a;

    invoke-virtual {p0, p1, p2}, Lu/i/g$a;->l(Lu/i/t;Lu/a;)V

    return-void
.end method

.method j(Lu/i/h;Lu/g$a;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Lu/i/h;->o()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lu/i/h;->c()I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 3
    :goto_0
    invoke-virtual {p1}, Lu/i/h;->c()I

    move-result v7

    if-ge v7, v2, :cond_3

    .line 4
    invoke-virtual {p1}, Lu/i/h;->o()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_2

    const/16 v8, 0x12

    if-eq v7, v8, :cond_1

    .line 5
    invoke-static {p1, v7}, Lu/i/g;->a(Lu/i/h;I)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lu/i/g$a;->d:Lu/i/e$g;

    invoke-virtual {v0, p1}, Lu/i/e$f;->d(Lu/i/h;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v5, Lu/i/g$a;->c:Lu/i/e$d;

    invoke-virtual {v5, p1}, Lu/i/e$d;->d(Lu/i/h;)J

    move-result-wide v5

    goto :goto_0

    :cond_3
    cmp-long p1, v5, v3

    if-eqz p1, :cond_5

    if-nez v0, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    invoke-virtual {p2, v5, v6, v0}, Lu/g$a;->a(JLjava/lang/String;)Lu/g$a;

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method k(Lu/a;)I
    .locals 3

    .line 1
    sget-object v0, Lu/i/g$a;->c:Lu/i/e$d;

    invoke-virtual {p1}, Lu/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/i/e$d;->e(J)I

    move-result v0

    sget-object v1, Lu/i/g$a;->d:Lu/i/e$g;

    invoke-virtual {p1}, Lu/a;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lu/i/e$f;->f(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method l(Lu/i/t;Lu/a;)V
    .locals 3

    .line 1
    sget-object v0, Lu/i/g$a;->c:Lu/i/e$d;

    invoke-virtual {p2}, Lu/a;->h()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lu/i/e$d;->f(Lu/i/t;J)V

    .line 2
    sget-object v0, Lu/i/g$a;->d:Lu/i/e$g;

    invoke-virtual {p2}, Lu/a;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lu/i/e$f;->h(Lu/i/t;Ljava/lang/Object;)V

    return-void
.end method
