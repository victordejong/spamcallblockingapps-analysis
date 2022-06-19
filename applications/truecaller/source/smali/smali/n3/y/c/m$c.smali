.class public Ln3/y/c/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/c/m;->h(Ln3/y/c/m$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/c/m$j;

.field public final synthetic b:Ln3/y/c/x0$b;


# direct methods
.method public constructor <init>(Ln3/y/c/m;Ln3/y/c/m$j;Ln3/y/c/x0$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln3/y/c/m$c;->a:Ln3/y/c/m$j;

    iput-object p3, p0, Ln3/y/c/m$c;->b:Ln3/y/c/x0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/c/m$c;->a:Ln3/y/c/m$j;

    iget-object v1, p0, Ln3/y/c/m$c;->b:Ln3/y/c/x0$b;

    invoke-interface {v0, v1}, Ln3/y/c/m$j;->a(Ln3/y/c/x0$b;)V

    return-void
.end method
