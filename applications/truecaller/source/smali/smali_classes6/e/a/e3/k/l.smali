.class public final Le/a/e3/k/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/p5/v0/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/e3/k/k;


# direct methods
.method public constructor <init>(Le/a/e3/k/k;)V
    .locals 0

    iput-object p1, p0, Le/a/e3/k/l;->a:Le/a/e3/k/k;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Le/a/p5/v0/a;

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "New call state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    instance-of p2, p1, Le/a/p5/v0/a$b;

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Le/a/e3/k/o$a;

    .line 5
    iget-object v0, p0, Le/a/e3/k/l;->a:Le/a/e3/k/k;

    .line 6
    iget-object v0, v0, Le/a/e3/k/k;->i:Le/a/p5/c;

    .line 7
    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    .line 8
    invoke-direct {p2, p1, v0, v1}, Le/a/e3/k/o$a;-><init>(Le/a/p5/v0/a;J)V

    .line 9
    iget-object p1, p0, Le/a/e3/k/l;->a:Le/a/e3/k/k;

    .line 10
    iget-object p1, p1, Le/a/e3/k/k;->c:Lq3/a/x2/a1;

    .line 11
    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 12
    :cond_0
    instance-of p2, p1, Le/a/p5/v0/a$c;

    if-eqz p2, :cond_1

    .line 13
    new-instance p2, Le/a/e3/k/o$a;

    .line 14
    iget-object v0, p0, Le/a/e3/k/l;->a:Le/a/e3/k/k;

    .line 15
    iget-object v0, v0, Le/a/e3/k/k;->i:Le/a/p5/c;

    .line 16
    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    .line 17
    invoke-direct {p2, p1, v0, v1}, Le/a/e3/k/o$a;-><init>(Le/a/p5/v0/a;J)V

    .line 18
    iget-object p1, p0, Le/a/e3/k/l;->a:Le/a/e3/k/k;

    .line 19
    iget-object p1, p1, Le/a/e3/k/k;->d:Lq3/a/x2/a1;

    .line 20
    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 21
    :cond_1
    instance-of p2, p1, Le/a/p5/v0/a$a;

    if-eqz p2, :cond_8

    iget-object p2, p0, Le/a/e3/k/l;->a:Le/a/e3/k/k;

    invoke-virtual {p1}, Le/a/p5/v0/a;->b()Ljava/lang/Integer;

    move-result-object p1

    .line 22
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Le/a/e3/k/o$b;->a:Le/a/e3/k/o$b;

    if-nez p1, :cond_2

    goto :goto_3

    .line 24
    :cond_2
    iget-object v1, p2, Le/a/e3/k/k;->c:Lq3/a/x2/a1;

    invoke-interface {v1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 25
    move-object v2, v1

    check-cast v2, Le/a/e3/k/o;

    .line 26
    instance-of v3, v2, Le/a/e3/k/o$a;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    check-cast v2, Le/a/e3/k/o$a;

    .line 27
    iget-object v2, v2, Le/a/e3/k/o$a;->a:Le/a/p5/v0/a;

    .line 28
    invoke-virtual {v2}, Le/a/p5/v0/a;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v5

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v3

    .line 29
    :goto_1
    check-cast v1, Le/a/e3/k/o;

    if-eqz v1, :cond_5

    .line 30
    iget-object v1, p2, Le/a/e3/k/k;->c:Lq3/a/x2/a1;

    invoke-interface {v1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 31
    :cond_5
    iget-object v1, p2, Le/a/e3/k/k;->d:Lq3/a/x2/a1;

    invoke-interface {v1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 32
    move-object v2, v1

    check-cast v2, Le/a/e3/k/o;

    .line 33
    instance-of v6, v2, Le/a/e3/k/o$a;

    if-eqz v6, :cond_6

    check-cast v2, Le/a/e3/k/o$a;

    .line 34
    iget-object v2, v2, Le/a/e3/k/o$a;->a:Le/a/p5/v0/a;

    .line 35
    invoke-virtual {v2}, Le/a/p5/v0/a;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :goto_2
    if-eqz v4, :cond_7

    move-object v3, v1

    .line 36
    :cond_7
    check-cast v3, Le/a/e3/k/o;

    if-eqz v3, :cond_8

    .line 37
    iget-object p1, p2, Le/a/e3/k/k;->d:Lq3/a/x2/a1;

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 38
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
