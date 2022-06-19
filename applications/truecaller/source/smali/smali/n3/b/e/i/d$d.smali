.class public Ln3/b/e/i/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/e/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final a:Ln3/b/f/d0;

.field public final b:Ln3/b/e/i/g;

.field public final c:I


# direct methods
.method public constructor <init>(Ln3/b/f/d0;Ln3/b/e/i/g;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/b/e/i/d$d;->a:Ln3/b/f/d0;

    .line 3
    iput-object p2, p0, Ln3/b/e/i/d$d;->b:Ln3/b/e/i/g;

    .line 4
    iput p3, p0, Ln3/b/e/i/d$d;->c:I

    return-void
.end method
