.class public Le/f/a/n/o/c0/h;
.super Le/f/a/t/g;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/c0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/t/g<",
        "Le/f/a/n/f;",
        "Le/f/a/n/o/w<",
        "*>;>;",
        "Le/f/a/n/o/c0/i;"
    }
.end annotation


# instance fields
.field public d:Le/f/a/n/o/c0/i$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Le/f/a/t/g;-><init>(J)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le/f/a/n/o/w;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Le/f/a/n/o/w;->a()I

    move-result p1

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/f/a/n/f;

    check-cast p2, Le/f/a/n/o/w;

    .line 2
    iget-object p1, p0, Le/f/a/n/o/c0/h;->d:Le/f/a/n/o/c0/i$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Le/f/a/n/o/l;

    .line 4
    iget-object p1, p1, Le/f/a/n/o/l;->e:Le/f/a/n/o/z;

    invoke-virtual {p1, p2}, Le/f/a/n/o/z;->a(Le/f/a/n/o/w;)V

    :cond_0
    return-void
.end method
