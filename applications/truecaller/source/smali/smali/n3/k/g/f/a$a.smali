.class public Ln3/k/g/f/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/g/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ln3/k/g/f/a$a;->a:I

    .line 3
    iput p2, p0, Ln3/k/g/f/a$a;->b:I

    .line 4
    iput p3, p0, Ln3/k/g/f/a$a;->c:I

    .line 5
    iput p4, p0, Ln3/k/g/f/a$a;->d:I

    return-void
.end method
