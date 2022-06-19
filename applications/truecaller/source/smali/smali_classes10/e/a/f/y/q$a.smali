.class public final Le/a/f/y/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/y/q;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/k0/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/f/y/q;


# direct methods
.method public constructor <init>(Le/a/f/y/q;)V
    .locals 0

    iput-object p1, p0, Le/a/f/y/q$a;->a:Le/a/f/y/q;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k0/h;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/k0/h;

    .line 2
    instance-of p2, p1, Le/a/k0/h$e;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Le/a/f/y/q$a;->a:Le/a/f/y/q;

    iget-object p2, p2, Le/a/f/y/q;->f:Le/a/f/y/o;

    .line 4
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/y/k;

    if-eqz p2, :cond_4

    .line 5
    check-cast p1, Le/a/k0/h$e;

    .line 6
    iget-wide v0, p1, Le/a/k0/h$e;->b:J

    .line 7
    invoke-interface {p2, v0, v1}, Le/a/f/y/k;->q(J)V

    goto :goto_1

    .line 8
    :cond_0
    instance-of p2, p1, Le/a/k0/h$b;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    sget-object p2, Le/a/k0/h$d;->a:Le/a/k0/h$d;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    sget-object p2, Le/a/k0/h$c;->a:Le/a/k0/h$c;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    sget-object p2, Le/a/k0/h$a;->a:Le/a/k0/h$a;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    :goto_0
    iget-object p1, p0, Le/a/f/y/q$a;->a:Le/a/f/y/q;

    iget-object p1, p1, Le/a/f/y/q;->f:Le/a/f/y/o;

    .line 13
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/y/k;

    if-eqz p1, :cond_4

    .line 14
    invoke-interface {p1}, Le/a/f/y/k;->y()V

    .line 15
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
