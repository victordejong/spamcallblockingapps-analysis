.class public final Ln3/e/a/e/f2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/e/a/e/f2$b;,
        Ln3/e/a/e/f2$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/e/a/e/f2$b;


# direct methods
.method public constructor <init>(Ln3/e/a/e/f2$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/a/e/f2;->a:Ln3/e/a/e/f2$b;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/a/e/f2;->a:Ln3/e/a/e/f2$b;

    invoke-interface {v0}, Ln3/e/a/e/f2$b;->stop()Z

    move-result v0

    return v0
.end method
