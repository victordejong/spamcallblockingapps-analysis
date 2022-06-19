.class public final Ls1/a/a/a/v0/d/a/d0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Ls1/a/a/a/v0/d/a/a$a;",
            "Ls1/a/a/a/v0/d/a/g0/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/EnumMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Ls1/a/a/a/v0/d/a/a$a;",
            "Ls1/a/a/a/v0/d/a/g0/i;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nullabilityQualifiers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/e;->a:Ljava/util/EnumMap;

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/d/a/a$a;)Ls1/a/a/a/v0/d/a/g0/e;
    .locals 4

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/e;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/d/a/g0/i;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "nullabilityQualifiers[ap\u2026ilityType] ?: return null"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ls1/a/a/a/v0/d/a/g0/e;

    .line 3
    iget-object v2, p1, Ls1/a/a/a/v0/d/a/g0/i;->a:Ls1/a/a/a/v0/d/a/g0/h;

    const/4 v3, 0x0

    .line 4
    iget-boolean p1, p1, Ls1/a/a/a/v0/d/a/g0/i;->b:Z

    .line 5
    invoke-direct {v1, v2, v0, v3, p1}, Ls1/a/a/a/v0/d/a/g0/e;-><init>(Ls1/a/a/a/v0/d/a/g0/h;Ls1/a/a/a/v0/d/a/g0/f;ZZ)V

    return-object v1

    :cond_0
    return-object v0
.end method
