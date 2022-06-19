.class public Ln3/k/g/d$d;
.super Ln3/k/g/d$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/g/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Z


# direct methods
.method public constructor <init>(Ln3/k/g/d$b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/k/g/d$c;-><init>(Ln3/k/g/d$b;)V

    .line 2
    iput-boolean p2, p0, Ln3/k/g/d$d;->b:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/k/g/d$d;->b:Z

    return v0
.end method
