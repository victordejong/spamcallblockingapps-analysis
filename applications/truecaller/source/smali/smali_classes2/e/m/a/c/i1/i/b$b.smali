.class public final Le/m/a/c/i1/i/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/i1/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:I


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/m/a/c/i1/i/b$b;->a:I

    .line 3
    iput-boolean p2, p0, Le/m/a/c/i1/i/b$b;->b:Z

    .line 4
    iput p3, p0, Le/m/a/c/i1/i/b$b;->c:I

    return-void
.end method
