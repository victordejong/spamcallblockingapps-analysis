.class public final Ln3/v/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/v/k;

.field public final synthetic b:Ls1/w/f;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ln3/v/k;Ls1/w/f;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Ln3/v/j;->a:Ln3/v/k;

    iput-object p2, p0, Ln3/v/j;->b:Ls1/w/f;

    iput-object p3, p0, Ln3/v/j;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/v/j;->a:Ln3/v/k;

    iget-object v1, p0, Ln3/v/j;->c:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Ln3/v/k;->c(Ljava/lang/Runnable;)V

    return-void
.end method
