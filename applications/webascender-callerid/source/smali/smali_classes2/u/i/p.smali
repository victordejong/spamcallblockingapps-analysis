.class public final Lu/i/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/i/p$b;,
        Lu/i/p$a;
    }
.end annotation


# static fields
.field static final b:Ljava/lang/String;


# instance fields
.field a:Lu/j/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/i/p;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lu/j/c;->g()Lu/j/c$a;

    move-result-object v0

    iput-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    return-void
.end method


# virtual methods
.method public a(Lu/i/h;)Lu/j/c;
    .locals 4

    .line 1
    iget-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lu/j/c;->g()Lu/j/c$a;

    move-result-object v0

    iput-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lu/j/c$a;->e()Lu/j/c$a;

    .line 4
    :cond_1
    :goto_0
    invoke-static {p1}, Lu/i/l;->b(Lu/i/h;)Lu/i/l;

    move-result-object v0

    .line 5
    iget-byte v1, v0, Lu/i/l;->a:B

    if-nez v1, :cond_2

    .line 6
    iget-object p1, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/j/c$a;->d()Lu/j/c;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    sget-object v1, Lu/i/q;->c:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/h;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->p(J)Lu/j/c$a;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v1, Lu/i/q;->b:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    iget-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/h;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->n(J)Lu/j/c$a;

    goto :goto_0

    .line 11
    :cond_4
    sget-object v1, Lu/i/q;->d:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 12
    iget-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/h;->readInt()I

    move-result v1

    invoke-virtual {p1, v1}, Lu/i/h;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->j(Ljava/lang/String;)Lu/j/c$a;

    goto :goto_0

    .line 13
    :cond_5
    sget-object v1, Lu/i/q;->e:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 14
    iget-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/h;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->h(J)Lu/j/c$a;

    goto :goto_0

    .line 15
    :cond_6
    sget-object v1, Lu/i/q;->f:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16
    iget-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/h;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->k(J)Lu/j/c$a;

    goto :goto_0

    .line 17
    :cond_7
    sget-object v1, Lu/i/q;->g:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 18
    invoke-static {p1}, Lu/i/j;->e(Lu/i/h;)I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 19
    iget-object v1, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-static {p1, v1}, Lu/i/p$a;->a(Lu/i/h;Lu/j/c$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_8
    sget-object v1, Lu/i/q;->h:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    invoke-static {p1}, Lu/i/j;->e(Lu/i/h;)I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_1

    .line 22
    iget-object v1, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-static {p1, v1}, Lu/i/p$b;->a(Lu/i/h;Lu/j/c$a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_9
    sget-object v1, Lu/i/q;->i:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 24
    iget-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/h;->readByte()B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/j/c$a;->f(Ljava/lang/Boolean;)Lu/j/c$a;

    goto/16 :goto_0

    .line 25
    :cond_b
    sget-object v1, Lu/i/q;->j:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 26
    iget-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/h;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->m(J)Lu/j/c$a;

    goto/16 :goto_0

    .line 27
    :cond_c
    sget-object v1, Lu/i/q;->k:Lu/i/l;

    invoke-virtual {v0, v1}, Lu/i/l;->a(Lu/i/l;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 28
    iget-object v0, p0, Lu/i/p;->a:Lu/j/c$a;

    invoke-virtual {p1}, Lu/i/h;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/j/c$a;->g(J)Lu/j/c$a;

    goto/16 :goto_0

    .line 29
    :cond_d
    iget-byte v0, v0, Lu/i/l;->a:B

    invoke-static {p1, v0}, Lu/i/j;->g(Lu/i/h;B)V

    goto/16 :goto_0
.end method
