.class public final Le/a/x4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

.field public final c:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callReasonId"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x4/c;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/x4/c;->b:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    iput-object p3, p0, Le/a/x4/c;->c:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

    iput-object p4, p0, Le/a/x4/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 7

    .line 1
    new-instance v0, Le/a/q2/x$e;

    const/4 v1, 0x2

    new-array v1, v1, [Le/a/q2/x;

    .line 2
    new-instance v2, Le/a/q2/x$a;

    .line 3
    iget-object v3, p0, Le/a/x4/c;->a:Ljava/lang/String;

    .line 4
    iget-object v4, p0, Le/a/x4/c;->b:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    invoke-virtual {v4}, Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Context"

    .line 5
    invoke-static {v5, v4}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 6
    iget-object v5, p0, Le/a/x4/c;->c:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

    invoke-virtual {v5}, Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Source"

    .line 7
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v5, p0, Le/a/x4/c;->d:Ljava/lang/String;

    const-string v6, "CallReasonId"

    .line 9
    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v5, Le/a/q2/g$b$a;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4, v6}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string v3, "asFacebookEvent()"

    .line 11
    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Le/a/q2/x$a;-><init>(Le/a/q2/g;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 12
    new-instance v2, Le/a/q2/x$d;

    .line 13
    sget-object v3, Le/a/l5/a/n;->h:Lorg/apache/avro/Schema;

    new-instance v3, Le/a/l5/a/n$b;

    invoke-direct {v3, v6}, Le/a/l5/a/n$b;-><init>(Le/a/l5/a/n$a;)V

    .line 14
    iget-object v4, p0, Le/a/x4/c;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Le/a/l5/a/n$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/n$b;

    .line 15
    iget-object v4, p0, Le/a/x4/c;->b:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    invoke-virtual {v4}, Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/l5/a/n$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/n$b;

    .line 16
    iget-object v4, p0, Le/a/x4/c;->c:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

    invoke-virtual {v4}, Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/l5/a/n$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/n$b;

    .line 17
    invoke-virtual {v3}, Le/a/l5/a/n$b;->a()Le/a/l5/a/n;

    move-result-object v3

    .line 18
    invoke-direct {v2, v3}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 19
    invoke-static {v1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Le/a/q2/x$e;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/x4/c;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/x4/c;

    iget-object v0, p0, Le/a/x4/c;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/x4/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/x4/c;->b:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    iget-object v1, p1, Le/a/x4/c;->b:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/x4/c;->c:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

    iget-object v1, p1, Le/a/x4/c;->c:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/x4/c;->d:Ljava/lang/String;

    iget-object p1, p1, Le/a/x4/c;->d:Ljava/lang/String;

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
    .locals 3

    iget-object v0, p0, Le/a/x4/c;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/x4/c;->b:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/x4/c;->c:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/x4/c;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BusinessCallReasonEvent(name="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/x4/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/x4/c;->b:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/x4/c;->c:Lcom/truecaller/searchwarnings/data/analytics/BusinessCallReasonSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callReasonId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/x4/c;->d:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
