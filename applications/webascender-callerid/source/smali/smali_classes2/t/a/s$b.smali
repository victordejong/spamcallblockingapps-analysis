.class Lt/a/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/a/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Lt/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt/a/k<",
            "Lt/a/a<",
            "*>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lt/a/s;


# direct methods
.method private constructor <init>(Lt/a/s;Lt/a/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt/a/k<",
            "Lt/a/a<",
            "*>;>;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lt/a/s$b;->b:Lt/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lt/a/s$b;->a:Lt/a/k;

    return-void
.end method

.method synthetic constructor <init>(Lt/a/s;Lt/a/k;Lt/a/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lt/a/s$b;-><init>(Lt/a/s;Lt/a/k;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt/a/s$b;->b:Lt/a/s;

    invoke-static {v0}, Lt/a/s;->l(Lt/a/s;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lt/a/s$b;->a:Lt/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt/a/s$b;->b:Lt/a/s;

    iget-object v1, p0, Lt/a/s$b;->a:Lt/a/k;

    invoke-virtual {v0, v1}, Lt/a/s;->q(Lt/a/k;)V

    return-void
.end method
