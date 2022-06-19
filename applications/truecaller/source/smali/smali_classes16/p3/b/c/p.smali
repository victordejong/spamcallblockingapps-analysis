.class public final Lp3/b/c/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lp3/b/c/w;

.field public static final e:Lp3/b/c/p;


# instance fields
.field public final a:Lp3/b/c/t;

.field public final b:Lp3/b/c/q;

.field public final c:Lp3/b/c/u;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lp3/b/c/w$b;

    .line 2
    sget-object v1, Lp3/b/c/w$b;->b:Lp3/b/c/w;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Lp3/b/c/w$b;-><init>(Lp3/b/c/w;Lp3/b/c/w$a;)V

    .line 4
    iget-object v0, v0, Lp3/b/c/w$b;->a:Lp3/b/c/w;

    .line 5
    sput-object v0, Lp3/b/c/p;->d:Lp3/b/c/w;

    .line 6
    new-instance v1, Lp3/b/c/p;

    sget-object v2, Lp3/b/c/t;->c:Lp3/b/c/t;

    sget-object v3, Lp3/b/c/q;->b:Lp3/b/c/q;

    sget-object v4, Lp3/b/c/u;->b:Lp3/b/c/u;

    invoke-direct {v1, v2, v3, v4, v0}, Lp3/b/c/p;-><init>(Lp3/b/c/t;Lp3/b/c/q;Lp3/b/c/u;Lp3/b/c/w;)V

    sput-object v1, Lp3/b/c/p;->e:Lp3/b/c/p;

    return-void
.end method

.method public constructor <init>(Lp3/b/c/t;Lp3/b/c/q;Lp3/b/c/u;Lp3/b/c/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/b/c/p;->a:Lp3/b/c/t;

    .line 3
    iput-object p2, p0, Lp3/b/c/p;->b:Lp3/b/c/q;

    .line 4
    iput-object p3, p0, Lp3/b/c/p;->c:Lp3/b/c/u;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lp3/b/c/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lp3/b/c/p;

    .line 3
    iget-object v1, p0, Lp3/b/c/p;->a:Lp3/b/c/t;

    iget-object v3, p1, Lp3/b/c/p;->a:Lp3/b/c/t;

    invoke-virtual {v1, v3}, Lp3/b/c/t;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp3/b/c/p;->b:Lp3/b/c/q;

    iget-object v3, p1, Lp3/b/c/p;->b:Lp3/b/c/q;

    .line 4
    invoke-virtual {v1, v3}, Lp3/b/c/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lp3/b/c/p;->c:Lp3/b/c/u;

    iget-object p1, p1, Lp3/b/c/p;->c:Lp3/b/c/u;

    .line 5
    invoke-virtual {v1, p1}, Lp3/b/c/u;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/b/c/p;->a:Lp3/b/c/t;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/b/c/p;->b:Lp3/b/c/q;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/b/c/p;->c:Lp3/b/c/u;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SpanContext{traceId="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lp3/b/c/p;->a:Lp3/b/c/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spanId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/b/c/p;->b:Lp3/b/c/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", traceOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp3/b/c/p;->c:Lp3/b/c/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
