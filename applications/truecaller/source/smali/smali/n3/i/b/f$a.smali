.class public Ln3/i/b/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/i/b/f;->m(Ln3/i/b/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ln3/i/b/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/i/b/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ln3/i/b/g;

    check-cast p2, Ln3/i/b/g;

    .line 2
    iget p1, p1, Ln3/i/b/g;->b:I

    iget p2, p2, Ln3/i/b/g;->b:I

    sub-int/2addr p1, p2

    return p1
.end method
