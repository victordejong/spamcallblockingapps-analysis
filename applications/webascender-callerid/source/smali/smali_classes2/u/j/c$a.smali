.class public final Lu/j/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/j/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:Ljava/lang/String;

.field f:J

.field g:J

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu/j/a;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lu/j/b;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Lu/f;)Lu/j/c$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lu/j/c$a;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lu/j/c$a;->h:Ljava/util/ArrayList;

    .line 2
    :cond_0
    sget-object v0, Lu/j/c;->k:Lu/f;

    invoke-virtual {v0, p4}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p4, 0x0

    .line 3
    :cond_1
    iget-object v0, p0, Lu/j/c$a;->h:Ljava/util/ArrayList;

    new-instance v1, Lu/j/a;

    invoke-direct {v1, p1, p2, p3, p4}, Lu/j/a;-><init>(JLjava/lang/String;Lu/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lu/f;)Lu/j/c$a;
    .locals 2

    const-string v0, "value == null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lu/j/c;->k:Lu/f;

    invoke-virtual {v0, p3}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    .line 3
    :cond_0
    iget-object v0, p0, Lu/j/c$a;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lu/j/c$a;->i:Ljava/util/ArrayList;

    .line 4
    :cond_1
    iget-object v0, p0, Lu/j/c$a;->i:Ljava/util/ArrayList;

    new-instance v1, Lu/j/b;

    invoke-direct {v1, p1, p2, p3}, Lu/j/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lu/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c(Ljava/lang/String;Lu/f;)Lu/j/c$a;
    .locals 3

    if-eqz p2, :cond_2

    .line 1
    sget-object v0, Lu/j/c;->k:Lu/f;

    invoke-virtual {v0, p2}, Lu/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lu/j/c$a;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lu/j/c$a;->i:Ljava/util/ArrayList;

    .line 3
    :cond_1
    iget-object v0, p0, Lu/j/c$a;->i:Ljava/util/ArrayList;

    new-instance v1, Lu/j/b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2}, Lu/j/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lu/f;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-object p0
.end method

.method public d()Lu/j/c;
    .locals 1

    .line 1
    new-instance v0, Lu/j/c;

    invoke-direct {v0, p0}, Lu/j/c;-><init>(Lu/j/c$a;)V

    return-object v0
.end method

.method public e()Lu/j/c$a;
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lu/j/c$a;->d:J

    iput-wide v0, p0, Lu/j/c$a;->a:J

    iput-wide v0, p0, Lu/j/c$a;->b:J

    const/4 v2, 0x0

    .line 2
    iput-object v2, p0, Lu/j/c$a;->e:Ljava/lang/String;

    .line 3
    iput-wide v0, p0, Lu/j/c$a;->g:J

    iput-wide v0, p0, Lu/j/c$a;->f:J

    iput-wide v0, p0, Lu/j/c$a;->c:J

    .line 4
    iget-object v0, p0, Lu/j/c$a;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    :cond_0
    iget-object v0, p0, Lu/j/c$a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    :cond_1
    iput-object v2, p0, Lu/j/c$a;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public f(Ljava/lang/Boolean;)Lu/j/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lu/j/c$a;->j:Ljava/lang/Boolean;

    return-object p0
.end method

.method public g(J)Lu/j/c$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lu/j/c$a;->g:J

    return-object p0
.end method

.method public h(J)Lu/j/c$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lu/j/c$a;->d:J

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lu/j/c$a;
    .locals 2

    const-string v0, "id == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lu/i/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lu/j/c$a;->d:J

    return-object p0
.end method

.method public j(Ljava/lang/String;)Lu/j/c$a;
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
    iput-object p1, p0, Lu/j/c$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public k(J)Lu/j/c$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lu/j/c$a;->c:J

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lu/j/c$a;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lu/i/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lu/j/c$a;->c:J

    return-object p0
.end method

.method public m(J)Lu/j/c$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lu/j/c$a;->f:J

    return-object p0
.end method

.method public n(J)Lu/j/c$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lu/j/c$a;->b:J

    return-object p0
.end method

.method public o(Ljava/lang/String;)Lu/j/c$a;
    .locals 2

    const-string v0, "traceId == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lu/i/a;->c(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lu/j/c$a;->a:J

    .line 4
    :cond_0
    invoke-static {p1}, Lu/i/a;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lu/j/c$a;->b:J

    return-object p0
.end method

.method public p(J)Lu/j/c$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lu/j/c$a;->a:J

    return-object p0
.end method
