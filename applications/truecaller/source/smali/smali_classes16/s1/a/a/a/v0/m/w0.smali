.class public final Ls1/a/a/a/v0/m/w0;
.super Ls1/a/a/a/v0/m/x0;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/m/w0;->c:Ljava/util/Map;

    iput-boolean p2, p0, Ls1/a/a/a/v0/m/w0;->d:Z

    invoke-direct {p0}, Ls1/a/a/a/v0/m/x0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls1/a/a/a/v0/m/w0;->d:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/w0;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public h(Ls1/a/a/a/v0/m/v0;)Ls1/a/a/a/v0/m/y0;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/w0;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/y0;

    return-object p1
.end method
