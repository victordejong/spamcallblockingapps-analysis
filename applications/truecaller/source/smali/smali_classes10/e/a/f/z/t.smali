.class public final Le/a/f/z/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Le/a/p5/v0/a;


# direct methods
.method public constructor <init>(Le/a/p5/v0/a;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/t;->d:Le/a/p5/v0/a;

    const-string p1, "InCallUINotShownDetected"

    .line 2
    iput-object p1, p0, Le/a/f/z/t;->a:Ljava/lang/String;

    const-string p1, "number"

    .line 3
    iput-object p1, p0, Le/a/f/z/t;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Le/a/f/z/t;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/f/z/t;->d:Le/a/p5/v0/a;

    invoke-virtual {v1}, Le/a/p5/v0/a;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Le/a/f/z/t;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/f/z/t;->c:Ljava/lang/String;

    iget-object v2, p0, Le/a/f/z/t;->d:Le/a/p5/v0/a;

    .line 4
    instance-of v3, v2, Le/a/p5/v0/a$a;

    if-eqz v3, :cond_1

    const-string v2, "Idle"

    goto :goto_0

    .line 5
    :cond_1
    instance-of v3, v2, Le/a/p5/v0/a$b;

    if-eqz v3, :cond_2

    const-string v2, "OfHook"

    goto :goto_0

    .line 6
    :cond_2
    instance-of v2, v2, Le/a/p5/v0/a$c;

    if-eqz v2, :cond_3

    const-string v2, "Ringing"

    .line 7
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    .line 9
    iget-object v2, p0, Le/a/f/z/t;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 10
    invoke-virtual {v1, v0}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 11
    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 12
    new-instance v1, Le/a/q2/x$d;

    invoke-direct {v1, v0}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v1

    .line 13
    :cond_3
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
