.class public Ln3/k/b/d/h$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/k/b/d/h$a;->a(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ln3/k/b/d/h$a;


# direct methods
.method public constructor <init>(Ln3/k/b/d/h$a;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/k/b/d/h$a$b;->b:Ln3/k/b/d/h$a;

    iput p2, p0, Ln3/k/b/d/h$a$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/b/d/h$a$b;->b:Ln3/k/b/d/h$a;

    iget v1, p0, Ln3/k/b/d/h$a$b;->a:I

    invoke-virtual {v0, v1}, Ln3/k/b/d/h$a;->d(I)V

    return-void
.end method
