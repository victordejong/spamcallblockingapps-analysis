.class public final Ln3/p/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/p/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public final c:Ln3/p/a/b$k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    .line 2
    iput v0, p0, Ln3/p/a/c$a;->a:F

    .line 3
    new-instance v0, Ln3/p/a/b$k;

    invoke-direct {v0}, Ln3/p/a/b$k;-><init>()V

    iput-object v0, p0, Ln3/p/a/c$a;->c:Ln3/p/a/b$k;

    return-void
.end method
