.class public Ln3/k/f/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/k/f/o;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/k/h/b;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ln3/k/f/o;Ln3/k/h/b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/k/f/o$a;->a:Ln3/k/h/b;

    iput-object p3, p0, Ln3/k/f/o$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/k/f/o$a;->a:Ln3/k/h/b;

    iget-object v1, p0, Ln3/k/f/o$a;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ln3/k/h/b;->accept(Ljava/lang/Object;)V

    return-void
.end method
