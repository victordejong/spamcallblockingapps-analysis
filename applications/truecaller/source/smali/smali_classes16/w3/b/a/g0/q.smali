.class public Lw3/b/a/g0/q;
.super Lw3/b/a/g0/a;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/g0/g;
.implements Lw3/b/a/g0/j;
.implements Lw3/b/a/g0/c;
.implements Lw3/b/a/g0/k;


# static fields
.field public static final a:Lw3/b/a/g0/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/g0/q;

    invoke-direct {v0}, Lw3/b/a/g0/q;-><init>()V

    sput-object v0, Lw3/b/a/g0/q;->a:Lw3/b/a/g0/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/g0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lw3/b/a/w;Ljava/lang/Object;Lw3/b/a/a;)V
    .locals 3

    .line 1
    check-cast p2, Ljava/lang/String;

    .line 2
    invoke-static {}, Ls1/a/a/a/v0/f/d;->r3()Lw3/b/a/i0/m;

    move-result-object p3

    .line 3
    invoke-interface {p1}, Lw3/b/a/w;->clear()V

    .line 4
    invoke-virtual {p3}, Lw3/b/a/i0/m;->a()V

    .line 5
    iget-object v0, p3, Lw3/b/a/i0/m;->b:Lw3/b/a/i0/o;

    .line 6
    iget-object v1, p3, Lw3/b/a/i0/m;->c:Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2, v1}, Lw3/b/a/i0/o;->c(Lw3/b/a/w;Ljava/lang/String;ILjava/util/Locale;)I

    move-result v0

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-gez v0, :cond_1

    .line 8
    invoke-interface {p1}, Lw3/b/a/c0;->g()Lw3/b/a/v;

    move-result-object p1

    .line 9
    iget-object v0, p3, Lw3/b/a/i0/m;->d:Lw3/b/a/v;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lw3/b/a/i0/m;

    iget-object v1, p3, Lw3/b/a/i0/m;->a:Lw3/b/a/i0/p;

    iget-object v2, p3, Lw3/b/a/i0/m;->b:Lw3/b/a/i0/o;

    iget-object p3, p3, Lw3/b/a/i0/m;->c:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, p3, p1}, Lw3/b/a/i0/m;-><init>(Lw3/b/a/i0/p;Lw3/b/a/i0/o;Ljava/util/Locale;Lw3/b/a/v;)V

    move-object p3, v0

    .line 11
    :goto_0
    invoke-virtual {p3, p2}, Lw3/b/a/i0/m;->b(Ljava/lang/String;)Lw3/b/a/t;

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid format: \""

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public d(Lw3/b/a/b0;Ljava/lang/Object;Lw3/b/a/a;Lw3/b/a/i0/b;)[I
    .locals 2

    .line 1
    iget-object v0, p4, Lw3/b/a/i0/b;->f:Lw3/b/a/g;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p3, v0}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object p3

    .line 3
    :cond_0
    invoke-virtual {p4, p3}, Lw3/b/a/i0/b;->l(Lw3/b/a/a;)Lw3/b/a/i0/b;

    move-result-object p4

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p4, p2}, Lw3/b/a/i0/b;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 4
    invoke-virtual {p3, p1, v0, v1}, Lw3/b/a/a;->m(Lw3/b/a/b0;J)[I

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Object;Lw3/b/a/a;)J
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    sget-object v0, Lw3/b/a/i0/i;->e0:Lw3/b/a/i0/b;

    .line 3
    invoke-virtual {v0, p2}, Lw3/b/a/i0/b;->l(Lw3/b/a/a;)Lw3/b/a/i0/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lw3/b/a/i0/b;->d(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method
