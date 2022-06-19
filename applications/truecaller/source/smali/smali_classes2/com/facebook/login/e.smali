.class public final synthetic Lcom/facebook/login/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/t$a;


# instance fields
.field public final synthetic a:Lcom/facebook/login/v;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/login/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/login/e;->a:Lcom/facebook/login/v;

    return-void
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/login/e;->a:Lcom/facebook/login/v;

    const-string v1, "this$0"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/login/v;->g(ILandroid/content/Intent;Le/j/a0;)Z

    const/4 p1, 0x1

    return p1
.end method
