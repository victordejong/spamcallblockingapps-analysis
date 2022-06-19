.class public final Ln3/y/b/a/v$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/l0;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/l0;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/v$e;->a:Ln3/y/b/a/l0;

    .line 3
    iput p2, p0, Ln3/y/b/a/v$e;->b:I

    .line 4
    iput-wide p3, p0, Ln3/y/b/a/v$e;->c:J

    return-void
.end method
