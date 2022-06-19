.class public final Ln3/m0/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ln3/m0/b0;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/m0/c$a;->b:I

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Ln3/m0/c$a;->c:I

    const/16 v0, 0x14

    .line 4
    iput v0, p0, Ln3/m0/c$a;->d:I

    return-void
.end method
