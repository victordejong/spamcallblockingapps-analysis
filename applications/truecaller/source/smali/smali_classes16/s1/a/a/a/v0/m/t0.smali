.class public final Ls1/a/a/a/v0/m/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/m/t0;

.field public final b:Ls1/a/a/a/v0/b/v0;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ls1/a/a/a/v0/b/w0;",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/t0;Ls1/a/a/a/v0/b/v0;Ljava/util/List;Ljava/util/Map;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/m/t0;->a:Ls1/a/a/a/v0/m/t0;

    iput-object p2, p0, Ls1/a/a/a/v0/m/t0;->b:Ls1/a/a/a/v0/b/v0;

    iput-object p3, p0, Ls1/a/a/a/v0/m/t0;->c:Ljava/util/List;

    iput-object p4, p0, Ls1/a/a/a/v0/m/t0;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/v0;)Z
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/t0;->b:Ls1/a/a/a/v0/b/v0;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Ls1/a/a/a/v0/m/t0;->a:Ls1/a/a/a/v0/m/t0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/t0;->a(Ls1/a/a/a/v0/b/v0;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method
