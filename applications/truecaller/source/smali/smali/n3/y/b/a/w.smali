.class public final Ln3/y/b/a/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ln3/y/b/a/w;->a:Ljava/util/HashSet;

    const-string v0, "goog.exo.core"

    .line 2
    sput-object v0, Ln3/y/b/a/w;->b:Ljava/lang/String;

    return-void
.end method
