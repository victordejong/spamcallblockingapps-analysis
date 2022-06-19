.class public Ln3/h0/a/a/g$b;
.super Ln3/h0/a/a/g$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/h0/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/h0/a/a/g$f;-><init>()V

    return-void
.end method

.method public constructor <init>(Ln3/h0/a/a/g$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ln3/h0/a/a/g$f;-><init>(Ln3/h0/a/a/g$f;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
