.class public final Le/g/a/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/g/a/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/g/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Le/g/a/n;
    .locals 0

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    return-object p0
.end method

.method public d(I)I
    .locals 0

    .line 1
    invoke-static {p1}, Ln3/g0/y;->j1(I)I

    move-result p1

    return p1
.end method
