.class public final Le/a/d/b/a/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/b/a/h;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/x1/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/b/a/h;


# direct methods
.method public constructor <init>(Le/a/d/b/a/h;)V
    .locals 0

    iput-object p1, p0, Le/a/d/b/a/h$a;->a:Le/a/d/b/a/h;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 7

    .line 1
    move-object v5, p1

    check-cast v5, Le/a/d/c0/x1/b;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Audio state is changed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 3
    iget-object p1, p0, Le/a/d/b/a/h$a;->a:Le/a/d/b/a/h;

    iget-object p1, p1, Le/a/d/b/a/h;->f:Le/a/d/b/a/b;

    .line 4
    invoke-virtual {p1}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xf

    .line 5
    invoke-static/range {v0 .. v6}, Le/a/d/x/p;->a(Le/a/d/x/p;ZZZZLe/a/d/c0/x1/b;I)Le/a/d/x/p;

    move-result-object p2

    .line 6
    iget-object p1, p1, Le/a/d/b/a/b;->s:Lq3/a/w2/r;

    .line 7
    invoke-static {p1, p2}, Ls1/a/a/a/v0/f/d;->I2(Lq3/a/w2/d0;Ljava/lang/Object;)Z

    .line 8
    iget-object p1, p0, Le/a/d/b/a/h$a;->a:Le/a/d/b/a/h;

    iget-object p1, p1, Le/a/d/b/a/h;->f:Le/a/d/b/a/b;

    .line 9
    invoke-virtual {p1}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object p2

    .line 10
    iget-object p2, p2, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    .line 11
    iget-object p2, p2, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 12
    sget-object v0, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    invoke-static {p2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/g;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/d/b/a/g;->s3()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/g;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/d/b/a/g;->p3()V

    .line 15
    :cond_1
    :goto_0
    iget-object p1, p0, Le/a/d/b/a/h$a;->a:Le/a/d/b/a/h;

    iget-object p1, p1, Le/a/d/b/a/h;->f:Le/a/d/b/a/b;

    .line 16
    invoke-virtual {p1}, Le/a/d/b/a/b;->Pj()Le/a/d/x/p;

    move-result-object p2

    .line 17
    iget-object p2, p2, Le/a/d/x/p;->e:Le/a/d/c0/x1/b;

    .line 18
    iget-object p2, p2, Le/a/d/c0/x1/b;->a:Le/a/d/c0/x1/a;

    .line 19
    instance-of p2, p2, Le/a/d/c0/x1/a$c;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/b/a/g;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 21
    invoke-interface {p1}, Le/a/d/b/a/g;->c()V

    goto :goto_1

    .line 22
    :cond_2
    invoke-interface {p1}, Le/a/d/b/a/g;->b()V

    .line 23
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
