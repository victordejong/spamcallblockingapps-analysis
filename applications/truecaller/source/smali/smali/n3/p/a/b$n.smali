.class public abstract Ln3/p/a/b$n;
.super Ln3/p/a/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/p/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/p/a/d<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ln3/p/a/b$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/p/a/d;-><init>(Ljava/lang/String;)V

    return-void
.end method
