.class public final Le/a/a/c1/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/k<",
        "+",
        "Lcom/truecaller/messaging/data/types/Draft;",
        "+",
        "Ljava/util/Collection<",
        "+",
        "Lcom/truecaller/messaging/data/types/BinaryEntity;",
        ">;>;",
        "Ljava/util/Collection<",
        "+",
        "Lcom/truecaller/messaging/data/types/BinaryEntity;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Le/a/a/c1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/a/c1/g;

    invoke-direct {v0}, Le/a/a/c1/g;-><init>()V

    sput-object v0, Le/a/a/c1/g;->b:Le/a/a/c1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/k;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 4
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method
