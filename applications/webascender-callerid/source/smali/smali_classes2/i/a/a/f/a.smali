.class abstract Li/a/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/w;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;)Li/a/a/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Li/a/a/f/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/a/a/f/c;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Li/a/a/f/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
