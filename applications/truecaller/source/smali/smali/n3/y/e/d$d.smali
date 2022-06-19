.class public Ln3/y/e/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(IIIIIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/y/e/d$d;->a:I

    .line 3
    iput p2, p0, Ln3/y/e/d$d;->b:I

    .line 4
    iput-boolean p6, p0, Ln3/y/e/d$d;->c:Z

    .line 5
    iput-boolean p7, p0, Ln3/y/e/d$d;->d:Z

    return-void
.end method
