.class Li/a/a/e/m/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/e/m/e;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/a/a/e/m/b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c()Li/a/a/e/m/d;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a/e/m/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Li/a/a/e/m/a;->i([Ljava/lang/Object;)Li/a/a/e/m/d;

    move-result-object v0

    return-object v0
.end method
