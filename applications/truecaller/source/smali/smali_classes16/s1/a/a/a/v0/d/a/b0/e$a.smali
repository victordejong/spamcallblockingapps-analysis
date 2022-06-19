.class public final Ls1/a/a/a/v0/d/a/b0/e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/b0/e;-><init>(Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/d/a/d0/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Map<",
        "Ls1/a/a/a/v0/f/e;",
        "+",
        "Ls1/a/a/a/v0/j/t/w;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/b0/e$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/b0/e$a;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/b0/e$a;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/b0/e$a;->b:Ls1/a/a/a/v0/d/a/b0/e$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/c;->k:Ls1/a/a/a/v0/d/a/b0/c;

    .line 2
    sget-object v0, Ls1/a/a/a/v0/d/a/b0/c;->f:Ls1/a/a/a/v0/f/e;

    .line 3
    new-instance v1, Ls1/a/a/a/v0/j/t/w;

    const-string v2, "Deprecated in Java"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/j/t/w;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
