.class public final Le/m/i/l/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/i/g;


# instance fields
.field public final a:Le/m/i/l/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/i/l/j;

    invoke-direct {v0}, Le/m/i/l/j;-><init>()V

    iput-object v0, p0, Le/m/i/l/o;->a:Le/m/i/l/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/m/i/a;IILjava/util/Map;)Le/m/i/j/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/m/i/a;",
            "II",
            "Ljava/util/Map<",
            "Le/m/i/c;",
            "*>;)",
            "Le/m/i/j/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/i/h;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/i/a;->o:Le/m/i/a;

    if-ne p2, v0, :cond_0

    .line 2
    iget-object v1, p0, Le/m/i/l/o;->a:Le/m/i/l/j;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Le/m/i/a;->h:Le/m/i/a;

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Le/m/i/l/j;->a(Ljava/lang/String;Le/m/i/a;IILjava/util/Map;)Le/m/i/j/b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode UPC-A, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
