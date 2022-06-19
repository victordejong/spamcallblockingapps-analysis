.class public Ln3/k/c/d$a;
.super Ln3/k/f/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/k/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ln3/k/b/d/h$a;


# direct methods
.method public constructor <init>(Ln3/k/b/d/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/f/m;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/k/c/d$a;->a:Ln3/k/b/d/h$a;

    return-void
.end method
