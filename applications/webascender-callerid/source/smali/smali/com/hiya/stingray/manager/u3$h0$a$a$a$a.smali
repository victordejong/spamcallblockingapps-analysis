.class final Lcom/hiya/stingray/manager/u3$h0$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/u3$h0$a$a$a;->a(Lcom/hiya/stingray/manager/u3$n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/manager/u3$h0$a$a$a;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/u3$h0$a$a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/manager/u3$h0$a$a$a$a;->f:Lcom/hiya/stingray/manager/u3$h0$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$h0$a$a$a$a;->f:Lcom/hiya/stingray/manager/u3$h0$a$a$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$h0$a$a$a;->f:Lcom/hiya/stingray/manager/u3$h0$a$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$h0$a$a;->a:Lcom/hiya/stingray/manager/u3$h0$a;

    iget-object v0, v0, Lcom/hiya/stingray/manager/u3$h0$a;->g:Li/c/b0/b/f;

    invoke-interface {v0}, Li/c/b0/b/f;->onComplete()V

    return-void
.end method
