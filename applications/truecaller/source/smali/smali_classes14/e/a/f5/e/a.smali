.class public final Le/a/f5/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:D


# direct methods
.method public constructor <init>(ZD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Le/a/f5/e/a;->b:D

    if-eqz p1, :cond_0

    const-string p1, "Yes"

    goto :goto_0

    :cond_0
    const-string p1, "No"

    .line 2
    :goto_0
    iput-object p1, p0, Le/a/f5/e/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f5/e/a;->a:Ljava/lang/String;

    .line 2
    new-instance v1, Ls1/k;

    const-string v2, "HasMessage"

    invoke-direct {v1, v2, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Le/a/f5/e/a;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 5
    new-instance v2, Ls1/k;

    const-string v3, "Amount"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v1

    .line 7
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v2

    const-string v3, ""

    .line 8
    invoke-virtual {v2, v3}, Le/a/l5/a/p3$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const-string v3, "Swish_Payment_Sent"

    .line 9
    invoke-virtual {v2, v3}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 10
    invoke-virtual {v2, v0}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 11
    invoke-virtual {v2, v1}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 12
    invoke-virtual {v2}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 13
    new-instance v1, Le/a/q2/x$d;

    invoke-direct {v1, v0}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v1
.end method
