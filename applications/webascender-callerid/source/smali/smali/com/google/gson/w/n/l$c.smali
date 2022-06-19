.class final Lcom/google/gson/w/n/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/w/n/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final f:Lcom/google/gson/x/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/x/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final g:Z

.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/gson/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/r<",
            "*>;"
        }
    .end annotation
.end field

.field private final j:Lcom/google/gson/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Lcom/google/gson/x/a;ZLjava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/gson/x/a<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    instance-of v0, p1, Lcom/google/gson/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/google/gson/r;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/google/gson/w/n/l$c;->i:Lcom/google/gson/r;

    .line 5
    instance-of v2, p1, Lcom/google/gson/k;

    if-eqz v2, :cond_1

    .line 6
    move-object v1, p1

    check-cast v1, Lcom/google/gson/k;

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/google/gson/w/n/l$c;->j:Lcom/google/gson/k;

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    .line 8
    :goto_2
    invoke-static {p1}, Lcom/google/gson/w/a;->a(Z)V

    .line 9
    iput-object p2, p0, Lcom/google/gson/w/n/l$c;->f:Lcom/google/gson/x/a;

    .line 10
    iput-boolean p3, p0, Lcom/google/gson/w/n/l$c;->g:Z

    .line 11
    iput-object p4, p0, Lcom/google/gson/w/n/l$c;->h:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public create(Lcom/google/gson/f;Lcom/google/gson/x/a;)Lcom/google/gson/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/x/a<",
            "TT;>;)",
            "Lcom/google/gson/t<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/gson/w/n/l$c;->f:Lcom/google/gson/x/a;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/gson/x/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/gson/w/n/l$c;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/w/n/l$c;->f:Lcom/google/gson/x/a;

    invoke-virtual {v0}, Lcom/google/gson/x/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/gson/x/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/google/gson/w/n/l$c;->h:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/google/gson/x/a;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    .line 4
    new-instance v0, Lcom/google/gson/w/n/l;

    iget-object v2, p0, Lcom/google/gson/w/n/l$c;->i:Lcom/google/gson/r;

    iget-object v3, p0, Lcom/google/gson/w/n/l$c;->j:Lcom/google/gson/k;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/gson/w/n/l;-><init>(Lcom/google/gson/r;Lcom/google/gson/k;Lcom/google/gson/f;Lcom/google/gson/x/a;Lcom/google/gson/u;)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method
