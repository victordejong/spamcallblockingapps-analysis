.class public final Le/a/f5/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Lcom/truecaller/swish/deeplink/data/SwishResultDto;


# direct methods
.method public constructor <init>(Lcom/truecaller/swish/deeplink/data/SwishResultDto;)V
    .locals 1

    const-string v0, "swishResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f5/e/b;->a:Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 6

    .line 1
    sget-object v0, Le/a/q2/x$c;->a:Le/a/q2/x$c;

    iget-object v1, p0, Le/a/f5/e/b;->a:Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    invoke-virtual {v1}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getResult()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Le/a/f5/e/b;->a:Lcom/truecaller/swish/deeplink/data/SwishResultDto;

    invoke-virtual {v2}, Lcom/truecaller/swish/deeplink/data/SwishResultDto;->getAmount()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 3
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    const-string v4, ""

    .line 4
    invoke-virtual {v0, v4}, Le/a/l5/a/p3$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const-string v4, "Swish_Result"

    .line 5
    invoke-virtual {v0, v4}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 6
    new-instance v4, Ls1/k;

    const-string v5, "Status"

    invoke-direct {v4, v5, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-static {v4}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 9
    new-instance v2, Ls1/k;

    const-string v3, "Amount"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 11
    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 12
    new-instance v1, Le/a/q2/x$d;

    invoke-direct {v1, v0}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v1

    :cond_0
    return-object v0
.end method
