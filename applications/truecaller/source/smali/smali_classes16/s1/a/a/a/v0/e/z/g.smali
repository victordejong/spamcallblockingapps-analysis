.class public final Ls1/a/a/a/v0/e/z/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/e/z/g$a;
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/e/z/g;

.field public static final c:Ls1/a/a/a/v0/e/z/g$a;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls1/a/a/a/v0/e/z/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/e/z/g$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Ls1/a/a/a/v0/e/z/g;->c:Ls1/a/a/a/v0/e/z/g$a;

    .line 1
    new-instance v0, Ls1/a/a/a/v0/e/z/g;

    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/e/z/g;-><init>(Ljava/util/List;)V

    sput-object v0, Ls1/a/a/a/v0/e/z/g;->b:Ls1/a/a/a/v0/e/z/g;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/e/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/e/z/g;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ls1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/e/z/g;->a:Ljava/util/List;

    return-void
.end method
