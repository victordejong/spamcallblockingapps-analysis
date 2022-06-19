.class public final Le/a/o5/a2/e;
.super Le/a/y2/n;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/y2/a;",
            "Ljavax/inject/Provider<",
            "Le/a/y2/k;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Le/a/y2/a;",
            "Ljavax/inject/Provider<",
            "Le/a/y2/k;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "actions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/n;-><init>()V

    iput-object p1, p0, Le/a/o5/a2/e;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Le/a/y2/a;",
            "Ljavax/inject/Provider<",
            "Le/a/y2/k;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o5/a2/e;->a:Ljava/util/Map;

    return-object v0
.end method
