.class public final Le/a/d/v/l/e/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/l/e/j$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/v/l/e/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/v/l/e/j$a;


# direct methods
.method public constructor <init>(Le/a/d/v/l/e/j$a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/l/e/j$a$a;->a:Le/a/d/v/l/e/j$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Le/a/d/v/l/e/a;

    .line 2
    instance-of p2, p1, Le/a/d/v/l/e/a$a;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Le/a/d/v/l/e/j$a$a;->a:Le/a/d/v/l/e/j$a;

    iget-object p2, p2, Le/a/d/v/l/e/j$a;->f:Le/a/d/v/l/e/j;

    .line 3
    iget-object p2, p2, Le/a/d/v/l/e/j;->a:Lq3/a/x2/a1;

    .line 4
    invoke-interface {p2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d/v/a;

    check-cast p1, Le/a/d/v/l/e/a$a;

    .line 5
    iget-boolean p1, p1, Le/a/d/v/l/e/a$a;->a:Z

    const/4 v1, 0x6

    .line 6
    invoke-static {p2, p1, v0, v0, v1}, Le/a/d/v/a;->a(Le/a/d/v/a;ZZZI)Le/a/d/v/a;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_0
    instance-of p2, p1, Le/a/d/v/l/e/a$b;

    if-eqz p2, :cond_1

    iget-object p2, p0, Le/a/d/v/l/e/j$a$a;->a:Le/a/d/v/l/e/j$a;

    iget-object p2, p2, Le/a/d/v/l/e/j$a;->f:Le/a/d/v/l/e/j;

    .line 8
    iget-object p2, p2, Le/a/d/v/l/e/j;->a:Lq3/a/x2/a1;

    .line 9
    invoke-interface {p2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d/v/a;

    check-cast p1, Le/a/d/v/l/e/a$b;

    .line 10
    iget-boolean p1, p1, Le/a/d/v/l/e/a$b;->a:Z

    const/4 v1, 0x5

    .line 11
    invoke-static {p2, v0, p1, v0, v1}, Le/a/d/v/a;->a(Le/a/d/v/a;ZZZI)Le/a/d/v/a;

    move-result-object p1

    .line 12
    :goto_0
    iget-object p2, p0, Le/a/d/v/l/e/j$a$a;->a:Le/a/d/v/l/e/j$a;

    iget-object p2, p2, Le/a/d/v/l/e/j$a;->f:Le/a/d/v/l/e/j;

    .line 13
    iget-object p2, p2, Le/a/d/v/l/e/j;->a:Lq3/a/x2/a1;

    .line 14
    invoke-interface {p2, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 15
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 16
    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
