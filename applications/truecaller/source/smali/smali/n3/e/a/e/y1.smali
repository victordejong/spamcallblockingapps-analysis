.class public final Ln3/e/a/e/y1;
.super Ln3/e/a/e/f1;
.source "SourceFile"


# static fields
.field public static final b:Ln3/e/a/e/y1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/e/a/e/y1;

    new-instance v1, Ln3/e/a/e/k2/q/d;

    invoke-direct {v1}, Ln3/e/a/e/k2/q/d;-><init>()V

    invoke-direct {v0, v1}, Ln3/e/a/e/y1;-><init>(Ln3/e/a/e/k2/q/d;)V

    sput-object v0, Ln3/e/a/e/y1;->b:Ln3/e/a/e/y1;

    return-void
.end method

.method public constructor <init>(Ln3/e/a/e/k2/q/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/e/a/e/f1;-><init>()V

    return-void
.end method
