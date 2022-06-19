.class final Lcom/hiya/stingray/manager/u3$j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3;->i0(Z)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/manager/u3;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$j0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$j0;->a:Lcom/hiya/stingray/manager/u3;

    invoke-static {v0}, Lcom/hiya/stingray/manager/u3;->b(Lcom/hiya/stingray/manager/u3;)Li/c/b0/b/e0;

    move-result-object v0

    .line 2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    invoke-static {}, Li/c/b0/a/b/b;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/manager/u3$j0$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/u3$j0$a;-><init>(Lcom/hiya/stingray/manager/u3$j0;Li/c/b0/b/f;)V

    .line 5
    new-instance v2, Lcom/hiya/stingray/manager/u3$j0$b;

    invoke-direct {v2, p1}, Lcom/hiya/stingray/manager/u3$j0$b;-><init>(Li/c/b0/b/f;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Li/c/b0/b/e0;->B(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    return-void
.end method
