.class Landroidx/room/s/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/s/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/room/s/f$c;",
        ">;"
    }
.end annotation


# instance fields
.field final f:I

.field final g:I

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroidx/room/s/f$c;->f:I

    .line 3
    iput p2, p0, Landroidx/room/s/f$c;->g:I

    .line 4
    iput-object p3, p0, Landroidx/room/s/f$c;->h:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroidx/room/s/f$c;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Landroidx/room/s/f$c;)I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/room/s/f$c;->f:I

    iget v1, p1, Landroidx/room/s/f$c;->f:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/room/s/f$c;->g:I

    iget p1, p1, Landroidx/room/s/f$c;->g:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/room/s/f$c;

    invoke-virtual {p0, p1}, Landroidx/room/s/f$c;->c(Landroidx/room/s/f$c;)I

    move-result p1

    return p1
.end method
