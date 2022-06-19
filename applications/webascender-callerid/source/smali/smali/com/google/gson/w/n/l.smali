.class public final Lcom/google/gson/w/n/l;
.super Lcom/google/gson/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/w/n/l$b;,
        Lcom/google/gson/w/n/l$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/gson/t<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/r<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/gson/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/gson/f;

.field private final d:Lcom/google/gson/x/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/x/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/u;

.field private final f:Lcom/google/gson/w/n/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w/n/l<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private g:Lcom/google/gson/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/t<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/r;Lcom/google/gson/k;Lcom/google/gson/f;Lcom/google/gson/x/a;Lcom/google/gson/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/r<",
            "TT;>;",
            "Lcom/google/gson/k<",
            "TT;>;",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/x/a<",
            "TT;>;",
            "Lcom/google/gson/u;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/gson/t;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/w/n/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gson/w/n/l$b;-><init>(Lcom/google/gson/w/n/l;Lcom/google/gson/w/n/l$a;)V

    iput-object v0, p0, Lcom/google/gson/w/n/l;->f:Lcom/google/gson/w/n/l$b;

    .line 3
    iput-object p1, p0, Lcom/google/gson/w/n/l;->a:Lcom/google/gson/r;

    .line 4
    iput-object p2, p0, Lcom/google/gson/w/n/l;->b:Lcom/google/gson/k;

    .line 5
    iput-object p3, p0, Lcom/google/gson/w/n/l;->c:Lcom/google/gson/f;

    .line 6
    iput-object p4, p0, Lcom/google/gson/w/n/l;->d:Lcom/google/gson/x/a;

    .line 7
    iput-object p5, p0, Lcom/google/gson/w/n/l;->e:Lcom/google/gson/u;

    return-void
.end method

.method private a()Lcom/google/gson/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/t<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/l;->g:Lcom/google/gson/t;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/gson/w/n/l;->c:Lcom/google/gson/f;

    iget-object v1, p0, Lcom/google/gson/w/n/l;->e:Lcom/google/gson/u;

    iget-object v2, p0, Lcom/google/gson/w/n/l;->d:Lcom/google/gson/x/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/f;->p(Lcom/google/gson/u;Lcom/google/gson/x/a;)Lcom/google/gson/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/w/n/l;->g:Lcom/google/gson/t;

    :goto_0
    return-object v0
.end method

.method public static b(Lcom/google/gson/x/a;Ljava/lang/Object;)Lcom/google/gson/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/x/a<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/u;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson/x/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    new-instance v1, Lcom/google/gson/w/n/l$c;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/google/gson/w/n/l$c;-><init>(Ljava/lang/Object;Lcom/google/gson/x/a;ZLjava/lang/Class;)V

    return-object v1
.end method

.method public static c(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/u;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/u;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/w/n/l$c;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/google/gson/w/n/l$c;-><init>(Ljava/lang/Object;Lcom/google/gson/x/a;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/l;->b:Lcom/google/gson/k;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/gson/w/n/l;->a()Lcom/google/gson/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/t;->read(Lcom/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/gson/w/l;->a(Lcom/google/gson/stream/a;)Lcom/google/gson/l;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/google/gson/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/gson/w/n/l;->b:Lcom/google/gson/k;

    iget-object v1, p0, Lcom/google/gson/w/n/l;->d:Lcom/google/gson/x/a;

    invoke-virtual {v1}, Lcom/google/gson/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/w/n/l;->f:Lcom/google/gson/w/n/l$b;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/gson/k;->a(Lcom/google/gson/l;Ljava/lang/reflect/Type;Lcom/google/gson/j;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/stream/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/l;->a:Lcom/google/gson/r;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/gson/w/n/l;->a()Lcom/google/gson/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/t;->write(Lcom/google/gson/stream/c;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/google/gson/stream/c;->z()Lcom/google/gson/stream/c;

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/gson/w/n/l;->d:Lcom/google/gson/x/a;

    invoke-virtual {v1}, Lcom/google/gson/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/w/n/l;->f:Lcom/google/gson/w/n/l$b;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/gson/r;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/q;)Lcom/google/gson/l;

    move-result-object p2

    .line 5
    invoke-static {p2, p1}, Lcom/google/gson/w/l;->b(Lcom/google/gson/l;Lcom/google/gson/stream/c;)V

    return-void
.end method
