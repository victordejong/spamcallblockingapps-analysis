.class public Lcom/hiya/stingray/util/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "Li/c/b0/b/l<",
        "+",
        "Ljava/lang/Throwable;",
        ">;",
        "Lo/a/a<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final f:I

.field private final g:J

.field private final h:Li/c/b0/b/d0;

.field private i:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/hiya/stingray/util/z;->f:I

    .line 3
    iput-wide p2, p0, Lcom/hiya/stingray/util/z;->g:J

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/hiya/stingray/util/z;->h:Li/c/b0/b/d0;

    return-void
.end method

.method public constructor <init>(IJLi/c/b0/b/d0;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/hiya/stingray/util/z;->f:I

    .line 7
    iput-wide p2, p0, Lcom/hiya/stingray/util/z;->g:J

    .line 8
    iput-object p4, p0, Lcom/hiya/stingray/util/z;->h:Li/c/b0/b/d0;

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)Li/c/b0/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/hiya/stingray/util/z;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hiya/stingray/util/z;->i:I

    iget v1, p0, Lcom/hiya/stingray/util/z;->f:I

    if-gt v0, v1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/util/z;->h:Li/c/b0/b/d0;

    if-eqz p1, :cond_0

    .line 3
    iget-wide v0, p0, Lcom/hiya/stingray/util/z;->g:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, p1}, Li/c/b0/b/l;->w(JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-wide v0, p0, Lcom/hiya/stingray/util/z;->g:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Li/c/b0/b/l;->v(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-static {p1}, Li/c/b0/b/l;->i(Ljava/lang/Throwable;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Li/c/b0/b/l;)Lo/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/l<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lo/a/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/e;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/util/e;-><init>(Lcom/hiya/stingray/util/z;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/l;->c(Li/c/b0/d/o;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Li/c/b0/b/l;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/util/z;->a(Li/c/b0/b/l;)Lo/a/a;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Ljava/lang/Throwable;)Li/c/b0/b/l;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/util/z;->b(Ljava/lang/Throwable;)Li/c/b0/b/l;

    move-result-object p1

    return-object p1
.end method
