.class public Lp3/a/n1/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/w$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp3/a/n1/w$f<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/n1/e2;ILjava/lang/Object;I)I
    .locals 1

    .line 1
    check-cast p3, Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p4

    .line 3
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 4
    invoke-interface {p1, p3}, Lp3/a/n1/e2;->c0(Ljava/nio/ByteBuffer;)V

    .line 5
    invoke-virtual {p3, p4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    const/4 p1, 0x0

    return p1
.end method
