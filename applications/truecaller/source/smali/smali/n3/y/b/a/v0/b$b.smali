.class public final Ln3/y/b/a/v0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/v0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/media2/exoplayer/external/Format;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ln3/y/b/a/v0/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/media2/exoplayer/external/Format;

    check-cast p2, Landroidx/media2/exoplayer/external/Format;

    .line 2
    iget p2, p2, Landroidx/media2/exoplayer/external/Format;->e:I

    iget p1, p1, Landroidx/media2/exoplayer/external/Format;->e:I

    sub-int/2addr p2, p1

    return p2
.end method
