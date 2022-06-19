.class public final Ln3/y/b/a/w0/a0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/w0/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/w0/a0$f;


# direct methods
.method public constructor <init>(Ln3/y/b/a/w0/a0$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/w0/a0$g;->a:Ln3/y/b/a/w0/a0$f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/w0/a0$g;->a:Ln3/y/b/a/w0/a0$f;

    invoke-interface {v0}, Ln3/y/b/a/w0/a0$f;->m()V

    return-void
.end method
