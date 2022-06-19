.class public final Le/a/l/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/e/p;
.implements Le/m/e/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/l/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/m/e/p<",
        "Lw3/b/a/u;",
        ">;",
        "Le/m/e/y<",
        "Lw3/b/a/u;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/e/q;Ljava/lang/reflect/Type;Le/m/e/o;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p1}, Le/m/e/q;->g()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    if-eqz p1, :cond_2

    .line 2
    sget p2, Lw3/b/a/u;->d:I

    .line 3
    invoke-static {}, Ls1/a/a/a/v0/f/d;->r3()Lw3/b/a/i0/m;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Lw3/b/a/i0/m;->a()V

    .line 5
    invoke-virtual {p2, p1}, Lw3/b/a/i0/m;->b(Ljava/lang/String;)Lw3/b/a/t;

    move-result-object p1

    .line 6
    new-instance p2, Lw3/b/a/u;

    invoke-direct {p2, p1}, Lw3/b/a/u;-><init>(Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method public b(Ljava/lang/Object;Ljava/lang/reflect/Type;Le/m/e/x;)Le/m/e/q;
    .locals 0

    .line 1
    check-cast p1, Lw3/b/a/u;

    .line 2
    new-instance p2, Le/m/e/w;

    invoke-virtual {p1}, Lw3/b/a/e0/d;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-direct {p2, p1}, Le/m/e/w;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
