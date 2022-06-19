.class public Le/m/a/g/o/g$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/g/o/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/o/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/m/a/g/o/g$f;->a:I

    .line 3
    iput p2, p0, Le/m/a/g/o/g$f;->b:I

    return-void
.end method
