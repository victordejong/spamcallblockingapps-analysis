.class public final Lu/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lu/g$b;

.field e:Ljava/lang/String;

.field f:J

.field g:J

.field h:Lu/f;

.field i:Lu/f;

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu/a;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field l:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lu/g$a;->l:I

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)Lu/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/g$a;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lu/g$a;->j:Ljava/util/ArrayList;

    .line 2
    :cond_0
    iget-object v0, p0, Lu/g$a;->j:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Lu/a;->d(JLjava/lang/String;)Lu/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lu/g;
    .locals 7

    .line 1
    iget-object v0, p0, Lu/g$a;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " traceId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lu/g$a;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " id"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4
    iget-object v0, p0, Lu/g$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lu/g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 5
    const-class v0, Lu/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 6
    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-array v5, v3, [Ljava/lang/Object;

    .line 7
    iget-object v6, p0, Lu/g$a;->a:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, p0, Lu/g$a;->c:Ljava/lang/String;

    aput-object v6, v5, v1

    const-string v6, "undoing circular dependency: traceId=%s, spanId=%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 8
    :cond_2
    iput-object v4, p0, Lu/g$a;->b:Ljava/lang/String;

    .line 9
    :cond_3
    iget v0, p0, Lu/g$a;->l:I

    const/16 v5, 0x8

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lu/g$a;->d:Lu/g$b;

    sget-object v5, Lu/g$b;->CLIENT:Lu/g$b;

    if-ne v0, v5, :cond_5

    .line 10
    const-class v0, Lu/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 11
    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-array v3, v3, [Ljava/lang/Object;

    .line 12
    iget-object v5, p0, Lu/g$a;->a:Ljava/lang/String;

    aput-object v5, v3, v2

    iget-object v2, p0, Lu/g$a;->c:Ljava/lang/String;

    aput-object v2, v3, v1

    const-string v1, "removing shared flag on client: traceId=%s, spanId=%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 13
    :cond_4
    invoke-virtual {p0, v4}, Lu/g$a;->t(Ljava/lang/Boolean;)Lu/g$a;

    .line 14
    :cond_5
    new-instance v0, Lu/g;

    invoke-direct {v0, p0}, Lu/g;-><init>(Lu/g$a;)V

    return-object v0

    .line 15
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public c()Lu/g$a;
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lu/g$a;->a:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Lu/g$a;->b:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lu/g$a;->c:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lu/g$a;->d:Lu/g$b;

    .line 5
    iput-object v0, p0, Lu/g$a;->e:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lu/g$a;->f:J

    .line 7
    iput-wide v1, p0, Lu/g$a;->g:J

    .line 8
    iput-object v0, p0, Lu/g$a;->h:Lu/f;

    .line 9
    iput-object v0, p0, Lu/g$a;->i:Lu/f;

    .line 10
    iget-object v0, p0, Lu/g$a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    :cond_0
    iget-object v0, p0, Lu/g$a;->k:Ljava/util/TreeMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    :cond_1
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lu/g$a;->l:I

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lu/g$a;->d()Lu/g$a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lu/g$a;
    .locals 3

    .line 1
    new-instance v0, Lu/g$a;

    invoke-direct {v0}, Lu/g$a;-><init>()V

    .line 2
    iget-object v1, p0, Lu/g$a;->a:Ljava/lang/String;

    iput-object v1, v0, Lu/g$a;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lu/g$a;->b:Ljava/lang/String;

    iput-object v1, v0, Lu/g$a;->b:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lu/g$a;->c:Ljava/lang/String;

    iput-object v1, v0, Lu/g$a;->c:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lu/g$a;->d:Lu/g$b;

    iput-object v1, v0, Lu/g$a;->d:Lu/g$b;

    .line 6
    iget-object v1, p0, Lu/g$a;->e:Ljava/lang/String;

    iput-object v1, v0, Lu/g$a;->e:Ljava/lang/String;

    .line 7
    iget-wide v1, p0, Lu/g$a;->f:J

    iput-wide v1, v0, Lu/g$a;->f:J

    .line 8
    iget-wide v1, p0, Lu/g$a;->g:J

    iput-wide v1, v0, Lu/g$a;->g:J

    .line 9
    iget-object v1, p0, Lu/g$a;->h:Lu/f;

    iput-object v1, v0, Lu/g$a;->h:Lu/f;

    .line 10
    iget-object v1, p0, Lu/g$a;->i:Lu/f;

    iput-object v1, v0, Lu/g$a;->i:Lu/f;

    .line 11
    iget-object v1, p0, Lu/g$a;->j:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lu/g$a;->j:Ljava/util/ArrayList;

    .line 13
    :cond_0
    iget-object v1, p0, Lu/g$a;->k:Ljava/util/TreeMap;

    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    iput-object v1, v0, Lu/g$a;->k:Ljava/util/TreeMap;

    .line 15
    :cond_1
    iget v1, p0, Lu/g$a;->l:I

    iput v1, v0, Lu/g$a;->l:I

    return-object v0
.end method

.method public e(Ljava/lang/Boolean;)Lu/g$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lu/g$a;->f(Z)Lu/g$a;

    return-object p0

    .line 2
    :cond_0
    iget p1, p0, Lu/g$a;->l:I

    and-int/lit8 p1, p1, -0x7

    iput p1, p0, Lu/g$a;->l:I

    return-object p0
.end method

.method public f(Z)Lu/g$a;
    .locals 1

    .line 1
    iget v0, p0, Lu/g$a;->l:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lu/g$a;->l:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x2

    .line 2
    iput p1, p0, Lu/g$a;->l:I

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x3

    .line 3
    iput p1, p0, Lu/g$a;->l:I

    :goto_0
    return-object p0
.end method

.method public g(J)Lu/g$a;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 1
    :cond_0
    iput-wide p1, p0, Lu/g$a;->g:J

    return-object p0
.end method

.method public h(Ljava/lang/Long;)Lu/g$a;
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lu/g$a;->g:J

    return-object p0
.end method

.method public i(J)Lu/g$a;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 1
    invoke-static {p1, p2}, Lu/g;->q(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu/g$a;->c:Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j(Ljava/lang/String;)Lu/g$a;
    .locals 3

    const-string v0, "id == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x10

    if-gt v0, v1, :cond_2

    .line 3
    invoke-static {p1}, Lu/g;->s(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-static {p1, v1}, Lu/g;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lu/g$a;->c:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id is all zeros"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id.length > 16"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "id is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(Lu/g$b;)Lu/g$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lu/g$a;->d:Lu/g$b;

    return-object p0
.end method

.method public l()Lu/g$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/g$a;->d:Lu/g$b;

    return-object v0
.end method

.method public m()Lu/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lu/g$a;->h:Lu/f;

    return-object v0
.end method

.method public n(Lu/f;)Lu/g$a;
    .locals 1

    .line 1
    sget-object v0, Lu/g;->s:Lu/f;

    invoke-virtual {v0, p1}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iput-object p1, p0, Lu/g$a;->h:Lu/f;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lu/g$a;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lu/g$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public p(J)Lu/g$a;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 1
    invoke-static {p1, p2}, Lu/g;->q(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lu/g$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lu/g$a;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    iput-object v0, p0, Lu/g$a;->b:Ljava/lang/String;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const/16 v2, 0x10

    if-gt v1, v2, :cond_3

    .line 3
    invoke-static {p1}, Lu/g;->s(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 4
    iput-object v0, p0, Lu/g$a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-ge v1, v2, :cond_2

    .line 5
    invoke-static {p1, v2}, Lu/g;->j(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lu/g$a;->b:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parentId.length > 16"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parentId is empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)Lu/g$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/g$a;->k:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lu/g$a;->k:Ljava/util/TreeMap;

    :cond_0
    const-string v0, "key == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 3
    iget-object v0, p0, Lu/g$a;->k:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 4
    :cond_1
    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " == null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public s(Lu/f;)Lu/g$a;
    .locals 1

    .line 1
    sget-object v0, Lu/g;->s:Lu/f;

    invoke-virtual {v0, p1}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    iput-object p1, p0, Lu/g$a;->i:Lu/f;

    return-object p0
.end method

.method public t(Ljava/lang/Boolean;)Lu/g$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lu/g$a;->u(Z)Lu/g$a;

    return-object p0

    .line 2
    :cond_0
    iget p1, p0, Lu/g$a;->l:I

    and-int/lit8 p1, p1, -0x19

    iput p1, p0, Lu/g$a;->l:I

    return-object p0
.end method

.method public u(Z)Lu/g$a;
    .locals 1

    .line 1
    iget v0, p0, Lu/g$a;->l:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lu/g$a;->l:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x8

    .line 2
    iput p1, p0, Lu/g$a;->l:I

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x9

    .line 3
    iput p1, p0, Lu/g$a;->l:I

    :goto_0
    return-object p0
.end method

.method public v(J)Lu/g$a;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    move-wide p1, v0

    .line 1
    :cond_0
    iput-wide p1, p0, Lu/g$a;->f:J

    return-object p0
.end method

.method public w(JJ)Lu/g$a;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    cmp-long v3, p3, v0

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "empty trace ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-static {}, Lu/i/i;->a()[C

    move-result-object v0

    const/16 v1, 0x10

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3
    invoke-static {v0, v3, p1, p2}, Lu/g;->u([CIJ)V

    const/16 p1, 0x10

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-static {v0, p1, p3, p4}, Lu/g;->u([CIJ)V

    .line 5
    new-instance p1, Ljava/lang/String;

    if-eqz v2, :cond_3

    const/16 v1, 0x20

    :cond_3
    invoke-direct {p1, v0, v3, v1}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lu/g$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lu/g$a;
    .locals 0

    .line 1
    invoke-static {p1}, Lu/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu/g$a;->a:Ljava/lang/String;

    return-object p0
.end method
