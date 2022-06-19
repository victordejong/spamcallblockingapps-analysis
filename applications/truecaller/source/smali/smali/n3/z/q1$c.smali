.class public final Ln3/z/q1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(IIZII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln3/z/q1$c;->a:I

    iput p2, p0, Ln3/z/q1$c;->b:I

    iput-boolean p3, p0, Ln3/z/q1$c;->c:Z

    iput p4, p0, Ln3/z/q1$c;->d:I

    return-void
.end method
