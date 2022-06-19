.class public final Le/a/q/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q/e/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 6

    .line 1
    new-instance v0, Le/a/q2/x$d;

    .line 2
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ls1/k;

    .line 3
    iget-object v3, p0, Le/a/q/e/b;->a:Ljava/lang/String;

    .line 4
    new-instance v4, Ls1/k;

    const-string v5, "Source"

    invoke-direct {v4, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v4, v2, v3

    .line 5
    invoke-static {v2}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    const-string v2, "ShowFeedbackComments"

    .line 6
    invoke-virtual {v1, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 7
    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    .line 8
    invoke-direct {v0, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/q/e/b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/q/e/b;

    iget-object v0, p0, Le/a/q/e/b;->a:Ljava/lang/String;

    iget-object p1, p1, Le/a/q/e/b;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Le/a/q/e/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ShowFeedbackCommentsEvent(source="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/q/e/b;->a:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
