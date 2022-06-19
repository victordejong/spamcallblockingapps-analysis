.class public final Ln3/z/q0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/q0;-><init>(Lq3/a/i0;Ljava/lang/Object;Ln3/z/q1$c;Ln3/z/q1$a;Ls1/z/b/a;Lq3/a/g0;Lq3/a/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/q0;


# direct methods
.method public constructor <init>(Ln3/z/q0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/q0$c;->a:Ln3/z/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/z/q0$c;->a:Ln3/z/q0;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ln3/z/q0;->m(Z)V

    return-void
.end method
