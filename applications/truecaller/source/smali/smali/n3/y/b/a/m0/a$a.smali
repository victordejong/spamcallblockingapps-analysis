.class public final Ln3/y/b/a/m0/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/m0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/t0/t$a;

.field public final b:Ln3/y/b/a/l0;

.field public final c:I


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/l0;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/m0/a$a;->a:Ln3/y/b/a/t0/t$a;

    .line 3
    iput-object p2, p0, Ln3/y/b/a/m0/a$a;->b:Ln3/y/b/a/l0;

    .line 4
    iput p3, p0, Ln3/y/b/a/m0/a$a;->c:I

    return-void
.end method
