.class public final Lm/k0/d/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/k0/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln/d0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic i:Lm/k0/d/d;


# direct methods
.method public constructor <init>(Lm/k0/d/d;Ljava/lang/String;JLjava/util/List;[J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "+",
            "Ln/d0;",
            ">;[J)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sources"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lengths"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lm/k0/d/d$c;->i:Lm/k0/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm/k0/d/d$c;->f:Ljava/lang/String;

    iput-wide p3, p0, Lm/k0/d/d$c;->g:J

    iput-object p5, p0, Lm/k0/d/d$c;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lm/k0/d/d$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/k0/d/d$c;->i:Lm/k0/d/d;

    iget-object v1, p0, Lm/k0/d/d$c;->f:Ljava/lang/String;

    iget-wide v2, p0, Lm/k0/d/d$c;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lm/k0/d/d;->y(Ljava/lang/String;J)Lm/k0/d/d$a;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Ln/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/d/d$c;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln/d0;

    return-object p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/k0/d/d$c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln/d0;

    .line 2
    invoke-static {v1}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
