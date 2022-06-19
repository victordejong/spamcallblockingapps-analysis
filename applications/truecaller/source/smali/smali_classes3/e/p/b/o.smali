.class public Le/p/b/o;
.super Landroid/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Le/p/b/p$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/p/b/p;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Le/p/b/p$a;

    .line 2
    iget p1, p2, Le/p/b/p$a;->b:I

    return p1
.end method
