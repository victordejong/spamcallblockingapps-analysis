.class Lt/a/s$c;
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
    name = "c"
.end annotation


# instance fields
.field private final a:Lt/a/l$c;

.field private final b:Lt/a/k;

.field final synthetic c:Lt/a/s;


# direct methods
.method constructor <init>(Lt/a/s;Lt/a/l$c;Lt/a/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt/a/s$c;->c:Lt/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lt/a/s$c;->a:Lt/a/l$c;

    .line 3
    iput-object p3, p0, Lt/a/s$c;->b:Lt/a/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt/a/s$c;->a:Lt/a/l$c;

    iget-object v1, p0, Lt/a/s$c;->c:Lt/a/s;

    invoke-virtual {v1}, Lt/a/s;->getState()Lt/a/o;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v2, v1, v3}, Lt/a/l$c;->b(Lt/a/o;Lt/a/o;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt/a/s$c;->c:Lt/a/s;

    invoke-static {v0}, Lt/a/s;->m(Lt/a/s;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lt/a/s$c;->b:Lt/a/k;

    iget-object v2, p0, Lt/a/s$c;->a:Lt/a/l$c;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt/a/s$c;->c:Lt/a/s;

    iget-object v1, p0, Lt/a/s$c;->b:Lt/a/k;

    invoke-virtual {v0, v1}, Lt/a/s;->q(Lt/a/k;)V

    return-void
.end method
