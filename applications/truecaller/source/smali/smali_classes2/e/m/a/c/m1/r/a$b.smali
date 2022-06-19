.class public final Le/m/a/c/m1/r/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/m1/r/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:F

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(FII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/m/a/c/m1/r/a$b;->a:F

    .line 3
    iput p2, p0, Le/m/a/c/m1/r/a$b;->b:I

    .line 4
    iput p3, p0, Le/m/a/c/m1/r/a$b;->c:I

    return-void
.end method
