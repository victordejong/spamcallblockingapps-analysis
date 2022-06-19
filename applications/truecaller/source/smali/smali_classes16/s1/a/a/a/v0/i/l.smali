.class public final Ls1/a/a/a/v0/i/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ls1/a/a/a/v0/i/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/a/a/a/v0/f/b;

    .line 1
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.internal.NoInfer"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.internal.Exact"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ls1/a/a/a/v0/i/l;->a:Ljava/util/Set;

    return-void
.end method
