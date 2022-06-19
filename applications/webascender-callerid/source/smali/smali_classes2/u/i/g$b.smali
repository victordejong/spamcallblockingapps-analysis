.class Lu/i/g$b;
.super Lu/i/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/i/e$f<",
        "Lu/f;",
        ">;"
    }
.end annotation


# static fields
.field static final c:Lu/i/e$g;

.field static final d:Lu/i/e$b;

.field static final e:Lu/i/e$b;

.field static final f:Lu/i/e$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu/i/e$g;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lu/i/e$g;-><init>(I)V

    sput-object v0, Lu/i/g$b;->c:Lu/i/e$g;

    .line 2
    new-instance v0, Lu/i/e$b;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lu/i/e$b;-><init>(I)V

    sput-object v0, Lu/i/g$b;->d:Lu/i/e$b;

    .line 3
    new-instance v0, Lu/i/e$b;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lu/i/e$b;-><init>(I)V

    sput-object v0, Lu/i/g$b;->e:Lu/i/e$b;

    .line 4
    new-instance v0, Lu/i/e$h;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lu/i/e$h;-><init>(I)V

    sput-object v0, Lu/i/g$b;->f:Lu/i/e$h;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu/i/e$f;-><init>(I)V

    return-void
.end method


# virtual methods
.method bridge synthetic e(Lu/i/h;I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lu/i/g$b;->j(Lu/i/h;I)Lu/f;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lu/f;

    invoke-virtual {p0, p1}, Lu/i/g$b;->k(Lu/f;)I

    move-result p1

    return p1
.end method

.method bridge synthetic i(Lu/i/t;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lu/f;

    invoke-virtual {p0, p1, p2}, Lu/i/g$b;->l(Lu/i/t;Lu/f;)V

    return-void
.end method

.method j(Lu/i/h;I)Lu/f;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lu/i/h;->c()I

    move-result v0

    add-int/2addr v0, p2

    .line 2
    invoke-static {}, Lu/f;->j()Lu/f$a;

    move-result-object p2

    .line 3
    :goto_0
    invoke-virtual {p1}, Lu/i/h;->c()I

    move-result v1

    if-ge v1, v0, :cond_4

    .line 4
    invoke-virtual {p1}, Lu/i/h;->o()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0x12

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 5
    invoke-static {p1, v1}, Lu/i/g;->a(Lu/i/h;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lu/i/h;->o()I

    move-result v1

    invoke-virtual {p2, v1}, Lu/f$a;->g(I)Lu/f$a;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lu/i/g$b;->e:Lu/i/e$b;

    invoke-virtual {v1, p1}, Lu/i/e$f;->d(Lu/i/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, v1}, Lu/f$a;->f([B)Z

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lu/i/g$b;->d:Lu/i/e$b;

    invoke-virtual {v1, p1}, Lu/i/e$f;->d(Lu/i/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p2, v1}, Lu/f$a;->f([B)Z

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Lu/i/g$b;->c:Lu/i/e$g;

    invoke-virtual {v1, p1}, Lu/i/e$f;->d(Lu/i/h;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lu/f$a;->h(Ljava/lang/String;)Lu/f$a;

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p2}, Lu/f$a;->a()Lu/f;

    move-result-object p1

    return-object p1
.end method

.method k(Lu/f;)I
    .locals 3

    .line 1
    sget-object v0, Lu/i/g$b;->c:Lu/i/e$g;

    invoke-virtual {p1}, Lu/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/i/e$f;->f(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2
    sget-object v1, Lu/i/g$b;->d:Lu/i/e$b;

    invoke-virtual {p1}, Lu/f;->d()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/i/e$f;->f(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    sget-object v1, Lu/i/g$b;->e:Lu/i/e$b;

    invoke-virtual {p1}, Lu/f;->f()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/i/e$f;->f(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    sget-object v1, Lu/i/g$b;->f:Lu/i/e$h;

    invoke-virtual {p1}, Lu/f;->m()I

    move-result p1

    invoke-virtual {v1, p1}, Lu/i/e$h;->d(I)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method l(Lu/i/t;Lu/f;)V
    .locals 2

    .line 1
    sget-object v0, Lu/i/g$b;->c:Lu/i/e$g;

    invoke-virtual {p2}, Lu/f;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lu/i/e$f;->h(Lu/i/t;Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lu/i/g$b;->d:Lu/i/e$b;

    invoke-virtual {p2}, Lu/f;->d()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lu/i/e$f;->h(Lu/i/t;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lu/i/g$b;->e:Lu/i/e$b;

    invoke-virtual {p2}, Lu/f;->f()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lu/i/e$f;->h(Lu/i/t;Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lu/i/g$b;->f:Lu/i/e$h;

    invoke-virtual {p2}, Lu/f;->m()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lu/i/e$h;->f(Lu/i/t;I)V

    return-void
.end method
