.class public Lp3/a/n1/w$c;
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
        "[B>;"
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
    .locals 0

    .line 1
    check-cast p3, [B

    .line 2
    invoke-interface {p1, p3, p4, p2}, Lp3/a/n1/e2;->r0([BII)V

    add-int/2addr p4, p2

    return p4
.end method
